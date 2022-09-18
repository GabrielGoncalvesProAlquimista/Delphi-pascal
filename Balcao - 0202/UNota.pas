unit UNota;

interface

uses
  Windows, Messages, SysUtils, Classes, variants, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Db, DBTables, ComCtrls,
  Buttons, ToolWin, ActnList, TeEngine, Series, TeeProcs, Chart, DbChart;

type
  Tfnota = class(TForm)
    TbNota: TTable;
    DSNota: TDataSource;
    tbitem: TTable;
    dsitem: TDataSource;
    ActionList1: TActionList;
    Formatar: TAction;
    Totalizar: TAction;
    PProduto: TAction;
    FormProduto: TAction;
    PCliente: TAction;
    Novo: TAction;
    avancar: TAction;
    voltar: TAction;
    foco: TAction;
    novograde: TAction;
    tbproduto: TTable;
    tbcliente: TTable;
    dsfatura: TDataSource;
    tbfatura: TTable;
    tbfiltro: TTable;
    dsfiltro: TDataSource;
    tbvendedor: TTable;
    dsvendedor: TDataSource;
    tbreceber: TTable;
    excluir: TAction;
    conta: TAction;
    campos: TAction;
    formatar1: TAction;
    totalizar1: TAction;
    estoque: TAction;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel10: TPanel;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    Panel12: TPanel;
    btngravar: TSpeedButton;
    Panel13: TPanel;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    Panel17: TPanel;
    Panel11: TPanel;
    SpeedButton8: TSpeedButton;
    Panel14: TPanel;
    btndelete: TSpeedButton;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    VencA: TDBEdit;
    ValorA: TDBEdit;
    VencB: TDBEdit;
    ValorB: TDBEdit;
    VencC: TDBEdit;
    ValorC: TDBEdit;
    Panel2: TPanel;
    Panel5: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label39: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    EditCodigo: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    EditNNota: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    GroupBox11: TGroupBox;
    Label37: TLabel;
    Label34: TLabel;
    Label1: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditObs: TDBEdit;
    Edit4: TDBEdit;
    Edit1: TDBEdit;
    Edit2: TDBEdit;
    Edit3: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox12: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label42: TLabel;
    Edit5: TDBEdit;
    Edit6: TDBEdit;
    Edit7: TDBEdit;
    Edit8: TDBEdit;
    Edit9: TDBEdit;
    Edit10: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormatarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure TbNotaAfterScroll(DataSet: TDataSet);
    procedure TbNotaBeforeEdit(DataSet: TDataSet);
    procedure TotalizarExecute(Sender: TObject);
    procedure PProdutoExecute(Sender: TObject);
    procedure FormProdutoExecute(Sender: TObject);
    procedure PClienteExecute(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NovoExecute(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label36Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure EditNNotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure TbNotaAfterPost(DataSet: TDataSet);
    procedure focoExecute(Sender: TObject);
    procedure novogradeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
    procedure excluirExecute(Sender: TObject);
    procedure contaExecute(Sender: TObject);
    procedure camposExecute(Sender: TObject);
    procedure formatar1Execute(Sender: TObject);
    procedure totalizar1Execute(Sender: TObject);
    procedure estoqueExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TbNotaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure tbitemNewRecord(DataSet: TDataSet);
    procedure btndeleteClick(Sender: TObject);
    procedure tbitemBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
  St, st1:String;
  BOK : Boolean;
  it : integer;
    { Public declarations }
  end;

var
  fnota: Tfnota;

implementation

uses ulistacliente, ulistaproduto, UnitMenu, UnitRelatorioNota, upedido,
  UnitCliente, Extens;






{$R *.DFM}

procedure Tfnota.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F12 then begin
         Application.CreateForm (Tflistacliente, flistacliente);
          flistacliente.table1.open;
           flistacliente.show;
            end;
end;

procedure Tfnota.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
                if key = vk_F12 then begin
         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.table1.open;
           flistaproduto.show;
            end;
end;

procedure Tfnota.DBGrid2Enter(Sender: TObject);
begin
        tbnota.edit;
         tbnota.post;
end;

procedure Tfnota.FormatarExecute(Sender: TObject);
begin
 (tbnota.fieldbyname ('nota') as tfloatfield).displayformat := '000000';
 (tbnota.fieldbyname ('emissao') as tdatetimefield).editmask := '99/99/9999';
 (tbnota.fieldbyname ('datasaida') as tdatetimefield).editmask := '99/99/9999';
 (tbnota.fieldbyname ('horasaida') as tdatetimefield).editmask := '99:99';
 (tbnota.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbnota.fieldbyname ('pesob') as tfloatfield).displayformat := '#0.00';
 (tbnota.fieldbyname ('pesol') as tfloatfield).displayformat := '#0.00';
 (tbnota.fieldbyname ('vrproduto') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('valorA') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('valorB') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('valorC') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('vrpedido') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('vrfrete') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('vrnota') as tfloatfield).displayformat := '###,##0.00';
 (tbnota.fieldbyname ('cep') as tstringfield).editmask := '99.999-999;0;_';
 (tbnota.fieldbyname ('fone/fax') as tstringfield).editmask := '(99)9999-9999;0;_';
 (tbnota.fieldbyname ('uf') as tstringfield).editmask := 'aa;0;_';
 (tbitem.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbitem.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('qtd') as tfloatfield).displayformat := '00';

end;

procedure Tfnota.FormActivate(Sender: TObject);
begin

        formatarexecute(self);
        
end;

procedure Tfnota.btnPrimeiroClick(Sender: TObject);
begin
        TbNota.first;
end;

procedure Tfnota.btnVoltarClick(Sender: TObject);
begin
        TbNota.prior;
end;

procedure Tfnota.btnAvancarClick(Sender: TObject);
begin
        TbNota.Next;
end;

procedure Tfnota.btnUltimoClick(Sender: TObject);
begin
        TbNota.last;
end;

procedure Tfnota.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);
         dbedit19.setfocus;
end;

procedure Tfnota.btngravarClick(Sender: TObject);
begin
        tbnota.edit;
         tbnota.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;

end;

procedure Tfnota.btncancelarClick(Sender: TObject);
begin
        tbnota.cancel;
          btnGravar.Enabled:=false;
          btncancelar.enabled:= false;
end;

procedure Tfnota.Label35Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Nota','Entre com o número da nota:',ST);
         if BOK then
          if not tbnota.Locate ('nota',ST,[]) then
           ShowMessage ('Nota não localizada!!!');
            ST := '';
end;

procedure Tfnota.TbNotaAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbnota.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbnota.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfnota.TbNotaBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfnota.TotalizarExecute(Sender: TObject);
var
tot : real;
bookmark : tbookmarkstr;
begin


     bookmark := tbitem.Bookmark;

     try
      tbitem.DisableControls;
      tot := 0;

    try
    tbitem.First;

    while not tbitem.Eof do begin
    tbitem.edit;
    tbitem['total'] := tbitem.fields[7].asfloat * tbitem.fields[8].asfloat;
    tot := tot + tbitem.fields[9].asfloat;
    tbitem.next;
    end;
    finally

    tbitem.EnableControls;
    end;
    finally
    tbitem.Bookmark := bookmark;
    end;

    tbnota.edit;
    tbnota['vrproduto'] := tot;
    tbnota['vrnota'] :=  (tbnota.fields[25].asfloat + tot);   // produto + frete
    tbnota.post;


end;

procedure Tfnota.PProdutoExecute(Sender: TObject);
   var
   prod:string;
begin
     
     tbproduto.open;
      tbproduto.Refresh;     

       if tbproduto.Locate('codigo',tbitem['codigo'],[]) then begin


if tbproduto['produto'] <> null then prod := tbproduto['produto'];
if tbproduto['descricao'] <> null then prod := prod + ' ' + tbproduto['descricao'];

        tbitem.edit;

              tbitem['nome'] := prod;

          tbitem['vrunit'] := tbproduto['vrunitario'];
           tbitem['un'] := tbproduto['unidade'];
//            dbgrid1.selectedindex := 3;
           end else begin
        beep;
         showmessage('Este produto não foi cadastrado!!!');
          end;



end;

procedure Tfnota.FormProdutoExecute(Sender: TObject);
begin
         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='nota';
           flistaproduto.table1.open;
            flistaproduto.show;
end;

procedure Tfnota.PClienteExecute(Sender: TObject);
begin

          tbcliente.open;

               if tbcliente.Locate ('codigo',EditCodigo.text,[]) then begin
               tbnota.edit;
               tbnota['fantasia'] := tbcliente['nomefantasia'];
               tbnota['nome'] := tbcliente['nome'];
               tbnota['endereco'] := tbcliente['endereco'];
               tbnota['bairro'] := tbcliente['bairro'];
               tbnota['municipio'] := tbcliente['cidade'];
               tbnota['cep'] := tbcliente['cep'];
               tbnota['uf'] := tbcliente['uf'];
               tbnota['fone/fax'] := tbcliente['fone'];
               tbnota['cgc'] := tbcliente['cgc'];
               tbnota['ie'] := tbcliente['ie'];
               tbnota['vendedor'] := tbcliente['vendedor'];
              tbnota['Fretoconta'] := '2';
               tbnota['transportadora'] := tbcliente['transportadora'];
               tbnota['especia'] :='CAIXAS';
               tbcliente.close;

          end else begin
          Showmessage('Não há nenhum cliente código: ' +  EditCodigo.text +' cadastrado !!!');
          end;

end;

procedure Tfnota.DBGrid1ColExit(Sender: TObject);
begin
        if dbgrid1.selectedindex = 0 then
         pprodutoExecute (self);

        if dbgrid1.selectedindex in [3,4] then
         totalizarExecute (self);

          if dbgrid1.selectedindex = 0 then begin
          tbitem.edit;
          dbgrid1.Columns[1].Field.text := uppercase(dbgrid1.Columns[1].Field.text);
          end;
end;

procedure Tfnota.DBGrid1Enter(Sender: TObject);
 begin
        keypreview := false;
        tbnota.edit;
        tbnota.post;
        btngravar.enabled := false;
        btncancelar.enabled := false;

end;

procedure Tfnota.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfnota.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F12 then
         formprodutoexecute (self);

            if key = 13 then
           dbgrid1.selectedindex := dbgrid1.selectedindex + 1
          else if key = 27 then begin
           tbitem.edit;
          tbitem.post;
         dbgrid1.selectedindex := dbgrid1.selectedindex - 1;
        end;

        if dbgrid1.SelectedIndex in [3,4] then
        if (key =38) or (key = 40) then
         tbitem.cancel;
end;

procedure Tfnota.NovoExecute(Sender: TObject);
begin

       TbNota.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(nota) as codigo from tbnota');
            open;
         end;

        TbNota.insert;
        if fmenu.query1['codigo'] <> null then
         TbNota['nota'] := fmenu.query1['codigo'] + 1
        else
        TbNota['nota']:='1';
        TbNota['S']:='X';
        TbNota['emissao']:=DateTostr(now);
        TbNota['Natureza']:='VENDAS';
        TbNota['CFOP']:='5.12';


        st := '';

          fmenu.query1.close;
        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;


end;

procedure Tfnota.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F12 then begin
         Application.CreateForm (Tflistacliente, flistacliente);
          flistacliente.st := 'nota';
           flistacliente.table1.open;
            flistacliente.show;
             end;

         if key = 13 then begin
          pclienteexecute(self);
           dbgrid1.SetFocus;
            end;
end;

procedure Tfnota.Label36Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Cliente','Entre com o código do cliente:',ST);
         if BOK then
          if not tbnota.Locate ('codigo',ST,[]) then
           ShowMessage ('Cliente não localizad0!!!');
            ST := '';
end;

procedure Tfnota.DBCheckBox1Click(Sender: TObject);
begin
       tbnota.edit;
        tbnota['S'] := ' ';
end;

procedure Tfnota.DBCheckBox2Click(Sender: TObject);
begin
       tbnota.edit;
        tbnota['E'] := ' ';
end;

procedure Tfnota.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfnota.avancarExecute(Sender: TObject);
begin
        tbnota.Next;
end;

procedure Tfnota.voltarExecute(Sender: TObject);
begin
        tbnota.prior;
end;

procedure Tfnota.EditNNotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label35Click(Self);
end;

procedure Tfnota.SpeedButton8Click(Sender: TObject);
Var
 NotaIni, NotaFin:String;
 bookmark : tbookmarkstr;
begin

        bookmark := tbnota.Bookmark;

     NotaIni := TBNOTA['NOTA'];

    if application.MessageBox('Imprimir apenas esta nota?','Imprimir',4)= mryes then begin

       tbnota.filtered := false;
        tbnota.filter := 'Nota = ''' + NotaIni + '''' ;
         tbnota.filtered := true;

     end else begin

     if InputQuery ('localizar...', 'Entre com o número inicial da Nota',NotaIni ) then
      if InputQuery ('localizar...', 'Entre com o número final da Nota',NotaFin ) then begin
       tbnota.filtered := false;
        tbnota.filter := 'Nota >= ''' + notaini + ''' and nota<= ''' + notafin +'''' ;
         tbnota.filtered := true;
   end;
   end;

        Application.CreateForm(tfrnota, frnota);

            frnota.QuickRep1.Previewmodal;
             tbnota.filtered := false;
              frnota.Release;
               tbnota.Bookmark := bookmark;


end;

procedure Tfnota.TbNotaAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfnota.focoExecute(Sender: TObject);

begin

        it := it + 1;

        if it = 7 then it:=1;

        case it of

        1: dbedit2.setfocus;
        2: editcodigo.setfocus;
        3: venca.setfocus;
        4: dbgrid1.setfocus;
        5: editobs.setfocus;
        6: edit5.setfocus;
        end;
end;

procedure Tfnota.novogradeExecute(Sender: TObject);
begin
        if dbgrid1.Focused = true then begin
         tbitem.insert;
          dbgrid1.SelectedIndex := 0;
           end;
end;

procedure Tfnota.FormClose(Sender: TObject; var Action: TCloseAction);
begin

         tbnota.edit;
           tbnota.Post;
            tbitem.edit;
             tbitem.post;


         //tbnota.close;
          tbitem.close;
           tbfatura.close;
            tbvendedor.close;
end;

procedure Tfnota.Edit1Exit(Sender: TObject);
begin
        totalizarexecute(self);
end;

procedure Tfnota.excluirExecute(Sender: TObject);
 var
 doc:string;

begin

        doc := tbnota['nota'];

        tbreceber.Filter:='docparcela = ''' + doc +'''';
         tbreceber.Filtered := true;

       tbreceber.Last;

       while tbreceber['docparcela'] <> null do begin
        tbreceber.delete;
         tbreceber.next;
           end;

        tbreceber.Filtered := false;


end;

procedure Tfnota.contaExecute(Sender: TObject);
var
 IT, qt : Integer;

begin

    if (tbfatura['descricao']= 'À VISTA') or (tbfatura['descricao']= 'APRES.') then begin
     tbreceber.insert;
      tbreceber['venc1'] := tbfatura['DESCRICAO'];
       tbnota['VencimentoA'] := tbfatura['DESCRICAO'];
        tbnota['valorA'] := tbnota['vrnota'];
        camposexecute(self);

        end else begin

     it :=tbfatura['parcelas'];

   if it = 1 then begin
    tbreceber.insert;
     tbreceber['datavencimento'] := (tbnota['emissao'] + tbfatura['Cond.Pgto1']);
      tbnota['VencimentoA'] := (tbnota['emissao'] + tbfatura['Cond.Pgto1']);
       tbnota['valorA'] := tbnota['vrnota'];
      camposexecute(self);

       end else begin

     qt := 0;

    While qt < it do Begin

    tbreceber.insert;

    if qt = 0 then begin
    tbreceber['datavencimento'] := (tbnota['emissao'] + tbfatura['Cond.Pgto1']);
    tbreceber['letra'] := 'A';
    tbnota['VencimentoA'] := (tbnota['emissao'] + tbfatura['Cond.Pgto1']);
    tbnota['valorA'] := (tbnota['Vrnota']/tbfatura['parcelas']);

    end else if qt = 1 then begin
    tbreceber['datavencimento'] := (tbnota['emissao'] + tbfatura['Cond.Pgto2']);
    tbreceber['letra'] := 'B';
    tbnota['VencimentoB'] := (tbnota['emissao'] + tbfatura['Cond.Pgto2']);
    tbnota['valorB'] := (tbnota['Vrnota']/tbfatura['parcelas']);

    end else if qt = 2 then begin
    tbreceber['datavencimento'] := (tbnota['emissao'] + tbfatura['Cond.Pgto3']);
    tbreceber['letra'] := 'C';
    tbnota['VencimentoC'] := (tbnota['emissao'] + tbfatura['Cond.Pgto3']);
    tbnota['valorC'] := (tbnota['Vrnota']/tbfatura['parcelas']);

    end;

    camposexecute(self);

    qt := qt  + 1 ;

    end;
    end;
    end;
end;

procedure Tfnota.camposExecute(Sender: TObject);
begin
        tbreceber['dataemissao'] := tbnota['emissao'];
        tbreceber['docparcela'] := tbnota['nota'];
        tbreceber['codigo'] := tbnota['codigo'];
        tbreceber['fantasia'] := tbnota['fantasia'];
        tbreceber['nome'] := tbnota['nome'];
        tbreceber['numeropedido'] := tbnota['nota'];
        tbreceber['valortitulo'] := tbnota['Vrnota'];
        tbreceber['valordocumento'] := (tbnota['Vrnota']/tbfatura['parcelas']);
        tbreceber['vrdesconto'] := (tbnota['Vrnota']/tbfatura['parcelas']);
        tbreceber['extenso']:=Extens.Extenso(tbnota['Vrnota']/tbfatura['parcelas']);
        tbreceber['endereco'] := tbnota['endereco'];
        tbreceber['cidade'] := tbnota['municipio'];
        tbreceber['cep'] := tbnota['cep'];
        tbreceber['cgc'] := tbnota['cgc'];
        tbreceber['ie'] := tbnota['ie'];
        tbreceber['uf'] := tbnota['uf'];
        tbreceber['fone'] := tbnota['fone/fax'];
        tbreceber.post;
end;

procedure Tfnota.formatar1Execute(Sender: TObject);
begin
 (tbfiltro.fieldbyname ('nota') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('emissao') as tdatetimefield).editmask := '99/99/9999';
 (tbfiltro.fieldbyname ('vrnota') as tfloatfield).displayformat := '###,##0.00';

end;

procedure Tfnota.totalizar1Execute(Sender: TObject);
var
tot : real;
bookmark : tbookmarkstr;
begin


     bookmark := tbfiltro.Bookmark;

     try
      tbfiltro.DisableControls;
      tot := 0;

    try
    tbfiltro.First;

    while not tbfiltro.Eof do begin
    tot := tot + tbfiltro.fields[28].asfloat;
    tbfiltro.next;
    end;
    finally

    tbfiltro.EnableControls;
    end;
    finally
    tbfiltro.Bookmark := bookmark;
    end;


end;

procedure Tfnota.estoqueExecute(Sender: TObject);
var
tot: real;
begin
       if dbgrid1.Focused = true then begin

        with fmenu.Query1 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd)as entrada from tbentradaitem');
            sql.add (' where codigo = "'+ dbgrid1.columns[0].field.text + '" group by codigo, nome');
            open;
        end;

        with fmenu.Query2 do begin
         close;
          sql.clear;
           sql.add ('select codigo, nome, sum(qtd) as saida from tbpedidoitem');
            sql.add (' where codigo = "'+ dbgrid1.columns[0].field.text + '" group by codigo, nome');
            open;
        end;

        tot := (fmenu.query1.fields[2].asfloat - fmenu.query2.fields[2].asfloat);

        if fmenu.query1['nome'] <> null then
            showmessage('ESTOQUE = ' + floattostr(tot) + ' ' + fmenu.query1['nome'])
        else
        showmessage('Estoque Vazio!!!');
end;
end;

procedure Tfnota.FormShow(Sender: TObject);
begin
        tbnota.Last;
end;

procedure Tfnota.TbNotaPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
        showmessage('Nota já emitida!!!');
         tbnota.cancel;
          abort;

end;

procedure Tfnota.tbitemNewRecord(DataSet: TDataSet);
begin
{        tbitem['nota'] := tbnota['nota'];
        tbitem['vendedor'] := tbnota['vendedor'];
        tbitem['data'] := tbnota['emissao'];
        tbitem['fantasia'] := tbnota['fantasia'];}
end;

procedure Tfnota.btndeleteClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja apagar esta nota?','Deletar',4) = mrYes then begin

        tbitem.Last;

        while not tbitem.Bof do begin
         tbitem.delete;
          tbitem.prior;
           end;
         tbnota.delete;

         end;
end;

procedure Tfnota.tbitemBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

end.


