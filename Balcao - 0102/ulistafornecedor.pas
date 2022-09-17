unit ulistafornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  Tflistafornecedor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
  st, controle:string;
    { Public declarations }
  end;

var
  flistafornecedor: Tflistafornecedor;

implementation

uses UEntDev, upedidofornecedor, Unpagar;

{$R *.DFM}

procedure Tflistafornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        table1.close;
         flistafornecedor.release;
end;

procedure Tflistafornecedor.Edit1Change(Sender: TObject);
begin
        table1.setrange ([edit1.text], ['Z']);
end;

procedure Tflistafornecedor.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key = 13 then
        DBGrid1DblClick(self);
       if key = 27 then close;

        if key = 40 then table1.next;
        if key = 38 then table1.prior;       
end;

procedure Tflistafornecedor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key = 13 then
        DBGrid1DblClick(self);
       if key = 27 then close;
end;

procedure Tflistafornecedor.FormActivate(Sender: TObject);
begin
 (table1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
end;

procedure Tflistafornecedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 27 then close;
end;

procedure Tflistafornecedor.DBGrid1DblClick(Sender: TObject);
begin

        if st='entrada' then begin
         fentrada.tbentrada.edit;
          fentrada.tbentrada['codigo'] := table1['codigo'];
           end;

        if st='pedido' then begin
         fpedidofornecedor.tbpedido.edit;
          fpedidofornecedor.tbpedido['codigo'] := table1['codigo'];
           end;

        if st='pagar' then begin
         fpagar.tbpagar.edit;
          fpagar.tbpagar['codigo'] := table1['codigo'];
           end;


           close;

end;

end.
