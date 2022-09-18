unit upedidofornecedor;

interface

uses
  Windows, variants, Messages, SysUtils, clipbrd, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, Db, DBTables, StdCtrls, DBCtrls, Mask,
  Buttons, ToolWin, ActnList, OleServer, Word97;

type
  Tfpedidofornecedor = class(TForm)
    tbpedido: TTable;
    dspedido: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    tbitem: TTable;
    dsitem: TDataSource;
    Panel2: TPanel;
    ScrollBox2: TScrollBox;
    EditCodPed: TDBEdit;
    Label1: TLabel;
    EditDtaEm: TDBEdit;
    Label7: TLabel;
    EditCliente: TDBEdit;
    Label9: TLabel;
    EditTransp: TDBEdit;
    Label6: TLabel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Label13: TLabel;
    EditCodigo: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    ToolBar1: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    SpeedButton8: TSpeedButton;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    tbfornecedor: TTable;
    tbproduto: TTable;
    ActionList1: TActionList;
    Totalizar: TAction;
    preencher: TAction;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    formproduto: TAction;
    formimagem: TAction;
    Image1: TDBImage;
    GroupBox5: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label34: TLabel;
    Label35: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    tbfiltro: TTable;
    dsfiltro: TDataSource;
    Panel16: TPanel;
    totalizar1: TAction;
    SpeedButton6: TSpeedButton;
    Label23: TLabel;
    dsvendedor: TDataSource;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    foco: TAction;
    estoque: TAction;
    novograde: TAction;
    formatar: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    dbimage1: TImage;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel14: TPanel;
    Label12: TLabel;
    DBText2: TDBText;
    saldo: TAction;
    email: TAction;
    Query1: TQuery;
    SpeedButton1: TSpeedButton;
    btndelete: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure tbpedidoAfterScroll(DataSet: TDataSet);
    procedure tbpedidoBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure TotalizarExecute(Sender: TObject);
    procedure preencherExecute(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure formprodutoExecute(Sender: TObject);
    procedure formimagemExecute(Sender: TObject);
    procedure Image1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbitemNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure totalizar1Execute(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure tbitemAfterScroll(DataSet: TDataSet);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure EditCodPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbpedidoAfterPost(DataSet: TDataSet);
    procedure focoExecute(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure estoqueExecute(Sender: TObject);
    procedure novogradeExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure saldoExecute(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbitemBeforeEdit(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
  BOK : boolean;
  St, tipo : String;
  it:integer;
    { Public declarations }
  end;

var
  fpedidofornecedor: Tfpedidofornecedor;

implementation

uses ulistafornecedor, UnitMenu, ulistaproduto,
urpedidofornecedor;





{$R *.DFM}

procedure Tfpedidofornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


        Tbpedido.Active:=False;
        TbItem.Active:=False;
end;

procedure Tfpedidofornecedor.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label13Click(Self);


        if key = vk_F12 then begin
         Application.CreateForm (tflistafornecedor, flistafornecedor);
          flistafornecedor.st := 'pedido';
           flistafornecedor.table1.open;
            flistafornecedor.show;
             end;

          if key = 13 then begin
           Key := 0;

          tbfornecedor.open;

               if tbfornecedor.Locate ('codigo',EditCodigo.text,[]) then begin
               tbpedido.edit;
               tbpedido['fantasia'] := tbfornecedor['fantasia'];
               tbpedido['nome'] := tbfornecedor['fornecedor'];
               tbpedido['endereco'] := tbfornecedor['endereco'];
               tbpedido['bairro'] := tbfornecedor['bairro'];
               tbpedido['municipio'] := tbfornecedor['cidade'];
               tbpedido['cep'] := tbfornecedor['cep'];
               tbpedido['uf'] := tbfornecedor['uf'];
               tbpedido['fone'] := tbfornecedor['fone'];
               tbpedido['fax'] := tbfornecedor['fone_fax'];
               tbpedido['cgc/cpf'] := tbfornecedor['cgc'];
               tbpedido['ie/rg'] := tbfornecedor['inscricao'];
               tbpedido['prazopgto'] := tbfornecedor['condpgto'];
               tbpedido['email'] := tbfornecedor['email'];
               tbpedido['transportadora'] := tbfornecedor['transportadora'];
               tbfornecedor.close;
               dbedit12.SetFocus;


          end else begin
          Showmessage('Não há nenhum fornecedor código: ' +  EditCodigo.text +' cadastrado !!!');
           editcodigo.setfocus;
          end;
          end;

end;

procedure Tfpedidofornecedor.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfpedidofornecedor.btngravarClick(Sender: TObject);
begin
        tbpedido.edit;
         tbpedido.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpedidofornecedor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


        if key = vk_F12 then
         formprodutoexecute (self);

        if key = vk_f4 then begin
         if image1.Visible = false then
          formimagemexecute(self)
         else
          image1.Hide;
        end;

            if key = 13 then
           dbgrid1.selectedindex := dbgrid1.selectedindex + 1
          else if key = 27 then begin
          tbitem.edit;
         tbitem.post;
        dbgrid1.selectedindex := dbgrid1.selectedindex - 1;
       end;


        if dbgrid1.SelectedIndex in [4,5] then
        if (key =38) or (key = 40) then
         tbitem.cancel;


end;

procedure Tfpedidofornecedor.DBGrid1Enter(Sender: TObject);
begin

        tbpedido.edit;
        tbpedido.post;
        btngravar.enabled := false;
        btncancelar.enabled := false;

        if (tbpedido['fantasia']= null) then begin

        showmessage(' preencha o nome fantasia');
        editcodigo.SetFocus;
     end else

        keypreview := false;

end;

procedure Tfpedidofornecedor.btnPrimeiroClick(Sender: TObject);
begin
        tbpedido.first;
end;

procedure Tfpedidofornecedor.btnVoltarClick(Sender: TObject);
begin
        tbpedido.prior;
end;

procedure Tfpedidofornecedor.btnAvancarClick(Sender: TObject);
begin
        tbpedido.Next;
end;

procedure Tfpedidofornecedor.btnUltimoClick(Sender: TObject);
begin
        tbpedido.last;
end;

procedure Tfpedidofornecedor.btncancelarClick(Sender: TObject);
begin
        tbpedido.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpedidofornecedor.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Pedido','Entre com o número:',ST);
         if BOK then
          if not tbpedido.Locate ('pedido',ST,[]) then
           ShowMessage ('Pedido não localizado!!!');
            ST := '';
end;

procedure Tfpedidofornecedor.Label13Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Código de Cliente','Entre com o código:',ST);
         if BOK then
          if not tbpedido.Locate ('codigo',ST,[]) then
           ShowMessage ('Código não encontrado !!!');
            ST := '';
end;

procedure Tfpedidofornecedor.Label14Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Cliente','Entre com o nome:',ST);
         if BOK then
          if not tbpedido.Locate ('fantasia',Uppercase(ST),[]) then
           ShowMessage ('Nome não localizado!!!');
            ST := '';
end;

procedure Tfpedidofornecedor.tbpedidoAfterScroll(DataSet: TDataSet);
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

procedure Tfpedidofornecedor.tbpedidoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfpedidofornecedor.FormActivate(Sender: TObject);
begin
        if pagecontrol1.ActivePageIndex = 0 then
        formatarexecute(self);
end;

procedure Tfpedidofornecedor.TotalizarExecute(Sender: TObject);
var
tot: real;
bookmark : tbookmarkstr;
begin

     tbitem.edit;
     // qtd * vrunit
     tbitem['total'] := tbitem.fields[7].asfloat * tbitem.fields[8].asfloat;

     bookmark := tbitem.Bookmark;

     try
      tbitem.DisableControls;
      tot := 0;

    try
    tbitem.First;

    while not tbitem.Eof do begin

    tot := tot + tbitem.fields[9].asfloat; // total
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
    tbpedido.post;



end;

procedure Tfpedidofornecedor.preencherExecute(Sender: TObject);
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
            dbgrid1.selectedindex := 3;
           end else begin
        beep;
         showmessage('Este produto não foi cadastrado!!!');
          end;


end;

procedure Tfpedidofornecedor.DBGrid1ColExit(Sender: TObject);
begin
        if dbgrid1.selectedindex = 0 then
         preencherExecute (self);


        if dbgrid1.selectedindex in [4,3] then begin
         saldoexecute(self);
          totalizarExecute (self);
           end;

          if dbgrid1.selectedindex = 0 then begin
           tbitem.edit;
            dbgrid1.Columns[1].Field.text := uppercase(dbgrid1.Columns[1].Field.text);
             end;
end;

procedure Tfpedidofornecedor.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfpedidofornecedor.formprodutoExecute(Sender: TObject);
begin

         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='pedidofornecedor';
           flistaproduto.table1.open;
            flistaproduto.showmodal;



end;

procedure Tfpedidofornecedor.formimagemExecute(Sender: TObject);
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

procedure Tfpedidofornecedor.Image1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfpedidofornecedor.tbitemNewRecord(DataSet: TDataSet);
begin
        tbitem['pedido'] := editcodped.text;
        tbitem['operacao'] := tbpedido['operacao'];
        tbitem['data'] := tbpedido['data'];
        tbitem['fantasia'] := tbpedido['fantasia'];
        end;

procedure Tfpedidofornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfpedidofornecedor.PageControl1Change(Sender: TObject);
begin
        tbfiltro.filtered := false;

        if pagecontrol1.ActivePageIndex = 0 then begin
         tbitem.open;
          tbfiltro.close;
           keypreview := true;
            formatarexecute(self);
            
        end else begin
        tbitem.close;
        tbfiltro.open;
        tbfiltro.filter := 'operacao = ''P''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
        keypreview := false;
        tipo := 'P';
        radiobutton1.Checked := true;
 (tbfiltro.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbfiltro.fieldbyname ('qtd') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('TOTAL') as tfloatfield).displayformat := '###,##0.00';
        end;
end;

procedure Tfpedidofornecedor.RadioButton1Click(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''P'' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''P''';
        tbfiltro.filtered := true;
        tipo := 'P';
        totalizar1execute(self);
end;

procedure Tfpedidofornecedor.RadioButton2Click(Sender: TObject);
begin
        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''O'' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''O''';
        tbfiltro.filtered := true;
        tipo := 'O';
        totalizar1execute(self);
end;

procedure Tfpedidofornecedor.totalizar1Execute(Sender: TObject);
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

    tot := tot + tbfiltro.fields[9].asfloat; // total
    tbfiltro.next;
    end;
    finally

    tbfiltro.EnableControls;
    end;
    finally
    tbfiltro.Bookmark := bookmark;
    end;

        panel16.caption := 'Total: ' + format('%n', [tot]);


end;

procedure Tfpedidofornecedor.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit2.setfocus;
end;

procedure Tfpedidofornecedor.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  begin

        if key = 13 then
        SpeedButton6click (self);


end;

procedure Tfpedidofornecedor.SpeedButton5Click(Sender: TObject);
begin
      if tbfiltro['Fantasia'] <> null Then
       ST:= tbfiltro['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do cliente', St);
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

procedure Tfpedidofornecedor.SpeedButton11Click(Sender: TObject);
begin
      if tbfiltro['nome'] <> null Then
       ST:= tbfiltro['nome'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do produto', St);
      if BOK then begin

        tbfiltro.Filtered := false;

        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + '''  and nome = ''' + st + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and nome = ''' + st + '''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
        end;

end;

procedure Tfpedidofornecedor.SpeedButton6Click(Sender: TObject);
begin



        tbfiltro.Filtered := false;
        if (maskedit1.Text <> '  /  /    ') or (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + '''';
        tbfiltro.filtered := true;

        totalizar1execute(self);
end;

procedure Tfpedidofornecedor.tbitemAfterScroll(DataSet: TDataSet);
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

procedure Tfpedidofornecedor.DBRadioGroup1Exit(Sender: TObject);
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

procedure Tfpedidofornecedor.SpeedButton8Click(Sender: TObject);
var
pd:string;
bookmark : tbookmarkstr;

begin

         bookmark := tbpedido.bookmark;

pd := (tbpedido['pedido']);

       tbpedido.Filtered := false;
        tbpedido.Filter := 'pedido='''+ pd +'''';
         tbpedido.filtered := true;


        Application.CreateForm(tFrPedidoFornecedor, FrPedidoFornecedor);

  fmenu.logotipoExecute(self);
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FrPedidoFornecedor.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedidoFornecedor.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

         if tbpedido['Operacao'] = 'P' then begin
          FrPedidoFornecedor.lped.caption := 'X';
           FrPedidoFornecedor.lcotacao.caption := '';
            end else  begin
          FrPedidoFornecedor.lped.caption := '';
           FrPedidoFornecedor.lcotacao.caption := 'X';
            end;

            FrPedidoFornecedor.quickpedido.previewmodal;
             FrPedidoFornecedor.Release;
              tbpedido.Filtered := false;

              tbpedido.Bookmark := bookmark;
end;

procedure Tfpedidofornecedor.avancarExecute(Sender: TObject);
begin
        tbpedido.next;
end;

procedure Tfpedidofornecedor.voltarExecute(Sender: TObject);
begin
        tbpedido.prior;
end;

procedure Tfpedidofornecedor.EditCodPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfpedidofornecedor.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label14Click(Self);
end;

procedure Tfpedidofornecedor.tbpedidoAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfpedidofornecedor.focoExecute(Sender: TObject);
begin

        if image1.Visible= true then begin
         if dbgrid1.Focused = true then
          image1.SetFocus
         else
         dbgrid1.SetFocus;
        end else begin

        it := it + 1;

        if it = 3 then it:=1;

        case it of

        1: editcodped.setfocus;
        2: dbgrid1.setfocus;
        end;
        end;

end;

procedure Tfpedidofornecedor.novoExecute(Sender: TObject);
begin

        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;
       tbpedido.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(pedido) as codigo from tbpedidofornecedor');
            open;
         end;

        tbpedido.insert;
        if fmenu.query1['codigo'] <> null then
         tbpedido['pedido'] := fmenu.query1['codigo'] + 1
        else
        tbpedido['pedido']:='1';
        tbpedido['operacao']:='P';
        tbpedido['data']:=DateTostr(now);

        st := '';

          fmenu.query1.close;
           editcodigo.setfocus;

end;

procedure Tfpedidofornecedor.estoqueExecute(Sender: TObject);
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

procedure Tfpedidofornecedor.novogradeExecute(Sender: TObject);
begin
        if dbgrid1.Focused = true then begin
         tbitem.insert;
          dbgrid1.SelectedIndex := 0;
           end;
end;

procedure Tfpedidofornecedor.formatarExecute(Sender: TObject);
begin
 (tbpedido.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
 (tbpedido.fieldbyname ('pedido') as tfloatfield).displayformat := '000000';
 (tbpedido.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('uf') as tstringfield).editmask := 'aa;0;_';
 (tbpedido.fieldbyname ('cep') as tstringfield).editmask := '99.999-999;0;_';
 (tbpedido.fieldbyname ('fone') as tstringfield).editmask := '(99)9999-9999;0;_';
 (tbpedido.fieldbyname ('fax') as tstringfield).editmask := '(99)9999-9999;0;_';
 (tbpedido.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

 (tbitem.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('valorsaldo') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('qtd') as tfloatfield).displayformat := '00';
 (tbitem.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
end;

procedure Tfpedidofornecedor.saldoExecute(Sender: TObject);

begin

      tbitem.Edit;
       tbitem['entrada'] := (tbitem.fields[23].asfloat + tbitem.fields[24].asfloat + tbitem.fields[25].asfloat + tbitem.fields[26].asfloat);
        tbitem['saldo'] := (tbitem.fields[7].asfloat - tbitem.fields[12].asfloat);
end;

procedure Tfpedidofornecedor.DBEdit23Exit(Sender: TObject);
begin
        saldoexecute(self);
         totalizarexecute(self);
end;

procedure Tfpedidofornecedor.SpeedButton12Click(Sender: TObject);
begin
        Application.CreateForm(tFrPedidoFornecedor, FrPedidoFornecedor);

  fmenu.logotipoExecute(self);
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FrPedidoFornecedor.image2.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedidoFornecedor.memo2.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

         FrPedidoFornecedor.ltotal.caption := panel16.Caption;
          FrPedidoFornecedor.quicklista.previewmodal;
           FrPedidoFornecedor.Release;

end;

procedure Tfpedidofornecedor.SpeedButton1Click(Sender: TObject);
begin
        maskedit1.Clear;
        maskedit2.Clear;

        tbfiltro.Filtered := false;
        tbfiltro.filter := 'operacao = ''' + tipo + '''';
        tbfiltro.filtered := true;

        totalizar1execute(self);


end;

procedure Tfpedidofornecedor.btndeleteClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja apagar este pedido?','Deletar',4) = mrYes then begin

        tbitem.Last;

        while not tbitem.Bof do begin
         tbitem.delete;
          tbitem.prior;
           end;
         tbpedido.delete;

         end;
end;

procedure Tfpedidofornecedor.FormShow(Sender: TObject);
begin
        tbpedido.Last;
end;

procedure Tfpedidofornecedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
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

procedure Tfpedidofornecedor.tbitemBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfpedidofornecedor.DBEdit2Exit(Sender: TObject);
begin

        tbitem.DisableControls;
        tbitem.First;

        while not tbitem.Eof do begin
        tbitem.Edit;
        tbitem['operacao'] := tbpedido['operacao'];
        tbitem['fantasia'] := tbpedido['fantasia'];
        tbitem.Next;
        end;

        tbitem.EnableControls;
end;

end.



