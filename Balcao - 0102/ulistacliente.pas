unit ulistacliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls;

type
  Tflistacliente = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  st : string;
    { Public declarations }
  end;

var
  flistacliente: Tflistacliente;

implementation

uses upedido, UNota, ureceber, Unpagar;


{$R *.DFM}

procedure Tflistacliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        table1.close;
         flistacliente.release;
end;

procedure Tflistacliente.Edit1Change(Sender: TObject);
begin
        table1.setrange ([edit1.text], ['Z']);
end;

procedure Tflistacliente.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin

        if key = 13 then
         DBGrid1DblClick(self);

        if key = 27 then close;

        if key = 40 then table1.next;
        if key = 38 then table1.prior;
end;

procedure Tflistacliente.FormActivate(Sender: TObject);
begin
 (table1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
end;

procedure Tflistacliente.DBGrid1DblClick(Sender: TObject);
begin
         if st = 'pedido' then begin
         fpedido.tbpedido.edit;
         fpedido.tbpedido['codigo'] := table1['codigo'];


         end else if st = 'nota' then begin
         fnota.tbnota.edit;
         fnota.tbnota['codigo'] := table1['codigo'];
         fnota.pclienteexecute(self);

         end else if st = 'receber' then begin
         freceber.tbreceber.edit;

         end else if st = 'pagar' then begin
         fpagar.tbpagar.edit;
         fpagar.tbpagar['codigo'] := table1['codigo'];
         end;

          close;
end;

procedure Tflistacliente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         DBGrid1DblClick(self);

        if key = 27 then close;
end;

end.
