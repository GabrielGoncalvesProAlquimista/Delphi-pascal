program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Abaut in 'Abaut.pas' {OKBottomDlg};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TOKBottomDlg, OKBottomDlg);
  Application.Run;
end.
