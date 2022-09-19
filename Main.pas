unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BTOdeum, StdCtrls, ComCtrls;

type
  TfrmMain = class(TForm)
    Beeper: TBTBeeper;
    btn_PlayDefaultSound: TButton;
    btn_PlayPresetSound: TButton;
    cboPresetSounds: TComboBox;
    btn_BeepFor: TButton;
    Label1: TLabel;
    Label2: TLabel;
    spTone: TUpDown;
    edtTone: TEdit;
    edtMSecs: TEdit;
    spMSecs: TUpDown;
    btn_PlayTextFile: TButton;
    edtFileName: TEdit;
    Label3: TLabel;
    cboSongs: TComboBox;
    Label4: TLabel;
    procedure btn_PlayDefaultSoundClick(Sender: TObject);
    procedure btn_PlayPresetSoundClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_BeepForClick(Sender: TObject);
    procedure btn_PlayTextFileClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}



{------------------FormCreate----------------------------------------------------}
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  cboPresetSounds.ItemIndex:=0;
  cboSongs.ItemIndex:=0;
end;

{------------------FormKeyDown----------------------------------------------------}
procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Escape then Close;
end;

{----------------btn_PlayDefaultSoundClick----------------------------------------}
procedure TfrmMain.btn_PlayDefaultSoundClick(Sender: TObject);
begin
 Beeper.PlayDefaultSound;
end;

{------------------btn_PlayPresetSoundClick---------------------------------------}
procedure TfrmMain.btn_PlayPresetSoundClick(Sender: TObject);
begin
  Beeper.PlayPresetSound(TPresetSound(cboPresetSounds.ItemIndex));
end;      

{------------------btn_BeepForClick-----------------------------------------------}
procedure TfrmMain.btn_BeepForClick(Sender: TObject);
begin
  Beeper.BeepFor(spTone.Position, spMSecs.Position);
end;

{------------------btn_PlayTextFileClick------------------------------------------}
procedure TfrmMain.btn_PlayTextFileClick(Sender: TObject);
begin
  Beeper.PlayTextFile(ExtractFilePath(Application.ExeName) + '\' + edtFileName.Text,
                      cboSongs.Text); 
end;



end.



