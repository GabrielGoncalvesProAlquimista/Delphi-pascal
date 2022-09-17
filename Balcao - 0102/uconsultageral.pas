unit uconsultageral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, ComCtrls, Grids, MXGRID, MXPIVSRC,
  MXDB, Mxstore, DB, DBTables, MXTABLES, TeeProcs, TeEngine, Chart, MXGRAPH,
  Series, Buttons;

type
  Tfconsultageral = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBoxEx1: TComboBoxEx;
    Bevel1: TBevel;
    Bevel2: TBevel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Query1: TDecisionQuery;
    DecisionCube1: TDecisionCube;
    DecisionSource1: TDecisionSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DecisionGrid1: TDecisionGrid;
    DecisionGraph1: TDecisionGraph;
    OKStart: TDecisionPivot;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxEx1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fconsultageral: Tfconsultageral;

implementation



{$R *.dfm}

procedure Tfconsultageral.FormActivate(Sender: TObject);
begin
        comboboxex1.Text := 'ESCOLHA UMA OPÇÃO AQUI';
end;

procedure Tfconsultageral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        query1.Close;
end;

procedure Tfconsultageral.ComboBoxEx1Click(Sender: TObject);
var
st1, st2 : string;

begin

      if (maskedit1.text <>'  /  /    ') and (maskedit2.Text <> '  /  /    ') then begin
      st1 := formatdatetime('mm/dd/yyyy', strtodate (maskedit1.Text));
      st2 := formatdatetime('mm/dd/yyyy', strtodate (maskedit2.Text));
      end;


        IF ComboBoxEx1.Text = 'PEDIDO CLIENTE' THEN BEGIN

       with query1 do begin
        close;
         sql.Clear;
          if (maskedit1.text <>'  /  /    ') and (maskedit2.Text <> '  /  /    ') then
          sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbpedidoitem where data >= ''' + st1 + '''  and data <= ''' + st2 + ''' GROUP BY Fantasia, Nome ')
         else
        sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbpedidoitem GROUP BY Fantasia, Nome');
       open;
      end;


       END ELSE IF ComboBoxEx1.Text = 'PEDIDO FORNECEDOR' THEN BEGIN

    with query1 do begin
        close;
         sql.Clear;
          if (maskedit1.text <>'  /  /    ') and (maskedit2.Text <> '  /  /    ') then
          sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbpedidofornecedoritem where data >= ''' + st1 + '''  and data <= ''' + st2 + ''' GROUP BY Fantasia, Nome ')
         else
        sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbpedidofornecedoritem GROUP BY Fantasia, Nome');
       open;
      end;

        END ELSE IF ComboBoxEx1.Text = 'ENTRADA DE MERCADORIA' THEN BEGIN


    with query1 do begin
        close;
         sql.Clear;
          if (maskedit1.text <>'  /  /    ') and (maskedit2.Text <> '  /  /    ') then
          sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbentradaitem where data >= ''' + st1 + '''  and data <= ''' + st2 + ''' GROUP BY Fantasia, Nome ')
         else
        sql.add ('SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar FROM tbentradaitem GROUP BY Fantasia, Nome');
       open;
      end;

        end;


end;

procedure Tfconsultageral.SpeedButton1Click(Sender: TObject);
begin
        ComboBoxEx1Click(self);

end;

procedure Tfconsultageral.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit2.SetFocus;
end;

procedure Tfconsultageral.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 27 then
         maskedit1.SetFocus;
end;

procedure Tfconsultageral.SpeedButton2Click(Sender: TObject);
begin
       maskedit1.Clear;
        maskedit2.Clear;
end;

end.
