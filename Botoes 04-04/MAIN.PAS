{
 Designer: Craig Ward
 Date:     12/12/95

 Version:  1.0

 Function: Example of creating speed-buttons at run-time and associating them
           with application command lines.
*******************************************************************************}

unit Main;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Inifiles,
  ShellAPI;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    spdBtnInvisible: TSpeedButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Applications1: TMenuItem;
    Memo1: TMemo;
    procedure Exit1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure spdBtnInvisibleClick(Sender: TObject);
    procedure Applications1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CreateSpdButtons;
    procedure DestroySpdButtons;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arSB: array[1..15] of TSpeedButton;

const
 iConstMax: byte = 15; {maximum speed-buttons}
 sConstIni = 'c:\windows\ztemp.ini'; {ini file}

implementation

{$R *.DFM}

uses
 App;

procedure TForm1.Exit1Click(Sender: TObject);
begin
 close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 CreateSpdButtons;
end;

procedure TForm1.CreateSpdButtons;
var
 i: TIniFile;
 ic: TIcon;
 iInc, iLeft, iTop: integer;
 pIcon: pChar;
begin
 screen.cursor := crHourGlass;
 try
  {initialise}
  i := TIniFile.create(sConstIni);
  pIcon := StrAlloc(256);
  iInc := 0;

  {starting values for first speed-button}
  iLeft := spdBtnInvisible.left;
  iTop := spdBtnInvisible.top;

  {loop}
  for iInc := 1 to (i.ReadInteger('applications','totalApplications',0)) do
   begin
    {create components}
    arSB[iInc] := TSpeedButton.create(application);

    {check that there's room to create component}
    if iLeft >= (panel1.width - arSB[iInc].width) then exit;

    {properties for component}
    arSB[iInc].left := iLeft;
    arSB[iInc].top := iTop;
    arSB[iInc].parent := Panel1;
    arSB[iInc].hint := i.ReadString('applications',(IntToStr(iInc)),'Unassigned');
    arSB[iInc].showHint := true;
    arSB[iInc].OnClick := spdBtnInvisibleClick;

    {draw icon}
    ic := TIcon.create;
    StrPCopy(pIcon,arSB[iInc].hint);
    ic.Handle := ExtractIcon(hInstance,pIcon,0);
    arSB[iInc].glyph := TBitmap.create;
    arSB[iInc].glyph.height := ic.height;
    arSB[iInc].glyph.width := ic.width;
    arSB[iInc].glyph.canvas.draw(0,0,ic);
    ic.free;

    {increments}
    iLeft := iLeft + arSB[iInc].width + 5;
   end;

  finally
   i.Free;
   StrDispose(pIcon);
   screen.cursor := crDefault;
  end;
end;


{destroy application buttons}
procedure Tform1.DestroySpdButtons;
var
 iInc: integer;
begin
  {exit if array is empty}
  if sizeOf(arSB) = 0 then exit;

  {loop}
  for iInc := 1 to iConstMax do
   begin
    if arSB[iInc] <> nil then arSB[iInc].destroy;
   end;
end;


procedure TForm1.spdBtnInvisibleClick(Sender: TObject);
var
 pWin: pChar;
begin
 with sender as TSpeedButton do
  begin
   try
    pWin  := StrAlloc(256);
    StrPCopy(pWin,hint);
    WinExec(pWin,SW_SHOWNORMAL);
   finally
    StrDispose(pWin);
   end;
  end;
end;

procedure TForm1.Applications1Click(Sender: TObject);
begin
 try
  screen.cursor := crHourGlass;
   AppDlg := TAppDlg.Create(application);
  screen.cursor := crDefault;
  if AppDlg.ShowModal = mrOK then
   begin
    {destroy old buttons before creating new ones}
    DestroySpdButtons;
    CreateSpdButtons;
   end;
 finally
  screen.cursor := crDefault;
  AppDlg.free;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 CreateSpdButtons;
end;

end.
