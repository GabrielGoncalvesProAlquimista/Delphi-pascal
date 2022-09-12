program Bloco;

uses
  Forms,
  Bloco1 in 'Bloco1.pas' {frmBloco};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmBloco, frmBloco);
  Application.Run;
end.
