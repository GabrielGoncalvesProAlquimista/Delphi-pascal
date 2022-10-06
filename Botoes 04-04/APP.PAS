{
 Designer: Craig Ward
 Date:     12/12/95

 Version:  1.0

 Function: Application Dialog. Allows user to add new applications to main-form's
           toolbar, or remove them.
*******************************************************************************}
unit App;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Controls, Buttons,
  StdCtrls, ExtCtrls, Dialogs, SysUtils, IniFiles, Main;

type
  TAppDlg = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    listApps: TListBox;
    SpeedButton1: TSpeedButton;
    editApps: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppDlg: TAppDlg;

implementation

{$R *.DFM}

{***buttons*********************************************************************}

{select application}
procedure TAppDlg.SpeedButton1Click(Sender: TObject);
var
 s: ^string;
begin
 try
  New(s);

  s^ := '';

 with OpenDialog1 do
  begin

  {set OpenDialog}
  title := 'Select Application';
  Filter := 'Exe (*.EXE)|*.exe|Bat (*.BAT)|*.bat|Com (*.COM)|*.com|Pif (*.PIF)|*.pif';
  FileName := '*.EXE';
  {execute}
   if opendialog1.execute then
    begin
     s^ := FileName;
      if (ExtractFileExt(s^) = '.EXE')
       or (ExtractFileExt(s^) = '.BAT')
        or (ExtractFileExt(s^) = '.COM')
         or (ExtractFileExt(s^) = '.PIF')
          then editApps.text := s^
    end
  end;

 finally
  Dispose(s);
 end;

end;


{add application}
procedure TAppDlg.SpeedButton2Click(Sender: TObject);
var
 s: ^string;
begin
 try
  New(s);

   {initialise}
   s^ := '';

   {check for blank}
   if editApps.text = '' then exit;

   {check for non-exe}
   s^ := editApps.text;
    if (ExtractFileExt(s^) = '.EXE')
     or (ExtractFileExt(s^) = '.BAT')
      or (ExtractFileExt(s^) = '.COM')
       or (ExtractFileExt(s^) = '.PIF')
        then
         {add}
         begin
          ListApps.Items.Add(editApps.text);
          editApps.text := '';
         end
    else
     begin
      messageDlg('Can not add non-executable files to list',mtWarning,[mbOK],0);
      exit;
     end;


 finally
  Dispose(s);
 end;

end;

{remove application}
procedure TAppDlg.SpeedButton3Click(Sender: TObject);
begin
 ListApps.Items.Delete(listApps.ItemIndex);
end;

{help}
procedure TAppDlg.BitBtn3Click(Sender: TObject);
begin
 Application.HelpCommand(HELP_CONTEXT,AppDlg.HelpContext)
end;

{ok}
procedure TAppDlg.BitBtn1Click(Sender: TObject);
var
 i: TIniFile;
 iInc: integer;
begin
 {write to ini file}
 try
  i := TIniFile.create(sConstIni);

  {initialise}
  iInc := 0;

  {clear out ini app's}
  for iInc := 1 to (i.ReadInteger('applications','totalapplications',0)) do
   begin
    i.WriteString('applications',(IntToStr(iInc)),'');
   end;

  {write new total}
  i.WriteInteger('applications','totalapplications',(listApps.items.count));

  {write new app's to ini}
  for iInc := 1 to (listApps.items.count) do
   begin
    i.WriteString('applications',(IntToStr(iInc)),(listApps.items.strings[iInc-1]));
   end;

 finally
  i.free;
 end;

 modalResult := mrOK;
end;

{cancel}
procedure TAppDlg.BitBtn2Click(Sender: TObject);
begin
 modalResult := mrCancel;
end;

{***form's preferences*********************************************************}

{on activate}
procedure TAppDlg.FormActivate(Sender: TObject);
var
 i: TIniFile;
 iInc: integer;
begin
 try
  i := TIniFile.create(sConstIni);

  for iInc := 1 to (i.ReadInteger('applications','totalApplications',0)) do
   begin
    listApps.items.Add(i.ReadString('applications',(IntToStr(iInc)),'error'));
   end;

 finally
  i.Free;
 end;

end;

end.
