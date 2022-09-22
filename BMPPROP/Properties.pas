unit Properties;
{********************************************************************}
{**  Unit : Properties                                             **}
{**                                                                **}
{**  Description : This unit contains the main object for the      **}
{**  shell extension and the two interface objects needed to       **}
{**  implement a shell extension. The user interface code for the  **}
{**  propety page is held in the BMPPageProc module.               **}
{**                                                                **}
{**                                                                **}
{**  By Warren Young.                                              **}
{********************************************************************}
interface
uses
  Windows, { Standard Units }
  ComObj,
  ComServ,
  ShlObj,
  ActiveX,
  ShellAPI,
  CommCtrl,
  SysUtils,

  Global, { Application Specific Units }
  BMPPageProc,
  Resource;

Const
  { AA6A37C0-04F9-11D0-8AFB-00C0DF44273F }
  CLSID_ContextMenuShellExtension: TGUID = (
    D1:$aa6a37c0; D2:$04f9; D3:$11d0; D4:($8a, $fb, $00, $c0, $df, $44, $27, $3f));

type

{********************************************************************}
{**  Object : TPropertiesExt                                       **}
{**                                                                **}
{**  Description : This is the main object for the shell extension.**}
{**  The object has interfaces for the IShellExtInit and           **}
{**  IShellPropSheetExt interfaces.                                **}
{**                                                                **}
{********************************************************************}
  TPropertiesExt = class(TComObject, IShellExtInit, IShellPropSheetExt)
  private
    TheFile      : array[0..MAX_PATH] of char;
  public
    {** IShellExtInit interface implementation **}
    function Initialize( pidlFolder : PItemIDList; lpdobj : IDataObject;
                         hKeyProgID : HKEY): HResult; stdcall;

    {** IShellPropSheetExt interface implementation **}
    function AddPages( lpfnAddPage : TFNAddPropSheetPage; lParam : LPARAM): HResult; stdcall;
    function ReplacePage( uPageID : UINT; lpfnReplaceWith : TFNAddPropSheetPage;
                          lParam : LPARAM): HResult; stdcall;
  end;

{********************************************************************}
implementation

{********************************************************************}
{**  TPropertiesExt implementation                                 **}
{********************************************************************}


{********************************************************************}
{**  Method : TPropertiesExt.Initialize                            **}
{**                                                                **}
{**  This is method is called to setup the shell extension, findout**}
{**  the files involved,etc. At the moment it does nothing....     **}
{**  Bounced IShellExtInit::Initialize implementation.             **}
{********************************************************************}
function TPropertiesExt.Initialize( pidlFolder : PItemIDList; lpdobj : IDataObject;
                                       hKeyProgID : HKEY): HResult;
var
  medium : TStgMedium;
  fe     : TFormatEtc;
  hr     : HResult;
begin
  FillChar(TheFile,sizeof(TheFile),0);
  { Fill in the fe structure }
  with fe do
  begin
    cfFormat:=CF_HDROP;
    ptd:=nil;
    dwAspect:=DVASPECT_CONTENT;
    lindex:=-1;
    tymed:=TYMED_HGLOBAL;
  end;

  if lpdobj=nil then
  begin
    Result:=E_FAIL;
    exit;
  end;

  {** Render the data referenced by the IDataObject pointer to an HGLOBAL **}
  {** storage medium in CF_HDROP format.                                  **}

  hr:=lpdobj.GetData(fe,medium);
  if FAILED(hr) then
  begin
    Result:=E_FAIL;
    exit;
  end;

  {** If only one file is selected, retrieve the file name and store it in **}
  {** m_szFile. Otherwise fail the call.                                   **}

  hr:=E_FAIL;

  if DragQueryFile(medium.hGlobal,-1,nil,0)=1 then
  begin
    DragQueryFile(medium.hGlobal,0,TheFile,sizeof(TheFile));
    hr:=NO_ERROR;
  end;

  {** Release the storage medium and return. **}
  ReleaseStgMedium(medium);

  Result:=hr;
end;

{********************************************************************}
{**  Method : TPropertiesExt.AddPages                              **}
{**                                                                **}
{**  This is method is called to add pages to the PropertySheet.   **}
{**  This sets up a simple page which is dealt with by the dialog/ **}
{**  callback functions in BMPPageProc                             **}
{********************************************************************}
function TPropertiesExt.AddPages( lpfnAddPage : TFNAddPropSheetPage; lParam : LPARAM): HResult;
var
  psp   : TPropSheetPage;
  hPage : hPropSheetPage;
  FileStr : PChar;
begin
  {allocate memory for the filename and copy}
  GetMem(FileStr,MAX_PATH+1);
  StrCopy(FileStr,TheFile);

  FillChar(psp,sizeof(psp),0); { make sure it's clean }
  psp.hInstance:= {system.}hInstance;
  with psp do
  begin
    dwSize:=sizeof(TPropSheetPage);
    dwFlags:=PSP_USEREFPARENT OR PSP_USECALLBACK;
    //psp.hInstance:= {system.}hInstance;
    pszTemplate:=MakeIntResource(Dlg_Details);
    pfnDlgProc:=@PropExtDlgProc; { for the user interface stuff }
    pfnCallback:=@PropExtCallback; { for setup - shutdown functions }
    pcRefParent:=@RefThisDLL;
    lParam:=longint(FileStr);{pass in string pointer}
  end;

  hPage:=CreatePropertySheetPage(psp);
  if hPage<>nil then { valid PropertySheetPage }
    if not lpfnAddPage(hPage,lParam) then {add the page and check for OK}
      DestroyPropertySheetPage(hPage);

  Result:=NOERROR;
end;

{********************************************************************}
{**  Method : TPropertiesExt.ReplacePage                           **}
{**                                                                **}
{**  This is method is called to replacepages to the PropertySheet.**}
{**  This is not required for anything other than ControlPanel apps**}
{********************************************************************}
function TPropertiesExt.ReplacePage( uPageID : UINT; lpfnReplaceWith : TFNAddPropSheetPage;
                                        lParam : LPARAM): HResult;
begin
  Result:=E_NOTIMPL; {we don't do ReplacePages so be honest!}
end;

initialization
    TComObjectFactory.Create(ComServer, TPropertiesExt, CLSID_ContextMenuShellExtension,
         '', 'Bitmap Details property sheet', ciMultiInstance);

end.
{********************************************************************}
