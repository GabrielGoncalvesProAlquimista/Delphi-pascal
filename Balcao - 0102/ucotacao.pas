unit ucotacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ToolWin, ComCtrls, StdCtrls, ExtCtrls;

type
  Tfcotacao = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcotacao: Tfcotacao;

implementation

uses UnitMenu;


{$R *.DFM}

procedure Tfcotacao.FormActivate(Sender: TObject);
begin
   (fmenu.query1.fieldbyname ('valor') as tfloatfield).displayformat := '###,##0.00';
end;

procedure Tfcotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        fmenu.query1.close;
end;

end.
