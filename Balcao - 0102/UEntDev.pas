unit UEntDev;

interface

uses
  Windows, Messages, SysUtils, CLIPBRD, variants, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls,
  ToolWin, Buttons, ActnList;

type
  Tfentrada = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Panel3: TPanel;
    ScrollBox2: TScrollBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    tbentrada: TTable;
    tbitem: TTable;
    dsentrada: TDataSource;
    dsitem: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    ToolBar1: TToolBar;
    DBGrid2: TDBGrid;
    EditCodigo: TDBEdit;
    Label6: TLabel;
    ToolBar2: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel7: TPanel;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnnovo: TSpeedButton;
    btngravar: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label8: TLabel;
    tbfornecedor: TTable;
    Panel4: TPanel;
    tbproduto: TTable;
    ActionList1: TActionList;
    totalizar: TAction;
    preencher: TAction;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    GroupBox5: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    SpeedButton9: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    totalizar1: TAction;
    tbfiltro: TTable;
    dsfiltro: TDataSource;
    Panel13: TPanel;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    DBEdit8: TDBEdit;
    excluir: TAction;
    campos: TAction;
    conta: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    Label24: TLabel;
    tbfatura: TTable;
    dsfatura: TDataSource;
    tbpagar: TTable;
    foco: TAction;
    estoque: TAction;
    novograde: TAction;
    Panel15: TPanel;
    Panel16: TPanel;
    preencherfornecedor: TAction;
    fimagem: TAction;
    IMAGE1: TDBImage;
    RadioButton3: TRadioButton;
    Label14: TLabel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Bevel3: TBevel;
    Label17: TLabel;
    ComboBox3: TComboBox;
    btndelete: TSpeedButton;
    formatar: TAction;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure tbentradaAfterScroll(DataSet: TDataSet);
    procedure tbentradaBeforeEdit(DataSet: TDataSet);
    procedure tbitemNewRecord(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure preencherExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure totalizar1Execute(Sender: TObject);
    procedure tbitemAfterScroll(DataSet: TDataSet);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure excluirExecute(Sender: TObject);
    procedure camposExecute(Sender: TObject);
    procedure contaExecute(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure tbentradaAfterPost(DataSet: TDataSet);
    procedure focoExecute(Sender: TObject);
    procedure estoqueExecute(Sender: TObject);
    procedure novogradeExecute(Sender: TObject);
    procedure preencherfornecedorExecute(Sender: TObject);
    procedure tbentradaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure fimagemExecute(Sender: TObject);
    procedure IMAGE1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure tbfiltroAfterScroll(DataSet: TDataSet);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure ComboBox3DropDown(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure formatarExecute(Sender: TObject);
    procedure tbitemBeforeEdit(DataSet: TDataSet);
    procedure DBEdit8Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
  BOK : boolean;
  ST,tipo, loja: String;
    { Public declarations }
  end;

var
  fentrada: Tfentrada;

implementation

uses UnitRelatorioEntrada, ulistafornecedor, UnitMenu, ulistaproduto,
  UnitFornecedor, UnitProduto;


{$R *.DFM}

procedure Tfentrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tbentrada.close;
        tbitem.close;
        tbfatura.close;
end;

procedure Tfentrada.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


        if key = VK_F1 then
         Label6Click(Self);

        if key = vk_F12 then begin
         Application.CreateForm (Tflistafornecedor, flistafornecedor);
          flistafornecedor.table1.open;
           flistafornecedor.st :='entrada';
            flistafornecedor.show;
             end;

          if key = 13 then
           preencherfornecedorexecute(self);

end;

procedure Tfentrada.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F12 then begin
         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='entrada';
           flistaproduto.table1.open;
            flistaproduto.show;
             end;

        if key = vk_F4 then
        if image1.Visible = true then
         image1.Hide
        else
         fimagemexecute(self);

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

procedure Tfentrada.SpeedButton1Click(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfentrada.SpeedButton2Click(Sender: TObject);
begin
        tbentrada.edit;
         tbentrada.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfentrada.btnPrimeiroClick(Sender: TObject);
begin
        tbentrada.first;
end;

procedure Tfentrada.btnVoltarClick(Sender: TObject);
begin
        tbentrada.prior;
end;

procedure Tfentrada.btnAvancarClick(Sender: TObject);
begin
        tbentrada.Next;
end;

procedure Tfentrada.btnUltimoClick(Sender: TObject);
begin
        tbentrada.last;
end;

procedure Tfentrada.btncancelarClick(Sender: TObject);
begin
        tbentrada.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfentrada.Label2Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Entrada','Entre com o número da entrada:',ST);
         if BOK then
          if not tbentrada.Locate ('entrada',ST,[]) then
           ShowMessage ('Entrada não localizada !!!');
            ST := '';
end;

procedure Tfentrada.Label6Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Código de Fornecedor','Entre com o código do fornecedor:',ST);
         if BOK then
          if not tbentrada.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não localizado !!!');
            ST := '';
end;

procedure Tfentrada.Label7Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Nota','Entre com o número da nota:',ST);
         if BOK then
          if not tbentrada.Locate ('nota',ST,[]) then
           ShowMessage ('Nota não localizada !!!');
            ST := '';
end;

procedure Tfentrada.Label5Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Pedido','Entre com o nº do pedido:',ST);
         if BOK then
          if not tbentrada.Locate ('pedido',ST,[]) then
           ShowMessage ('Pedido não encontrado !!!');
            ST := '';
end;

procedure Tfentrada.Label8Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Nome Fantasia','Entre com o nome fantasia do fornecedor:',ST);
         if BOK then
          if not tbentrada.Locate ('fantasia',Uppercase(ST),[]) then
           ShowMessage ('Nome não localizado !!!');
            ST := '';
end;

procedure Tfentrada.tbentradaAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbentrada.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbentrada.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfentrada.tbentradaBeforeEdit(DataSet: TDataSet);
begin


       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfentrada.tbitemNewRecord(DataSet: TDataSet);
begin
        tbitem['entrada']:= dbedit1.text;
        tbitem['data']:= tbentrada['data'];
        tbitem['nota']:= dbedit6.text;
        tbitem['fantasia']:= tbentrada['fantasia'];
        tbitem['operacao']:= tbentrada['natureza'];
end;

procedure Tfentrada.DBGrid1ColExit(Sender: TObject);
begin



     if dbgrid1.selectedindex = 0 then
      preencherexecute (self);

          if dbgrid1.selectedindex = 0 then begin
          tbitem.edit;
          dbgrid1.Columns[1].Field.text := uppercase(dbgrid1.Columns[1].Field.text);
          end;

     if dbgrid1.selectedindex in [3,4] then
      totalizarexecute(self);

end;

procedure Tfentrada.FormActivate(Sender: TObject);
begin
   if pagecontrol1.ActivePageIndex = 0 then
    formatarexecute(self);

end;

procedure Tfentrada.totalizarExecute(Sender: TObject);
var
tot : real;
bookmark : tbookmarkstr;
begin

     tbitem.edit;
     tbitem.fields[10].asfloat := tbitem.fields[8].asfloat * tbitem.fields[9].asfloat;

     bookmark := tbitem.Bookmark;

     try
      tbitem.DisableControls;
      tot := 0;

    try
    tbitem.First;

    while not tbitem.Eof do begin

    tot := tot + tbitem.fields[10].asfloat;
    tbitem.next;
    end;
    finally

    tbitem.EnableControls;
    end;
    finally
    tbitem.Bookmark := bookmark;
    end;

    tbentrada.edit;
    tbentrada['total'] := tot;
    tbentrada.post;

end;

procedure Tfentrada.preencherExecute(Sender: TObject);
var
  prod:string;
begin

     tbproduto.open;
      tbproduto.Refresh;

       if tbproduto.Locate('codigo',tbitem['codigo'],[]) then begin

if tbproduto['produto'] <> null then prod := tbproduto['produto'];
if tbproduto['descricao'] <> null then prod := prod + ' ' + tbproduto['descricao'];


        tbitem.edit;

     tbitem['nome'] :=  prod;

         tbitem['vrunit'] := tbproduto['vrunitario'];
         tbitem['al'] := tbproduto['unidade'];
          dbgrid1.selectedindex := 3;
           end else begin
        beep;
        showmessage('Este produto não foi cadastrado!!!');
        dbgrid1.selectedindex := 0 ;
        end;
       tbproduto.close;
end;

procedure Tfentrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfentrada.DBGrid1Enter(Sender: TObject);
begin


        if (dbedit1.text = '') or
        (dbedit6.text = '' )or
        (tbentrada['fantasia'] = null) then begin
        showmessage('primeiramente, preencha os campos acima!!!');
        dbedit6.setfocus;
     end else begin

        keypreview := false;
        tbentrada.edit;
        tbentrada.post;
        btngravar.enabled := false;
        btncancelar.enabled := false;
        end;
end;

procedure Tfentrada.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfentrada.RadioButton1Click(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''E'' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''E''';
        tbfiltro.filtered := true;
        tipo := 'E';
        totalizar1execute(self);
end;

procedure Tfentrada.RadioButton2Click(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''D'' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''D''';
        tbfiltro.filtered := true;
        tipo := 'D';
        totalizar1execute(self);
end;

procedure Tfentrada.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit2.setfocus;
end;

procedure Tfentrada.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
        tbfiltro.Filtered := false;

        

        if radiobutton3.Checked = false then begin
        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + '''';
        end;

        if radiobutton3.Checked = true then
        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + '''';

        tbfiltro.filtered := true;
        totalizar1execute(self);
        end;
end;

procedure Tfentrada.PageControl1Change(Sender: TObject);
begin
        tbfiltro.filtered := false;

        if pagecontrol1.ActivePageIndex = 0 then begin
         tbitem.open;
          tbfiltro.close;
           keypreview := true;

        end else begin
        tbitem.close;
        tbfiltro.open;
        tbfiltro.filter := 'operacao = ''E''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
        keypreview := false;
        tipo := 'E';
        radiobutton1.Checked := true;
 (tbfiltro.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbfiltro.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbfiltro.fieldbyname ('qtd') as tfloatfield).displayformat := '00';

        end;

end;

procedure Tfentrada.SpeedButton9Click(Sender: TObject);
begin
         maskedit1.clear;
         maskedit2.clear;

        tbfiltro.Filtered := false;
        radiobutton3.Checked := true;
        tipo := 'T';
        
        totalizar1execute(self);

end;

procedure Tfentrada.totalizar1Execute(Sender: TObject);
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
    if tbfiltro['total'] <> null then
    tot := tot + tbfiltro.fields[10].asfloat;
    tbfiltro.next;
    end;
    finally

    tbfiltro.EnableControls;
    end;
    finally
    tbfiltro.Bookmark := bookmark;
    end;

        panel13.caption := 'Total: ' + format('%n', [tot]);


end;

procedure Tfentrada.tbitemAfterScroll(DataSet: TDataSet);
 var
  pt : String;
begin

     if image1.Visible = true then begin
         tbproduto.open;

     tbproduto.Locate('codigo',tbitem['codigo'],[]);
      if tbproduto['imagem'] <> null then begin
       pt := tbproduto['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile (extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
      tbproduto.close;
end;

        label1.Visible := tbitem['total'] <> null;
end;

procedure Tfentrada.DBRadioGroup1Exit(Sender: TObject);

begin


      tbitem.DisableControls;

    tbitem.First;

    while not tbitem.Eof do begin
    tbitem.edit;
    tbitem['operacao'] := tbentrada['natureza'];
    tbitem.post;
    tbitem.next;
    end;

    tbitem.EnableControls;



end;

procedure Tfentrada.SpeedButton8Click(Sender: TObject);
var
bookmark :TBookmarkstr;

begin

     bookmark := tbentrada.Bookmark;

      tbentrada.Filter := 'entrada = ''' + dbedit1.text + '''';
       tbentrada.Filtered := true;

        Application.CreateForm(tfrentrada, frentrada);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  frentrada.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frentrada.memo1.lines.loadfromfile (extractfilepath(paramstr(0)) + '\imagem\dado.txt');

          frentrada.quickentrada.previewmodal;
            frentrada.Release;
             tbentrada.Filtered := false;
              tbentrada.Bookmark := bookmark;
end;

procedure Tfentrada.novoExecute(Sender: TObject);
begin
        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;
       tbentrada.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(entrada) as codigo from tbentrada');
            open;
         end;

        tbentrada.insert;
        if fmenu.query1['codigo'] <> null then
         tbentrada['entrada'] := fmenu.query1['codigo'] + 1
        else
        tbentrada['entrada']:='1';
        tbentrada['natureza']:='E';
        tbentrada['data']:=DateTostr(now);
        dbedit6.setfocus;
        fmenu.query1.close;

end;

procedure Tfentrada.avancarExecute(Sender: TObject);
begin

        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then begin
        tbfiltro.filter := 'data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + '''';
        tbfiltro.filtered := true;
        end else
        tbfiltro.filtered := false;
        tipo := 'T';
        totalizar1execute(self);


end;

procedure Tfentrada.voltarExecute(Sender: TObject);
begin
        tbentrada.prior;
end;

procedure Tfentrada.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label2Click(Self);
end;

procedure Tfentrada.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label7Click(Self);
end;

procedure Tfentrada.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label5Click(Self);
end;

procedure Tfentrada.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label8Click(Self);
end;

procedure Tfentrada.excluirExecute(Sender: TObject);
var
 doc:string;

begin

        doc := tbentrada['nota'];

        tbpagar.Filter:='docparcela = ''' + doc +'''';
         tbpagar.Filtered := true;

       tbpagar.Last;

       while tbpagar['docparcela'] <> null do begin
        tbpagar.delete;
         tbpagar.next;
           end;

        tbpagar.Filtered := false;

end;

procedure Tfentrada.camposExecute(Sender: TObject);
begin

        tbpagar['dataemissao'] := tbentrada['data'];
        tbpagar['docparcela'] := tbentrada['nota'];
        tbpagar['codigo'] := tbentrada['codigo'];
        tbpagar['fantasia'] := tbentrada['fantasia'];
        tbpagar['nome'] := tbentrada['nome'];
        tbpagar['numeropedido'] := tbentrada['pedido'];
        tbpagar['valortitulo'] := tbentrada['total'];
        tbpagar['valordocumento'] := (tbentrada['total']/tbfatura['parcelas']);
        tbpagar['vrdesconto'] := (tbentrada['total']/tbfatura['parcelas']);
       // tbpagar['loja'] := loja;
        tbpagar.post;
end;

procedure Tfentrada.contaExecute(Sender: TObject);
var
 IT, qt : Integer;

begin

    if (tbfatura['descricao']= 'À VISTA') or (tbfatura['descricao']= 'APRES.') then begin
     tbpagar.insert;
      tbpagar['venc1'] := tbfatura['DESCRICAO'];
       camposexecute(self);

        end else begin


     it :=tbfatura['parcelas'];

   if it = 1 then begin
    tbpagar.insert;
     tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto1']);
       camposexecute(self);

       end else begin


     qt := 0;

    While qt < it do Begin

    tbpagar.insert;

    if qt = 0 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto1']);
    tbpagar['letra'] := 'A';

    end else if qt = 1 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto2']);
    tbpagar['letra'] := 'B';

    end else if qt = 2 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto3']);
    tbpagar['letra'] := 'C';


    end else if qt = 3 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto4']);
    tbpagar['letra'] := 'D';

    end else if qt = 4 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto5']);
    tbpagar['letra'] := 'E';

    end else if qt = 5 then begin
    tbpagar['datavencimento'] := (tbentrada['data'] + tbfatura['Cond.Pgto6']);
    tbpagar['letra'] := 'F';
    end;

    camposexecute(self);

    qt := qt  + 1 ;

    end;
    end;
    end;

end;

procedure Tfentrada.DBLookupComboBox1Click(Sender: TObject);
begin
    if tbentrada['total']= null then begin
    showmessage('Não há valor para esta entrada, verificar!!!');
    tbentrada.edit;
    tbentrada['Condfatura'] := null;
    abort;
    end;


     tbpagar.open;
     if tbpagar.Locate ('docparcela',dbedit6.text,[]) then begin
      if application.MessageBox('Já foi gerado conta (s) desta entrada, deseja subscrever?','Gerar Conta',4 + MB_ICONWARNING) = mryes then begin
        excluirexecute(self);
         contaexecute(self);
          end;
      end else

      if application.MessageBox('Tem certeza que deseja gerar conta(s) a pagar?','Gerar Conta',4 + MB_ICONWARNING) = mryes then begin
        excluirexecute(self);
         contaexecute(self);
          end;

      tbpagar.close;

end;

procedure Tfentrada.tbentradaAfterPost(DataSet: TDataSet);
begin

        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfentrada.focoExecute(Sender: TObject);
begin

        if image1.Visible= true then begin
         if dbgrid1.Focused = true then
          image1.SetFocus
         else
         dbgrid1.SetFocus;
        end else begin

        if dbgrid1.Focused = true then
                 dbedit2.setfocus
        else
                 dbgrid1.setfocus;
        end;         
end;
procedure Tfentrada.estoqueExecute(Sender: TObject);
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

procedure Tfentrada.novogradeExecute(Sender: TObject);
begin
        if dbgrid1.Focused = true then  begin
         tbitem.insert;
          dbgrid1.SelectedIndex := 0;
           end;
end;

procedure Tfentrada.preencherfornecedorExecute(Sender: TObject);
begin

          tbfornecedor.open;
          tbfornecedor.refresh;

               if tbfornecedor.Locate ('codigo',editcodigo.text,[]) then begin
               tbentrada.edit;
              tbentrada['fantasia'] := tbfornecedor['fantasia'];
             tbentrada['nome'] := tbfornecedor['fornecedor'];
            tbentrada['cgc'] := tbfornecedor['cgc'];
           tbentrada['fone'] := tbfornecedor['fone'];
           tbfornecedor.close;
          dbgrid1.setfocus;
         dbgrid1.selectedindex := 0;

          end else begin
          Showmessage('Não há nenhum fornecedor código: ' +  EditCodigo.text +' cadastrado !!!');
          editcodigo.setfocus;
          end;


end;

procedure Tfentrada.tbentradaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        ShowMessage('Esta nota já foi lançada !!!');
         tbentrada.cancel;
          abort;
end;

procedure Tfentrada.fimagemExecute(Sender: TObject);
 var
  pt : String;
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
     image1.show;
end;

procedure Tfentrada.IMAGE1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if image1.Width < 430 then begin
        if key = 107 then begin
         image1.width := image1.width + 10;
          image1.height := image1.height + 10;
           image1.left := image1.left - 5;
            image1.top := image1.top - 5;
           end;
           end;

        if image1.Width > 120 then begin
        if key = 109 then begin
         image1.width := image1.width - 10;
          image1.height := image1.height - 10;
           image1.left := image1.left + 5;
            image1.top := image1.top + 5;
             end;
              end;

        if key = 27 then begin
         image1.Hide;
          dbgrid1.setfocus;
           end;

end;

procedure Tfentrada.DBLookupComboBox2Click(Sender: TObject);
begin
      if tbfiltro['Fantasia'] <> null Then
       ST:= tbfiltro['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do fornecedor', St);
      if BOK then begin

        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + '''  and fantasia = ''' + UpperCase(st) + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and fantasia = ''' + UpperCase(st) + '''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
        end;

end;

procedure Tfentrada.DBLookupComboBox3Click(Sender: TObject);
begin
      if tbfiltro['codigo'] <> null Then
       ST:= tbfiltro['codigo'];

        BOK:= InputQuery ('Filtrar', 'Entre com o código do produto',st);
      if BOK then begin

        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + '''  and codigo = ''' + UpperCase(st) + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and codigo = ''' + UpperCase(st) + '''';
        tbfiltro.filtered := true;

        totalizar1execute(self);
        end;

end;

procedure Tfentrada.tbfiltroAfterScroll(DataSet: TDataSet);
 var
  pt : String;
begin

     if image1.Visible = true then begin
         tbproduto.open;

     tbproduto.Locate('codigo',tbitem['codigo'],[]);
      if tbproduto['imagem'] <> null then begin
       pt := tbproduto['imagem'] ;
       if fileexists (pt) then
        image1.Picture.LoadFromFile (pt);
        end else
      image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '\imagem\imagem.wmf');
      tbproduto.close;
end;


end;

procedure Tfentrada.ComboBox1DropDown(Sender: TObject);
begin
        with fmenu.Query1 do begin
         close;
          sql.Clear;
           sql.add ('select distinct fantasia from tbentradaitem order by fantasia');
            open;
             end;

        ComboBox1.items.Clear;

      fmenu.Query1.First;
      while not fmenu.Query1.Eof do begin
      if fmenu.Query1['fantasia'] <> null then
      combobox1.Items.Add (fmenu.Query1['fantasia']);
      fmenu.query1.Next;
      end;

      fmenu.Query1.Close;
end;

procedure Tfentrada.ComboBox2DropDown(Sender: TObject);
begin
        with fmenu.Query1 do begin
         close;
          sql.Clear;
           sql.add ('select distinct nome from tbentradaitem order by nome');
            open;
             end;

        ComboBox2.items.Clear;

      fmenu.Query1.First;
      while not fmenu.Query1.Eof do begin
      if fmenu.Query1['nome'] <> null then
      combobox2.Items.Add (fmenu.Query1['nome']);
      fmenu.query1.Next;
      end;

      fmenu.Query1.Close;
end;

procedure Tfentrada.ComboBox3DropDown(Sender: TObject);
begin
        with fmenu.Query1 do begin
         close;
          sql.Clear;
           sql.add ('select distinct CODIGO from tbentradaitem order by CODIGO');
            open;
             end;

        ComboBox3.items.Clear;

      fmenu.Query1.First;
      while not fmenu.Query1.Eof do begin
      if fmenu.Query1['codigo'] <> null then
      combobox3.Items.Add (fmenu.Query1['codigo']);
      fmenu.query1.Next;
      end;

      fmenu.Query1.Close;

end;

procedure Tfentrada.ComboBox1Change(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''' and fantasia=''' +  combobox1.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and fantasia=''' +  uppercase (combobox1.text) + '''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
end;

procedure Tfentrada.ComboBox2Change(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''' and nome=''' +  combobox2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and nome=''' +  uppercase(combobox2.text) + '''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
end;

procedure Tfentrada.ComboBox3Change(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''' and codigo=''' +  combobox3.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and codigo=''' +  combobox3.text + '''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
end;

procedure Tfentrada.ComboBox1Enter(Sender: TObject);
begin
        combobox2.clear;
         combobox3.clear;
end;

procedure Tfentrada.ComboBox2Enter(Sender: TObject);
begin
        combobox1.clear;
         combobox3.clear;
end;

procedure Tfentrada.ComboBox3Enter(Sender: TObject);
begin
        combobox2.clear;
         combobox1.clear;
end;

procedure Tfentrada.btndeleteClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja apagar enta entrada?','Deletar',4) = mrYes then begin

        tbitem.Last;

        while not tbitem.Bof do begin
         tbitem.delete;
          tbitem.prior;
           end;
         tbentrada.delete;

         end;
end;

procedure Tfentrada.FormShow(Sender: TObject);
begin
        tbentrada.Last;
end;

procedure Tfentrada.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cadastro de Cliente',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbentrada.edit;
          tbentrada.post;
           tbitem.edit;
            tbitem.post;
             canclose:=true;
              end;

         idno : begin
          tbentrada.cancel;
           tbitem.cancel;
            canclose:=true;
             end;

         idcancel :
           canclose:=false;
end;
end;

end;

procedure Tfentrada.formatarExecute(Sender: TObject);
begin
 (tbentrada.fieldbyname ('entrada') as tfloatfield).displayformat := '000000';
 (tbentrada.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
 (tbentrada.fieldbyname ('pedido') as tfloatfield).displayformat := '000000';
 (tbentrada.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbentrada.fieldbyname ('nota') as tfloatfield).displayformat := '000000';
 (tbentrada.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

 (tbitem.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbitem.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('qtd') as tfloatfield).displayformat := '00';

end;

procedure Tfentrada.tbitemBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfentrada.DBEdit8Exit(Sender: TObject);
begin
        tbitem.DisableControls;
        tbitem.First;

        while not tbitem.Eof do begin
        tbitem.Edit;
        tbitem['nota']:= dbedit6.text;
        tbitem['fantasia']:= tbentrada['fantasia'];
        tbitem['operacao']:= tbentrada['natureza'];
        tbitem.Next;
        end;

        tbitem.EnableControls;

end;

procedure Tfentrada.SpeedButton3Click(Sender: TObject);
begin
        Application.CreateForm(tfrentrada, frentrada);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  frentrada.image2.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frentrada.memo2.lines.loadfromfile (extractfilepath(paramstr(0)) + '\imagem\dado.txt');
     frentrada.ltotallista.caption :=  panel13.caption;
          frentrada.quickLISTA.previewmodal;
            frentrada.Release;

end;

end.
