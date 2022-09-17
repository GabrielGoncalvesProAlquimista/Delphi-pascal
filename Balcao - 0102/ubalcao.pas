unit ubalcao;

interface

uses
  Windows, variants, Messages, clipbrd, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, Db, DBTables, StdCtrls, DBCtrls, Mask,
  Buttons, ToolWin, ActnList;

type
  Tfbalcao = class(TForm)
    tbpedido: TTable;
    dspedido: TDataSource;
    dsitem: TDataSource;
    tbcliente: TTable;
    tbproduto: TTable;
    ActionList1: TActionList;
    Totalizar: TAction;
    preencher: TAction;
    Excluir: TAction;
    tbfatura: TTable;
    dsfatura: TDataSource;
    tbreceber: TTable;
    campos: TAction;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    foco: TAction;
    estoque: TAction;
    formatar: TAction;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel10: TPanel;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    Panel13: TPanel;
    btngravar: TSpeedButton;
    Panel12: TPanel;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    Panel4: TPanel;
    SpeedButton8: TSpeedButton;
    ScrollBox2: TScrollBox;
    Panel11: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    EditQtd: TDBEdit;
    EditSubtotal: TDBEdit;
    EditPreco: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    EditTotal: TDBEdit;
    EditRecebido: TDBEdit;
    EditTroco: TDBEdit;
    Panel14: TPanel;
    DBGrid3: TDBGrid;
    Panel18: TPanel;
    Panel5: TPanel;
    Image1: TDBImage;
    Panel19: TPanel;
    Panel3: TPanel;
    fimageitem: TAction;
    tbitem: TTable;
    conta: TAction;
    Panel21: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    Label15: TLabel;
    EditDtaEm: TDBEdit;
    EditCodPed: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    novoitem: TAction;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    btncontas: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure tbpedidoAfterScroll(DataSet: TDataSet);
    procedure tbpedidoBeforeEdit(DataSet: TDataSet);
    procedure TotalizarExecute(Sender: TObject);
    procedure preencherExecute(Sender: TObject);
    procedure tbitemNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure camposExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure EditCodPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure focoExecute(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure estoqueExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure EditRecebidoExit(Sender: TObject);
    procedure EditPrecoExit(Sender: TObject);
    procedure EditQtdExit(Sender: TObject);
    procedure contaExecute(Sender: TObject);
    procedure tbitemAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure novoitemExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbitemBeforeEdit(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btncontasClick(Sender: TObject);
  private
    { Private declarations }
  public
  BOK : boolean;
  St, tipo : String;
  it:integer;
    { Public declarations }
  end;

var
  fbalcao: Tfbalcao;

implementation

uses UnitMenu, ulistaproduto, UnitRelatorio, UNota;


{$R *.DFM}

procedure Tfbalcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

            tbitem.edit;
             tbitem.post;


        Tbpedido.Active:=False;
        TbItem.Active:=False;
        tbfatura.close;
end;

procedure Tfbalcao.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);

end;

procedure Tfbalcao.btngravarClick(Sender: TObject);
begin
        tbpedido.edit;
         tbpedido.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
            contaexecute(self);

end;

procedure Tfbalcao.btnPrimeiroClick(Sender: TObject);
begin
        tbpedido.cancel;
         tbpedido.first;
end;

procedure Tfbalcao.btnVoltarClick(Sender: TObject);
begin
       tbpedido.cancel;
        tbpedido.prior;
end;

procedure Tfbalcao.btnAvancarClick(Sender: TObject);
begin
       tbpedido.cancel;
        tbpedido.Next;
end;

procedure Tfbalcao.btnUltimoClick(Sender: TObject);
begin
       tbpedido.cancel;
        tbpedido.last;
end;

procedure Tfbalcao.btncancelarClick(Sender: TObject);
begin
        tbpedido.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfbalcao.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Venda','Entre com o número:',ST);
         if BOK then
          if not tbpedido.Locate ('pedido',ST,[]) then
           ShowMessage ('Número não localizado!!!');
            ST := '';
end;

procedure Tfbalcao.tbpedidoAfterScroll(DataSet: TDataSet);
begin

           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbpedido.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbpedido.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfbalcao.tbpedidoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfbalcao.TotalizarExecute(Sender: TObject);
var
tot : real;
bookmark : tbookmarkstr;
begin


     tbitem.edit;
     tbitem.fields[9].asfloat := tbitem.fields[7].asfloat * tbitem.fields[8].asfloat;

     bookmark := tbitem.Bookmark;

     try
      tbitem.DisableControls;
      tot := 0;

    try
    tbitem.First;

    while not tbitem.Eof do begin

    tot := tot + tbitem.fields[9].asfloat;
    tbitem.next;
    end;
    finally

    tbitem.EnableControls;
    end;
    finally
    tbitem.Bookmark := bookmark;
    end;

    tbpedido.edit;
    tbpedido['total'] := tot;
    if editrecebido.text <>'' then
    tbpedido['troco'] := tbpedido.fields[23].asfloat - tbpedido.fields[7].asfloat;



end;

procedure Tfbalcao.preencherExecute(Sender: TObject);
var
prod : string;

begin
      tbproduto.open;
       if tbproduto.Locate('codigo',tbitem['codigo'],[]) then begin

if tbproduto['produto'] <> null then prod := tbproduto['produto'];
if tbproduto['descricao'] <> null then prod := prod + ' ' + tbproduto['descricao'];

        tbitem.edit;
         tbitem['nome'] := prod;
          tbitem['vrunit'] := tbproduto['vrvenda'];
            tbitem['un'] := tbproduto['unidade'];
           end else begin
        beep;
         showmessage('Este produto não foi cadastrado!!!');
          dbedit1.SetFocus;
          end;


end;

procedure Tfbalcao.tbitemNewRecord(DataSet: TDataSet);
begin
        tbitem['pedido'] := editcodped.Text;
        tbitem['operacao'] := tbpedido['operacao'];
        tbitem['data'] := tbpedido['data'];
        tbitem['fantasia'] := tbpedido['fantasia'];
end;

procedure Tfbalcao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfbalcao.DBRadioGroup1Exit(Sender: TObject);
begin

      tbitem.DisableControls;

    tbitem.First;

    while not tbitem.Eof do begin
    tbitem.edit;
    tbitem['operacao'] := tbpedido['operacao'];
    tbitem.post;
    tbitem.next;
    end;

    tbitem.EnableControls;


end;

procedure Tfbalcao.SpeedButton8Click(Sender: TObject);
var
bookmark : tbookmarkstr;

begin

///////////////////////////
      bookmark := tbpedido.Bookmark;

      tbpedido.Filter := 'pedido = ''' + EditCodPed.text + '''';
       tbpedido.Filtered := true;

        Application.CreateForm(Tfrpedido, frpedido);

  fmenu.logotipoExecute(self);
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedido.memo4.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');


          frpedido.quickvenda.previewmodal;
           frpedido.Release;
            tbpedido.Filtered := false;

          tbpedido.Bookmark := bookmark;
end;

procedure Tfbalcao.ExcluirExecute(Sender: TObject);
 var
 doc:string;

begin

        doc := tbpedido['pedido'];

        tbreceber.Filter:='docparcela = ''' + doc +'''';
         tbreceber.Filtered := true;

       tbreceber.Last;

       while tbreceber['docparcela'] <> null do begin
        tbreceber.delete;
         tbreceber.next;
           end;

        tbreceber.Filtered := false;
end;

procedure Tfbalcao.camposExecute(Sender: TObject);
begin
        tbreceber.insert;
        tbreceber['datavencimento'] := tbpedido['data'];
        tbreceber['dataemissao'] := tbpedido['data'];
        tbreceber['docparcela'] := tbpedido['pedido'];
        tbreceber['fantasia'] :='BALCÃO';
        tbreceber['numeropedido'] := tbpedido['pedido'];
        tbreceber['valortitulo'] := tbpedido['total'];
        tbreceber['valordocumento'] := tbpedido['total'];
        tbreceber.post;

end;

procedure Tfbalcao.avancarExecute(Sender: TObject);
begin
        tbpedido.next;
end;

procedure Tfbalcao.voltarExecute(Sender: TObject);
begin
        tbpedido.prior;
end;

procedure Tfbalcao.EditCodPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfbalcao.focoExecute(Sender: TObject);
begin
        it := it + 1;

        if it = 4 then it:=1;

        case it of

        1: editdtaem.setfocus;
        2: dbedit1.setfocus;
        3: dbgrid3.setfocus;
        end;

end;

procedure Tfbalcao.novoExecute(Sender: TObject);
begin

        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;
       tbpedido.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(pedido) as codigo from tbpedido');
            open;
         end;

        tbpedido.insert;
        if fmenu.query1['codigo'] <> null then
         tbpedido['pedido'] := fmenu.query1['codigo'] + 1
        else
        tbpedido['pedido']:='1';
        tbpedido['operacao']:='P';
        tbpedido['data']:=DateTostr(now);
        tbpedido['fantasia']:='BALCAO';

        st := '';

          fmenu.query1.close;
          dbedit1.SetFocus;

end;

procedure Tfbalcao.estoqueExecute(Sender: TObject);
var
tot: real;

begin

        with fmenu.Query1 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd)as entrada from tbentradaitem');
            sql.add (' where codigo = "'+ dbedit1.text + '" group by codigo, nome');
            open;
        end;

        with fmenu.Query2 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd) as saida from tbpedidoitem');
            sql.add (' where operacao="P" and codigo = "'+ dbedit1.text + '" group by codigo, nome');
            open;
        end;

        tot := (fmenu.query1.fields[2].asfloat - fmenu.query2.fields[2].asfloat);

            showmessage('ESTOQUE = ' + floattostr(tot) + ' ' + fmenu.query1['nome'] +'(S)');
end;

procedure Tfbalcao.formatarExecute(Sender: TObject);
begin

 (tbpedido.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
 (tbpedido.fieldbyname ('pedido') as tfloatfield).displayformat := '000000';
 (tbpedido.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('recebido') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('troco') as tfloatfield).displayformat := '###,##0.00';

 (tbitem.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbitem.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('qtd') as tfloatfield).displayformat := '00';

end;

procedure Tfbalcao.EditRecebidoExit(Sender: TObject);
begin
        tbpedido.Edit;
            if editrecebido.text <>'' then
         tbpedido['troco'] := tbpedido.fields[23].asfloat - tbpedido.fields[7].asfloat;
end;

procedure Tfbalcao.EditPrecoExit(Sender: TObject);
begin
        totalizarexecute(self);
end;

procedure Tfbalcao.EditQtdExit(Sender: TObject);
begin

         preencherexecute(self);
          totalizarexecute(self);
end;

procedure Tfbalcao.contaExecute(Sender: TObject);
begin
    if tbpedido['total']= null then begin
    showmessage('Não há valor para esta venda, verificar!!!');
    abort;
    end;


     tbreceber.open;

     if tbreceber.Locate ('docparcela',editcodped.text,[]) then
      if application.MessageBox('Já foi gerada conta  desta venda, subscrever?','Gerar Conta',4 + MB_ICONWARNING) = mryes then
       excluirexecute(self);
        camposexecute(self);

      tbreceber.close;

end;

procedure Tfbalcao.tbitemAfterScroll(DataSet: TDataSet);
 var
  pt, pn : String;
begin

    tbproduto.open;

     tbproduto.Locate('codigo',tbitem['codigo'],[]);
      if tbproduto['imagem'] <> null then begin
       pt := tbproduto['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
      tbproduto.close;

        pn := '';

        if TBITEM['NOME'] <> null then
         pn :=  tbitem['nome'];

         if tbitem['total'] <> null then
         pn := pn + '  Valor = '+ format('%n',[tbitem.fields[9].asfloat]);

         panel19.caption := pn;
end;

procedure Tfbalcao.FormShow(Sender: TObject);
begin
        tbpedido.Last;
end;

procedure Tfbalcao.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if key = vk_F12 then begin
         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='balcao';
           flistaproduto.table1.open;
            flistaproduto.showmodal;
              end;

       if key = vk_F3 then
        estoqueexecute(self);
end;

procedure Tfbalcao.novoitemExecute(Sender: TObject);
begin
       dbedit1.SetFocus;
        tbitem.Insert;

      btngravar.Enabled := true;
      btncancelar.Enabled := true;  

end;

procedure Tfbalcao.SpeedButton1Click(Sender: TObject);
begin
        novoitemexecute(self);
end;

procedure Tfbalcao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair do Pedido ao Fornecedor',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbpedido.edit;
          tbpedido.post;
           tbitem.edit;
            tbitem.post;
             canclose:=true;
              end;

         idno : begin
          tbpedido.cancel;
           tbitem.cancel;
            canclose:=true;
             end;

         idcancel :
           canclose:=false;
end;
end;

end;

procedure Tfbalcao.tbitemBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfbalcao.SpeedButton2Click(Sender: TObject);
begin
        if application.MessageBox('Apagar o ítem selecionado?','Esxcluir',4 + MB_ICONWARNING ) = mryes then begin
         tbitem.Delete;
          totalizarexecute(self);
           end;
end;

procedure Tfbalcao.btncontasClick(Sender: TObject);
begin
      tbreceber.Open;
      contaexecute(self);
      tbreceber.close;
      showmessage('Conta gerada !!!');

end;

end.



