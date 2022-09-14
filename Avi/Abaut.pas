unit Abaut;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Dialogs;

const
  DisclaimResourceName = string('MyAppDisclaim');
  DisclaimResourceType = string('DisclaimText');

type
  TOKBottomDlg = class(TForm)
    OKBtn: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKBottomDlg: TOKBottomDlg;

implementation

{$R *.DFM}

procedure TOKBottomDlg.OKBtnClick(Sender: TObject);
begin
  Memo1.Text:= '';
  Visible:= false;
end;

procedure TOKBottomDlg.Label1Click(Sender: TObject);
var
  ResHandle: THandle;
begin
	ResHandle := LoadResource(HInstance,
  	Findresource(HInstance, PChar(DisclaimResourceName),
      Pchar(DisclaimResourceType)));
	if ResHandle = 0 then
  begin
    showmessage(SysErrorMessage(GetLastError));
    exit;
  end;
  Memo1.Font.Color:= clRed or $559911;
  Memo1.Text := string(ResHandle);


end;

end.
