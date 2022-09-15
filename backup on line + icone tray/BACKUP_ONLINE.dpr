program Controle_ftp;

uses
  Forms,
  ftp in 'ftp.pas' {Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Backup Online!';
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
