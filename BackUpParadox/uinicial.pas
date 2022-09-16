unit uinicial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  Tfinicial = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  finicial: Tfinicial;

implementation

uses UnBackup, uRestore;

{$R *.DFM}

procedure Tfinicial.FormCreate(Sender: TObject);
var
hg:thandle;
begin
        hg := createellipticrgn(5,10,390,200);
        setwindowrgn(handle,hg,true);

end;

procedure Tfinicial.SpeedButton3Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfinicial.SpeedButton1Click(Sender: TObject);
begin
        APPLICATION.CreateForm(tfBackup, fBackup);
         fBackup.showmodal;
          fBackup.release;
end;

procedure Tfinicial.SpeedButton2Click(Sender: TObject);
begin
        APPLICATION.CreateForm(tfrestore, frestore);
         frestore.showmodal;
          frestore.release;
end;

end.
