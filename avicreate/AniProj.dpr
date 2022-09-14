program AniProj;

uses
  Forms,
  AniTool in 'AniTool.pas' {AniToolForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'AVICreator';
  Application.CreateForm(TAniToolForm, AniToolForm);
  Application.Run;
end.
