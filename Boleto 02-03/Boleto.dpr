program Boleto;

uses
  Forms,
  UBoleto in 'UBoleto.pas' {fboleto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfboleto, fboleto);
  Application.Run;
end.
