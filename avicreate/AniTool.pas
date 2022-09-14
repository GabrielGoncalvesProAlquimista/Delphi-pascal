unit AniTool;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, ComCtrls, VFW, DIBitmap;

type
  TAniToolForm = class(TForm)
    BitmapImage: TImage;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitmapListBox: TListBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    AddBitmapDialog: TOpenDialog;
    SaveAVIDialog: TSaveDialog;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitmapListBoxClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  AniToolForm: TAniToolForm;

implementation

{$R *.DFM}

procedure TAniToolForm.SpeedButton4Click(Sender: TObject);
var
  MyBitmap: TBitmap;
  i:        Integer;
begin
 SpeedButton1.Enabled := True;
  with AddBitmapDialog do
    if Execute then
      for i:=0 to Files.Count-1 do
      begin
        MyBitmap := TBitmap.Create;
        MyBitmap.LoadFromFile(Files[i]);
        BitmapListBox.Items.AddObject(Files[i],MyBitmap);
      end;
end;

procedure TAniToolForm.BitmapListBoxClick(Sender: TObject);
begin
  with BitmapListBox do
    if SelCount>1 then
      BitmapImage.Picture := nil
    else
      BitmapImage.Picture.Bitmap := Items.Objects[ItemIndex] as TBitmap;
end;

procedure TAniToolForm.SpeedButton3Click(Sender: TObject);
var
  i: Integer;
begin
 SpeedButton1.Enabled := True;
  with BitmapListBox do
    for i:=Items.Count-1 downto 0 do
      if Selected[i] then
      begin
        (Items.Objects[i] as TBitmap).Free;
        Items.Delete(i);
      end;
end;

procedure TAniToolForm.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  pfile: PAVIFile;
  asi: TAVIStreamInfo;
  ps: PAVIStream;
  nul: Longint;

  BitmapInfo: PBitmapInfoHeader;
  BitmapInfoSize: Integer;
  BitmapBits: Pointer;
  BitmapSize: Integer;
begin

  with BitmapListBox, SaveAVIDialog do
    if Execute then
    begin
      AVIFileInit;

      if AVIFileOpen(pfile, PChar(FileName), OF_WRITE or OF_CREATE, nil)=AVIERR_OK then
      begin
        FillChar(asi,sizeof(asi),0);

        asi.fccType := streamtypeVIDEO;                 //  Now prepare the stream
        asi.fccHandler := 0;
        asi.dwScale := 1;
        asi.dwRate := 2;

        with Items.Objects[0] as TBitmap do
        begin
          InternalGetDIBSizes(Handle,BitmapInfoSize,BitmapSize,256);
          BitmapInfo := AllocMem(BitmapInfoSize);
          BitmapBits := AllocMem(BitmapSize);
          InternalGetDIB(Handle,0,BitmapInfo^,BitmapBits^,256);
        end;

        asi.dwSuggestedBufferSize := BitmapInfo^.biSizeImage;
        asi.rcFrame.Right := BitmapInfo^.biWidth;
        asi.rcFrame.Bottom := BitmapInfo^.biHeight;

        if AVIFileCreateStream(pfile,ps,asi)=AVIERR_OK then
          with (Items.Objects[0] as TBitmap) do
          begin
            InternalGetDIB(Handle,0,BitmapInfo^,BitmapBits^,256);
            if AVIStreamSetFormat(ps,0,BitmapInfo,BitmapInfoSize)=AVIERR_OK then
            begin
              for i:=0 to Items.Count-1 do
                with (Items.Objects[i] as TBitmap) do
                begin
                  InternalGetDIB(Handle,0,BitmapInfo^,BitmapBits^,256);
                  if AVIStreamWrite(ps,i,1,BitmapBits,BitmapSize,AVIIF_KEYFRAME,nul,nul)<>AVIERR_OK then
                  begin
                    raise Exception.Create('Could not add frame');
                    break;
                  end;
                end;
            end;
          end;
          FreeMem(BitmapInfo);
          FreeMem(BitmapBits);
        end;

      AVIStreamRelease(ps);
      AVIFileRelease(pfile);

      AVIFileExit;
    end;
end;

procedure TAniToolForm.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
