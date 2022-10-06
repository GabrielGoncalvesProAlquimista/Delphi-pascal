program Spdbtn;

uses
  Forms,
  Main in 'MAIN.PAS' {Form1},
  App in 'APP.PAS' {AppDlg};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
