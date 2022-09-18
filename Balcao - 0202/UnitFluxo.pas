unit UnitFluxo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, ComCtrls,
  QuickRpt, ActnList;

type
  TFFluxo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    DBGrid4: TDBGrid;
    dssintetico: TDataSource;
    dsentrada: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    querysintetico: TQuery;
    queryentrada: TQuery;
    Panel1: TPanel;
    ActionList1: TActionList;
    fanalitico: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    querysaida: TQuery;
    dssaida: TDataSource;
    totalizar: TAction;
    labelentrada: TLabel;
    labelsaida: TLabel;
    labelsaldo: TLabel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fanaliticoExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure MaskEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  Tot1, Tot2, Tot3, Tot4 : Real;
  st : String;
    { Public declarations }
  end;

var
  FFluxo: TFFluxo;

implementation


{$R *.DFM}

procedure TFFluxo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        querysintetico.Close;
         queryentrada.Close;
          querysaida.close;
end;

procedure TFFluxo.FormActivate(Sender: TObject);
begin
   (querysintetico.fieldbyname ('entradas') as tfloatfield).displayformat := '###,##0.00';
   (querysintetico.fieldbyname ('saídas') as tfloatfield).displayformat := '###,##0.00';
   (querysintetico.fieldbyname ('saldo') as tfloatfield).displayformat := '###,##0.00';
   (querysintetico.fieldbyname ('acúmulo') as tfloatfield).displayformat := '###,##0.00';
end;

procedure TFFluxo.SpeedButton1Click(Sender: TObject);
var
bok :boolean;
begin
        BOK := inputquery('Localizar data','Entre com a data:',ST);
         if BOK then

   if not querysintetico.Locate ('vencimento',st,[]) then
    showmessage('Não há contas nesta data');
end;

procedure TFFluxo.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
        maskedit2.setfocus;
end;

procedure TFFluxo.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key = 13 then
      if (maskedit1.text<>'  /  /    ') and (maskedit2.text<>' /  /    ') then begin

       querysintetico.filtered := false;
      querysintetico.filter := 'vencimento>=''' + maskedit1.text + ''' and vencimento >= ''' + maskedit2.text + '''';
     querysintetico.filtered := true;

     end;
end;

procedure TFFluxo.fanaliticoExecute(Sender: TObject);
var
st1, st2:string;

begin

      if (maskedit5.text<>'  /  /    ') and (maskedit6.text<>' /  /    ') then begin

       st1 := formatdatetime('mm/dd/yyyy',StrToDate(maskEdit5.text));
       st2 :=  formatdatetime('mm/dd/yyyy',StrToDate(maskEdit6.text));

       with queryentrada do begin
        close;
         sql.clear;
          sql.add ('select (fantasia) as Nome, (DataEmissao) as Entrada, (vrdesconto) as Valor from tbreceber');
           sql.add (' where dataemissao between "' + st1 + '" and "' + st2 + '" order by dataemissao');
            open;
             end;

      (queryentrada.fieldbyname ('valor') as tfloatfield).displayformat := '###,##0.00';


       with querysaida do begin
        close;
         sql.clear;
          sql.add ('select (fantasia) as Nome, (DataEmissao) as Saída, (vrdesconto) as Valor from tbpagar');
           sql.add (' where dataemissao between "' + st1 + '" and "' + st2 + '" order by dataemissao');
            open;
             end;

          (querysaida.fieldbyname ('valor') as tfloatfield).displayformat := '###,##0.00';
          totalizarexecute(self);

       end;
end;

procedure TFFluxo.PageControl1Change(Sender: TObject);
begin
        if pagecontrol1.ActivePageIndex = 0 then begin
         maskedit5.text := datetostr(now);
         maskedit6.text := datetostr(now);
         fanaliticoexecute(self);
         maskedit5.setfocus; 
         end;
end;

procedure TFFluxo.totalizarExecute(Sender: TObject);
var
tot1, tot2 : real;
bookmark1, bookmark2 : tbookmarkstr;
begin

     bookmark1 := queryentrada.Bookmark;
      bookmark2 := querysaida.Bookmark;

     try
      queryentrada.DisableControls;
       querysaida.DisableControls;

      tot1 := 0;
       tot2 := 0;

    try

    ///// total entrada
    queryentrada.First;

    while not queryentrada.Eof do begin
     tot1 := tot1 + queryentrada.fields[2].asfloat;
      queryentrada.next;
    end;


   /// total saida
    querysaida.First;

    while not querysaida.Eof do begin
     tot2 := tot2 + querysaida.fields[2].asfloat;
      querysaida.next;
    end;

    finally

    queryentrada.EnableControls;
    querysaida.EnableControls;

    end;
    finally

    queryentrada.Bookmark := bookmark1;
    querysaida.Bookmark := bookmark2;
    end;

    labelentrada.caption := 'Total das Entradas: ' + format('%n',[tot1]);
     labelsaida.caption := 'Total das Saídas: ' + format('%n',[tot2]);
      labelsaldo.caption := 'Saldo: ' + format('%n',[tot2 - tot1]);


end;

procedure TFFluxo.MaskEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit6.setfocus;
end;

procedure TFFluxo.MaskEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         fanaliticoexecute(self);

         if key = 27 then
          maskedit5.setfocus;
end;

end.
