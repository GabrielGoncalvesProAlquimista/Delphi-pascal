program backup;

uses
  Forms,
  UnBackup in 'UnBackup.pas' {FBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFBackup, FBackup);
  Application.Run;
end.
