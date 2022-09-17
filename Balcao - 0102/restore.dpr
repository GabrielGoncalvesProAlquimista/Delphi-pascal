program restore;

uses
  Forms,
  uRestore in 'uRestore.pas' {fRestore};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfRestore, fRestore);
  Application.Run;
end.
