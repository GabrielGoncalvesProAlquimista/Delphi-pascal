unit BMPPageProc;
{********************************************************************}
{**  Unit : BMPPageProc                                            **}
{**                                                                **}
{**  Description : This unit contains the dialog proc and callback **}
{**  for the BMPPropertiesExt created PropertyPage. This is done   **}
{**  using yukky "Raw" API functions.                              **}
{**                                                                **}
{**                                                                **}
{**                                        **}
{********************************************************************}
interface
uses
  Windows, { Standard Units }
  CommCtrl,
  SysUtils,
  Messages,

  Global,{ Application Specific Units }
  Resource;


{********************************************************************}
{**  public function definitions                                   **}

function PropExtCallback(Wnd: HWnd; Msg: Integer; PPSP: PPropSheetPageA):Integer stdcall;
function PropExtDlgProc(Dialog: HWnd; AMessage, WParam: UINT; LParam: Longint):longBool; stdcall;

{********************************************************************}
implementation

type
  PPropInfo = ^TPropInfo;
  TPropInfo = record
                PropPage  : TPropSheetPage;
              end;
  PBMPColorTable = ^TBMPColorTable;
  TBMPColorTable = array[1..1024] of byte;


{********************************************************************}
{**  Function : IsGreyScale                                        **}
{**                                                                **}
{**  Description : This function determines if a color table is a  **}
{**  definition of a grey-scale.                                   **}
{********************************************************************}
function IsGreyScale(ColorTable : PBMPColorTable):Boolean;
var i : integer;
begin
  result := false;
  for i := 0 to 255 do
  begin
    if ColorTable^[4*i+1] <> ColorTable^[4*i+2] then exit;
    if ColorTable^[4*i+1] <> ColorTable^[4*i+3] then exit;
  end;
  result := true;
end;

{********************************************************************}
{**  Function : IsGreyImage                                        **}
{**                                                                **}
{**  Description : This function determines if a bitmap is a       **}
{**  true-color image, that only uses greyscale colors.            **}
{**  Currently this function is limited to the first 256 pixels.    *}
{********************************************************************}
function IsGreyImage(BMPImage : PBMPColorTable):Boolean;
var i : integer;
begin
  result := false;
  for i := 0 to 255 do
  begin
    if BMPImage^[3*i+1] <> BMPImage^[3*i+2] then exit;
    if BMPImage^[3*i+1] <> BMPImage^[3*i+3] then exit;
  end;
  result := true;
end;

{********************************************************************}
{**  Function : WindowFromID                                       **}
{**                                                                **}
{**  Description : This function returns the window handle of a    **}
{**  control with the given ID. Requires parent window handle.     **}
{********************************************************************}
function WindowFromID( Parent : HWnd; ID : integer):hWnd;
var
  hWndControl : hWnd;
begin
  hWndControl:=GetTopWindow(Parent); { get the top one }
  repeat
    if GetWindowLong(hWndcontrol,GWL_ID)=ID then break; { just quit out }
    hWndControl:=GetNextWindow(hWndControl,GW_HWNDNEXT);
  until hWndControl=0;{last window}
  Result:=hWndControl;
end;


{********************************************************************}
{**  Function : OnCreate                                           **}
{**                                                                **}
{**  Description : This function handles WM_InitDialog messages    **}
{********************************************************************}
function OnCreate(Dialog: HWnd; AMessage, WParam: UINT; LParam: Longint): longBool;
var
  Info          : PPropInfo;
  BMPFile       : file;
  BMPFileHeader : TBitmapFileHeader;
  BMPInfoHeader : TBitmapInfoHeader;
  BMPColorTable : TBMPColorTable;
  ColorTableSize: integer;
  S             : String;
begin
  {** Create Info structure to store useful variables **}
  GetMem(Info,Sizeof(TPropInfo)); { allocate memory }
  Info^.PropPage:=PPropSheetPage(LParam)^; { copy page into }
  SetWindowLong(Dialog,GWL_USERDATA,longint(Info)); { store it in window }
  FillChar(BMPInfoHeader, sizeof(BMPInfoHeader), 0);
  FillChar(BMPFileHeader, sizeof(BMPfileHeader), 0);
  FillChar(BMPColorTable, sizeof(BMPColorTable), 0);
  ColorTableSize := 0; { for safety }

  {** Try reading in the file **}
  assign(BMPFile,PChar(Info^.PropPage.lParam));
  reset(BMPFile,1);
  try
  try
    BlockRead(BMPFile,BMPFileHeader,sizeof(TBitmapFileHeader)); { read in file header }
    BlockRead(BMPFile,BMPInfoHeader,sizeof(TBitmapInfoHeader)); {read in info}
    begin
      ColorTableSize := BMPFileHeader.bfOffbits - sizeof(TBitmapInfoHeader) - sizeof(TBitmapFileHeader);
      if ColorTableSize <= 0 then ColorTableSize := 256*4;     { if no color table, then get a sample of the image (i.e. true color) }
      if ColorTableSize > 256*4 then ColorTableSize := 256*4;  { set upper limit }
      BlockRead(BMPFile,BMPColorTable,ColorTableSize);
    end;
  except
    On EInOutError do { nothing };
  end;
  finally
    close(BMPFile);
  end;  { try finally }

  SendMessage(WindowFromID(Dialog,id_ImageWidth),WM_SetText,0,UINT(IntToStr(BMPInfoHeader.biWidth)));
  SendMessage(WindowFromID(Dialog,id_ImageHeight),WM_SetText,0,UINT(IntToStr(BMPInfoHeader.biHeight)));
  SendMessage(WindowFromID(Dialog,id_ImageSize),WM_SetText,0,UINT(IntToStr(BMPInfoHeader.biSizeImage)));
  SendMessage(WindowFromID(Dialog,id_NumberOfColors),WM_SetText,0,UINT(IntToStr(1 shl (BMPInfoHeader.biBitCount)) + '  ('+IntToStr(BMPInfoHeader.biBitCount)+' bits)' ));
  Case BMPInfoHeader.biCompression of
    BI_RGB : S := 'Uncompressed';
    BI_RLE8 : S := 'RLE encoded';
    BI_RLE4 : S := 'RLE(4) encoded';
    BI_BITFIELDS : S:= 'Uncompressed True-Color';
    else S:= 'unknown compression format'
  end;  { case }
  SendMessage(WindowFromID(Dialog,id_Compression),WM_SetText,0,UINT(S));
  Case BMPInfoHeader.biBitCount of
    1 : S := 'Monochrome';
    4 : if IsGreyScale(@BMPColorTable) then S := '16 Level Greyscale' else S := '16 Colors';
    8 : if IsGreyScale(@BMPColorTable) then S := '256 Level Greyscale' else S := '256 Colors';
    15,16 : if IsGreyImage(@BMPColorTable) then S := '16 bit Greyscale' else S := '16 bit Color';
    24 : if IsGreyImage(@BMPColorTable) then S := 'True Color Greyscale' else S := 'True Color Bitmap';
    32 : if IsGreyScale(@BMPColorTable) then S := 'True Color Greyscale' else S := 'True Color Bitmap';
    else S:= 'non-standard format'
  end;  { case }
  SendMessage(WindowFromID(Dialog,id_ImageFormat),WM_SetText,0,UINT(S));
//  BitBlt(WindowFromID(Dialog,id_PreviewArea),0,0,BMPInfoHeader.biWidth,BMPInfoHeader.biHeight,handle of source,0,0,SRCCOPY);
  Result:=FALSE;
end;


{********************************************************************}
{**  Function : OnCommand                                          **}
{**                                                                **}
{**  Description : This function handles WM_Command messages       **}
{********************************************************************}
function OnCommand(Dialog: HWnd; AMessage, WParam: UINT; LParam: Longint): longBool;
var
  Info        : PPropInfo;
begin
  Info:=pointer(GetWindowLong(Dialog,GWL_USERDATA)); { get TPropInfo }

  case WParam of

  id_PreviewButton : MessageBox( Dialog,'Sorry. This feature is not yet implemented','Information',mb_ok);
  id_AboutBox      :
    MessageBox( Dialog,'Bitmap Properties'#13#10'This program is Copyright ©1997 Warren F. Young and may be distributed freely.'#13#10'email: wfy@ee.ed.ac.uk  http://www.ee.ed.ac.uk/~wfy/',
                'About Bitmap Details',mb_OK OR mb_IconInformation);
  end;

  Result:=FALSE;
end;


{********************************************************************}
{**  Function : TPropInfo.OnNotify                                 **}
{**                                                                **}
{**  Description : This function handles WM_Notify messages        **}
{********************************************************************}
function OnNotify(Dialog: HWnd; AMessage, WParam: UINT; LParam: Longint): longBool;
begin
  case PNMHdr(lParam)^.code of

  PSN_APPLY : SetWindowLong(Dialog,DWL_MSGRESULT,longint(TRUE));

  PSN_KILLACTIVE : begin
                     SetWindowLong(Dialog,DWL_MSGRESULT,longint(FALSE));
                     Result:=TRUE;
                     exit;
                   end;

  PSN_RESET: begin
               SetWindowLong(Dialog,DWL_MSGRESULT,longint(FALSE));
             end;

  end;{of lParam case}
  Result:=FALSE;
end;


{********************************************************************}
{**  Function : PropExtDlgProc                                     **}
{**                                                                **}
{**  Description : This function is the dialog callback function   **}
{**  for the property page and is responsible for all the UI funcs **}
{********************************************************************}
function PropExtDlgProc(Dialog: HWnd; AMessage, WParam: UINT; LParam: Longint): longBool; stdcall;
begin
  case AMessage of

  WM_InitDialog : Result:=OnCreate(Dialog,AMessage,WParam,LParam);

  WM_Command : Result:=OnCommand(Dialog,AMessage,WParam,LParam);

  WM_Notify : Result:=OnNotify(Dialog,AMessage,WParam,LParam);

  else
    Result:=FALSE;
  end; {of case}
end;


{********************************************************************}
{**  Function : PropExtCallback                                    **}
{**                                                                **}
{**  Description : This function is the property page callback     **}
{**  which deals with the setup and removal of the page & stuff    **}
{********************************************************************}
function PropExtCallback(Wnd: HWnd; Msg: Integer; PPSP: PPropSheetPageA): Integer; stdcall;
var
  Info : PPropInfo;
begin
  case Msg of

  PSPCB_Create  : inc(RefThisDLL); {** make sure we don't get the rug pulled **}
  PSPCB_Release : begin
                    Info:=pointer(GetWindowLong(Wnd,GWL_USERDATA));
                    FreeMem(Info,sizeof(TPropInfo));
                    FreeMem(pointer(PPSP.lParam),MAX_PATH);
                    dec(RefThisDLL); {** make sure we can release the DLL **}
                  end;

  end;
  Result:=1; { always allow creation }
end;

end.
{********************************************************************}
