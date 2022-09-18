unit uRestore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, FileCtrl, backup, backup1;

type
  TfRestore = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    BackupFile1: TBackupFile;
    DirectoryListBox1: TDirectoryListBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    DriveComboBox1: TDriveComboBox;
    SpeedButton4: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    s,s1:string;
    { Public declarations }
  end;

var
  fRestore: TfRestore;

implementation

{$R *.DFM}

procedure TfRestore.SpeedButton1Click(Sender: TObject);
begin
     MessageBeep(MB_ICONEXCLAMATION);
      MessageBeep(MB_ICONEXCLAMATION);
 if opendialog1.execute then
   if opendialog1.filename<>'' then
     begin
       s:=opendialog1.filename;
        edit1.text:=s;
     end;
end;

procedure TfRestore.SpeedButton2Click(Sender: TObject);
begin
     MessageBeep(MB_ICONEXCLAMATION);
      DirectoryListBox1.visible:=true;
       DriveComboBox1.visible:=true;
end;

procedure TfRestore.SpeedButton3Click(Sender: TObject);
begin
 MessageBeep(MB_ICONEXCLAMATION);
  if (s<>'') and (s1<>'') then
    if BackupFile1.Restore(s,s1) then
      showmessage('Restauração efetuada com sucesso')
    else
      showmessage('Restauração falhou ou foi abortada');
end;

procedure TfRestore.FormCreate(Sender: TObject);
begin
  drivecombobox1.dirlist:=directorylistbox1;
end;

procedure TfRestore.DirectoryListBox1Change(Sender: TObject);
begin
  s1:=DirectoryListBox1.directory;
  edit2.text:=s1;
end;

procedure TfRestore.SpeedButton4Click(Sender: TObject);
begin
       MessageBeep(MB_ICONASTERISK);
  close;
end;

procedure TfRestore.CheckBox1Click(Sender: TObject);
begin
   if CheckBox1.Checked=true then begin
    Edit1.Text:='A:\Beckup.bck';
     Edit2.Text:='C:\abrasrib\Tabelas';
    end else begin
    Edit1.Text:='';
     Edit2.Text:='';
end;
END;
end.
