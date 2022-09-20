program Bina;

uses
  Forms,
  UPRINCIPAL in 'UPRINCIPAL.pas' {FBINA};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFBINA, FBINA);
  Application.Run;
end.
