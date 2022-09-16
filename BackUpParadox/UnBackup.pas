unit UnBackup;

interface

uses
  { Directivas de compilação }
  {$ifdef win32}
    BDE, { BDE 32 BITS }
  {$else}
    DBIProcs, DBITypes, DbiErrs, { IDAPI 16 BITS}
  {$endif}
  WinProcs, WinTypes, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, {backup1,} Buttons, DB, DBTables, backup,
  Gauges, backup1;

type
  TFBackup = class(TForm)
    Panelbackup: TPanel;
    FileListBox: TListBox;
    BackupFile1: TBackupFile;
    SaveDialog: TSaveDialog;
    Gauge1: TGauge;
    BitBtn1: TSpeedButton;
    Label1: TLabel;
    Table1: TTable;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    StaticText1: TStaticText;
    procedure BackupFile1Progress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function GetAliasPath( sAlias : String) : String;  //retorna o caminho do alias
  end;

var
  fBackup: TfBackup;

implementation

{$R *.DFM}


function TfBackup.GetAliasPath( sAlias : String) : String;
var
  oDataBase : TDatabase;
  pszDir   : Pchar;
  sDir : String;
begin
  try
    oDataBase := TDatabase.Create(nil);
    With oDatabase do
    begin
      try
        pszDir := StrAlloc( 255 );
        AliasName := sAlias;
        DataBaseName := edit1.text;
        Connected := true;
        DbiGetDirectory( Handle, true, pszDir );
        sDir := StrPas( pszDir );
        {$Ifdef Win32}
          Result := sDir;
        {$else}
          Result := sDir + '\';
        {$endif}
        Connected := false;
      except
        on E:EOutOfMemory do
          MessageDlg('Problemas de memória ' + E.Message, MtError,[MBOK],0);
      end;
    end;
  finally
    StrDispose( pszDir );
    oDataBase.Free;
  end;
end;

procedure TFBackup.BackupFile1Progress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
begin
 with Gauge1 do
 begin
      visible := Percent < 100;
      if visible then Progress := Percent;

 end;

end;

procedure TFBackup.SpeedButton1Click(Sender: TObject);
var vFileName, fAlias : String;
    Result : Integer;
    SearchRec : TSearchRec;
    vPath : String;
begin
 MessageBeep(MB_ICONEXCLAMATION);
  BitBtn1.Enabled := False;
   vPath := GetAliasPath(edit1.text);
    FileListBox.Items.Add(vPath+'*.*');

  if Application.MessageBox('Deseja continuar com o backup?','Atenção',MB_ICONINFORMATION + mb_YesNo) = IdNo then
    Abort;

     if Filelistbox.items.count = 0 then
       Showmessage('Arquivos não adcionados')
     else
       with SaveDialog do
       if execute then
         begin
           if (uppercase(copy(filename, 1, 1)) = 'A') or (uppercase(copy(filename, 1, 1)) = 'D')or (uppercase(copy(filename, 1, 1)) = 'E') then
             begin
               Showmessage('Drive  indicado - por favor verifique se o disco está inserido e clique em OK');
               BackupFile1.maxSize := 1400000;  //backup to floppy
             end
           else BackupFile1.maxSize := 0;
           backupfile1.backuptitle      := edit1.text;
           backupfile1.backupmode       := bmAll;
           backupfile1.compressionLevel := clDefault;
           backupfile1.SaveFileID       := False;
           if backupfile1.backup(filelistbox.items, filename) then
             Showmessage('Backup Completo. Taxa de Compressão = '+inttostr(BackupFile1.compressionrate)+' %')
           else
             Showmessage('Backup falhou ou foi abortado'); //failed or aborted');
         end;
  BitBtn1.Enabled := True;


end;

procedure TFBackup.Edit1Change(Sender: TObject);
begin
        bitbtn1.Enabled := length(edit1.text)> 0;
end;

procedure TFBackup.SpeedButton2Click(Sender: TObject);
begin
        edit1.clear;
         filelistbox.Items.clear;
end;

end.
