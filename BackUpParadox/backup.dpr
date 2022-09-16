program backup;

uses
  Forms,
  uRestore in 'uRestore.pas' {fRestore},
  uinicial in 'uinicial.pas' {finicial},
  UnBackup in 'UnBackup.pas' {FBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfinicial, finicial);
  Application.Run;
end.
