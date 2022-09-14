unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MPlayer, ComCtrls, StdCtrls, ExtCtrls, ActnList, Menus;
const
  AviResourceName = string('MyAppAvi');
  BmpResourceName = string('MyAppBmp');
  TxtResourceName = string('MyAppTxt');
  TxtResourceType = string('TXT');

type
  TForm1 = class(TForm)
    Animate1: TAnimate;
    ButtonTest: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    AbautMenu: TMenuItem;
    ActionList1: TActionList;
    ActionExit: TAction;
    ActionTest: TAction;
    ButtonExit: TButton;
    ActionAbaut: TAction;
    procedure ActionExitExecute(Sender: TObject);
    procedure ActionAbautExecute(Sender: TObject);
    procedure ActionTestExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  Abaut;

{$R *.DFM}
{$R MyAppRes.RES}

procedure TForm1.ActionExitExecute(Sender: TObject);
begin
  if Animate1 <> nil then
    Animate1.Active:= false;
  Close;
end;

procedure TForm1.ActionAbautExecute(Sender: TObject);
var
  ResHandle: THandle;
begin
	ResHandle := LoadResource(HInstance,
  	Findresource(HInstance, PChar(TxtResourceName), Pchar(TxtResourceType)));
	if ResHandle = 0 then
  begin
    showmessage(SysErrorMessage(GetLastError));
    exit;
  end;

  with Abaut.OKBottomDlg do
  begin
    Memo1.Font.Color:= clAqua;
    Memo1.Text := string(ResHandle);
    ShowModal;
  end;

end;

procedure TForm1.ActionTestExecute(Sender: TObject);
begin
  Animate1.ResName := AviResourceName;
  Animate1.Active:= true;
  image1.Picture.Bitmap.LoadFromResourceName(
    HInstance, BmpResourceName);
end;


end.
