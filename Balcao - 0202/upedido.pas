unit upedido;

interface

uses
  Windows, variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, Db, DBTables, StdCtrls, DBCtrls, Mask,
  Buttons, ToolWin, ActnList, OleServer, Word97, clipbrd;

type
  Tfpedido = class(TForm)
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
    SpeedButton8: TSpeedButton;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    tbcliente: TTable;
    tbproduto: TTable;
    tbvendedor: TTable;
    ActionList1: TActionList;
    Totalizar: TAction;
    preencher: TAction;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    formproduto: TAction;
    formimagem: TAction;
    Image1: TDBImage;
    tbfiltro: TTable;
    dsfiltro: TDataSource;
    totalizar1: TAction;
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
    Panel18: TPanel;
    SpeedButton13: TSpeedButton;
    itemnota: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel5: TPanel;
    GroupBox5: TGroupBox;
    Bevel2: TBevel;
    Label34: TLabel;
    Label35: TLabel;
    Bevel1: TBevel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel16: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel19: TPanel;
    itemfiltro: TAction;
    nota: TAction;
    DBGrid3: TDBGrid;
    saldo1: TAction;
    formatar1: TAction;
    btndelete: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton9: TSpeedButton;
    tbreceber: TTable;
    excluir: TAction;
    conta: TAction;
    tbfatura: TTable;
    campos: TAction;
    dsfatura: TDataSource;
    Panel20: TPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    VencA: TDBEdit;
    Label38: TLabel;
    Label10: TLabel;
    ValorA: TDBEdit;
    VencB: TDBEdit;
    Label18: TLabel;
    Panel4: TPanel;
    ValorB: TDBEdit;
    Label29: TLabel;
    Panel6: TPanel;
    VencC: TDBEdit;
    Label30: TLabel;
    ValorC: TDBEdit;
    Label31: TLabel;
    Label4: TLabel;
    Bevel6: TBevel;
    Panel8: TPanel;
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
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure saldoExecute(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure itemnotaExecute(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure itemfiltroExecute(Sender: TObject);
    procedure notaExecute(Sender: TObject);
    procedure saldo1Execute(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure formatar1Execute(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure excluirExecute(Sender: TObject);
    procedure contaExecute(Sender: TObject);
    procedure camposExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit2Exit(Sender: TObject);
    procedure tbitemBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
  BOK : boolean;
  St, tipo : String;
  it:integer;
    { Public declarations }
  end;

var
  fpedido: Tfpedido;

implementation

uses  UnitMenu, ulistaproduto,
UNota, UnitRelatorio, ulistacliente, UnitCliente, Extens;

{$R *.DFM}

procedure Tfpedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


        Tbpedido.Active:=False;
        TbItem.Active:=False;
        tbvendedor.close;
        tbfatura.close;
end;

procedure Tfpedido.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label13Click(Self);


        if key = vk_F12 then begin
         Application.CreateForm (tflistacliente, flistacliente);
          flistacliente.st := 'pedido';
           flistacliente.table1.open;
            flistacliente.show;
             end;

          if key = 13 then begin
           Key := 0;

          tbcliente.open;

               if tbcliente.Locate ('codigo',EditCodigo.text,[]) then begin
               tbpedido.edit;
               tbpedido['fantasia'] := tbcliente['nomefantasia'];
               tbpedido['nome'] := tbcliente['nome'];
               tbpedido['vendedor'] := tbcliente['vendedor'];
               tbpedido['endereco'] := tbcliente['endereco'];
               tbpedido['bairro'] := tbcliente['bairro'];
               tbpedido['municipio'] := tbcliente['cidade'];
               tbpedido['cep'] := tbcliente['cep'];
               tbpedido['uf'] := tbcliente['uf'];
               tbpedido['fone'] := tbcliente['fone1'];
               tbpedido['fax'] := tbcliente['fonefax'];
               tbpedido['cgc/cpf'] := tbcliente['cgc'];
               tbpedido['ie/rg'] := tbcliente['ie'];
               tbpedido['vendedor'] := tbcliente['vendedor'];
               tbpedido['email'] := tbcliente['email'];
               tbpedido['prazopgto'] := tbcliente['condpgto'];
               tbpedido['transportadora'] := tbcliente['transportadora'];

               tbcliente.close;
               dbgrid1.SetFocus;


          end else begin
          Showmessage('Não há nenhum cliente código: ' +  EditCodigo.text +' cadastrado !!!');
           editcodigo.setfocus;
          end;
          end;

end;

procedure Tfpedido.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfpedido.btngravarClick(Sender: TObject);
begin
        tbpedido.edit;
         tbpedido.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpedido.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfpedido.DBGrid1Enter(Sender: TObject);
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

procedure Tfpedido.btnPrimeiroClick(Sender: TObject);
begin
        tbpedido.first;
end;

procedure Tfpedido.btnVoltarClick(Sender: TObject);
begin
        tbpedido.prior;
end;

procedure Tfpedido.btnAvancarClick(Sender: TObject);
begin
        tbpedido.Next;
end;

procedure Tfpedido.btnUltimoClick(Sender: TObject);
begin
        tbpedido.last;
end;

procedure Tfpedido.btncancelarClick(Sender: TObject);
begin
        tbpedido.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpedido.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Pedido','Entre com o número:',ST);
         if BOK then
          if not tbpedido.Locate ('pedido',ST,[]) then
           ShowMessage ('Pedido não localizado!!!');
            ST := '';
end;

procedure Tfpedido.Label13Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Código de Cliente','Entre com o código:',ST);
         if BOK then
          if not tbpedido.Locate ('codigo',ST,[]) then
           ShowMessage ('Código não encontrado !!!');
            ST := '';
end;

procedure Tfpedido.Label14Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Cliente','Entre com o nome:',ST);
         if BOK then
          if not tbpedido.Locate ('fantasia',Uppercase(ST),[]) then
           ShowMessage ('Nome não localizado!!!');
            ST := '';
end;

procedure Tfpedido.tbpedidoAfterScroll(DataSet: TDataSet);
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

procedure Tfpedido.tbpedidoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfpedido.FormActivate(Sender: TObject);
begin
        if pagecontrol1.ActivePageIndex = 0 then
        formatarexecute(self);
end;

procedure Tfpedido.TotalizarExecute(Sender: TObject);
var
tot : real;
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

procedure Tfpedido.preencherExecute(Sender: TObject);
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

procedure Tfpedido.DBGrid1ColExit(Sender: TObject);
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

procedure Tfpedido.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfpedido.formprodutoExecute(Sender: TObject);
begin

         Application.CreateForm (Tflistaproduto, flistaproduto);
          flistaproduto.st :='pedido';
           flistaproduto.table1.open;
            flistaproduto.showmodal;



end;

procedure Tfpedido.formimagemExecute(Sender: TObject);
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

procedure Tfpedido.Image1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfpedido.tbitemNewRecord(DataSet: TDataSet);
begin
        tbitem['pedido'] := editcodped.text;
        tbitem['operacao'] := tbpedido['operacao'];
        tbitem['data'] := tbpedido['data'];
        tbitem['fantasia'] := dbedit2.Text;
end;

procedure Tfpedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfpedido.PageControl1Change(Sender: TObject);
begin
        tbfiltro.filtered := false;

        if pagecontrol1.ActivePageIndex = 0 then begin
         tbitem.open;
          tbfiltro.close;
            formatarexecute(self);

        end else begin
        tbitem.close;
        tbfiltro.open;
        tbfiltro.filter := 'operacao = ''P''';
        tbfiltro.filtered := true;
        totalizar1execute(self);
        tipo := 'P';
        radiobutton1.Checked := true;

        formatar1execute(self);
        end;
end;

procedure Tfpedido.RadioButton1Click(Sender: TObject);
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

procedure Tfpedido.RadioButton2Click(Sender: TObject);
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

procedure Tfpedido.totalizar1Execute(Sender: TObject);
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

procedure Tfpedido.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  begin

        if key = 13 then
        SpeedButton6click (self);


end;

procedure Tfpedido.SpeedButton5Click(Sender: TObject);
begin
      if tbfiltro['Fantasia'] <> null Then
       ST:= tbfiltro['Fantasia']
      else st := ''; 

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

procedure Tfpedido.SpeedButton11Click(Sender: TObject);
begin
      if tbfiltro['nome'] <> null Then
       ST:= tbfiltro['nome']
      else st := ''; 

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

procedure Tfpedido.SpeedButton6Click(Sender: TObject);
begin

        tbfiltro.Filtered := false;
        if (maskedit1.text <>'  /  /    ') and (maskedit2.text <>'  /  /    ') then
        tbfiltro.filter := 'operacao = ''' + tipo + ''' and data >=''' + maskedit1.text + ''' and data<=''' +  maskedit2.text + ''''
        else
        tbfiltro.filter := 'operacao = ''' + tipo + '''';
        tbfiltro.filtered := true;

        totalizar1execute(self);
end;

procedure Tfpedido.tbitemAfterScroll(DataSet: TDataSet);
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

procedure Tfpedido.DBRadioGroup1Exit(Sender: TObject);
var
bookmark : tbookmarkstr;
begin

     bookmark := tbitem.Bookmark;

     try
      tbitem.DisableControls;


    try
    tbitem.First;

    while not tbitem.Eof do begin
    tbitem.edit;
    tbitem['operacao'] := tbpedido['operacao'];
    tbitem.post;
    tbitem.next;
    end;
    finally

    tbitem.EnableControls;
    end;
    finally
    tbitem.Bookmark := bookmark;
    end;


end;

procedure Tfpedido.SpeedButton8Click(Sender: TObject);
var
pd:string;
bookmark : tbookmarkstr;
begin

  bookmark := tbpedido.Bookmark;

  fmenu.logotipoExecute(self);

        pd := (tbpedido['pedido']);

        tbpedido.Filter := 'pedido='''+ pd +'''';
         tbpedido.filtered := true;


        Application.CreateForm(tFrPedido, FrPedido);

         if tbpedido['Operacao'] = 'P' then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FrPedido.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedido.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

          FrPedido.quickpedido.previewmodal;

        end else   begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then  begin
  FrPedido.image3.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedido.memo3.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

    FrPedido.quickorcamento.previewmodal;
    end;

             FrPedido.release;
              tbpedido.Filtered := false;
               tbpedido.Bookmark := bookmark;
end;

procedure Tfpedido.avancarExecute(Sender: TObject);
begin
        tbpedido.next;
end;

procedure Tfpedido.voltarExecute(Sender: TObject);
begin
        tbpedido.prior;
end;

procedure Tfpedido.EditCodPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfpedido.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label14Click(Self);
end;

procedure Tfpedido.tbpedidoAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfpedido.focoExecute(Sender: TObject);
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

procedure Tfpedido.novoExecute(Sender: TObject);
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

        st := '';

          fmenu.query1.close;
           editcodigo.setfocus;

end;

procedure Tfpedido.estoqueExecute(Sender: TObject);
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

procedure Tfpedido.novogradeExecute(Sender: TObject);
begin
        if dbgrid1.Focused = true then begin
         tbitem.insert;
          dbgrid1.SelectedIndex := 0;
           end;
end;

procedure Tfpedido.DBLookupComboBox2Click(Sender: TObject);
begin

    if tbfatura['parcelas'] > 3 then begin
     showmessage('Você só pode gerar contas até 3 parcelas');
      abort;
       end;

    if tbpedido['total']= null then begin
    showmessage('Não há valor para este pedido, verificar!!!');
    abort;
    end;


     tbreceber.open;

     if tbreceber.Locate ('docparcela',editcodped.text,[]) then begin
      if application.MessageBox('Já foi gerada conta (s) deste pedido, subscrever?','Gerar Conta',4 + MB_ICONWARNING) = mryes then begin
        excluirexecute(self);
         contaexecute(self);
          end;
      end else

      if application.MessageBox('Tem certeza que deseja gerar conta(s) a receber?','Gerar Conta',4 + MB_ICONWARNING) = mryes then begin
        excluirexecute(self);
         contaexecute(self);
          end;

      tbreceber.close;

end;

procedure Tfpedido.formatarExecute(Sender: TObject);
begin

 (tbpedido.fieldbyname ('valorA') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('valorB') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('valorC') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
 (tbpedido.fieldbyname ('pedido') as tfloatfield).displayformat := '000000';
 (tbpedido.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbpedido.fieldbyname ('uf') as tstringfield).editmask := 'aa';
 (tbpedido.fieldbyname ('cep') as tstringfield).editmask := '99.999-999;0;_';
 (tbpedido.fieldbyname ('Cgc/cpf') as tstringfield).editmask := '99.999.999/9999-99;0;_';
 (tbpedido.fieldbyname ('fone') as tstringfield).editmask := '(99)9999-9999;0;_';
 (tbpedido.fieldbyname ('fax') as tstringfield).editmask := '(99)9999-9999;0;_';
 (tbpedido.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

 (tbitem.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('valorsaldo') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('total') as tfloatfield).displayformat := '###,##0.00';
 (tbitem.fieldbyname ('qtd') as tfloatfield).displayformat := '00';
 (tbitem.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbitem.fieldbyname ('entrega') as tdatetimefield).editmask := '99/99/9999';
end;

procedure Tfpedido.saldoExecute(Sender: TObject);

begin

      tbitem.Edit;
       tbitem['entrada'] := (tbitem.fields[23].asfloat + tbitem.fields[24].asfloat + tbitem.fields[25].asfloat + tbitem.fields[26].asfloat);
        tbitem['saldo'] := (tbitem.fields[7].asfloat - tbitem.fields[12].asfloat);
end;

procedure Tfpedido.DBEdit23Exit(Sender: TObject);
begin
        saldoexecute(self);
         totalizarexecute(self);
end;

procedure Tfpedido.SpeedButton12Click(Sender: TObject);

begin

  Application.CreateForm(Tfrpedido, frpedido);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  FrPedido.image2.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   FrPedido.memo2.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

    frpedido.quickpedido1.previewMODAL;
     FrPedido.Release;

end;

procedure Tfpedido.SpeedButton13Click(Sender: TObject);
begin

        notaexecute(self);

          itemnotaexecute(self);
           fnota.TotalizarExecute(self);
            fnota.tbvendedor.open;
             fnota.ShowModal;
              fnota.Release;


end;

procedure Tfpedido.itemnotaExecute(Sender: TObject);

begin

    try
       tbitem.First;

        while not tbitem.Eof do begin

        fnota.tbitem.insert;

        fnota.tbitem['qtd']:= tbitem['qtd'];
        fnota.tbitem['codigo']:= tbitem['codigo'];
        fnota.tbitem['nome']:= tbitem['nome'];
        fnota.tbitem['un']:= tbitem['un'];
        fnota.tbitem['vrunit']:= tbitem['vrunit'];
        tbitem.edit;
        tbitem.Next;
        end;

        fnota.tbitem.edit;
        fnota.tbitem.post;

    finally
    end;

    tbitem.EnableControls;

end;

procedure Tfpedido.SpeedButton7Click(Sender: TObject);
begin
        maskedit1.Clear;
        maskedit2.Clear;

        tbfiltro.Filtered := false;
        tbfiltro.filter := 'operacao = ''' + tipo + '''';
        tbfiltro.filtered := true;

        totalizar1execute(self);
end;

procedure Tfpedido.SpeedButton9Click(Sender: TObject);
begin
      tbfiltro.DisableControls;

     notaexecute(self);

          itemfiltroexecute(self);

           fnota.TotalizarExecute(self);
           fnota.ShowModal;
            fnota.Release;

end;

procedure Tfpedido.itemfiltroExecute(Sender: TObject);
begin

    try
       tbfiltro.First;

        while not tbfiltro.Eof do begin

        fnota.tbitem.insert;

        fnota.tbitem['qtd']:= tbfiltro['qtd'];
        fnota.tbitem['codigo']:= tbfiltro['codigo'];
        fnota.tbitem['nome']:= tbfiltro['nome'];
        fnota.tbitem['un']:= tbfiltro['un'];
        fnota.tbitem['vrunit']:= tbfiltro['vrunit'];
        tbfiltro.edit;
        tbfiltro['fatura'] :='';
        tbfiltro.Next;
        end;

        fnota.tbitem.edit;
        fnota.tbitem.post;


    finally
    end;

    tbfiltro.EnableControls;
end;

procedure Tfpedido.notaExecute(Sender: TObject);
begin

        Application.CreateForm(Tfnota, fnota);

         fnota.tbnota.TableName :='tbnota';
          fnota.tbitem.TableName :='tbnotaitem';

         fnota.tbnota.open;
          fnota.tbitem.open;
           fnota.novoexecute(self);
            fnota.tbnota['codigo'] := tbpedido['codigo'];
            fnota.tbnota['vencimentoA'] := tbpedido['vencimentoA'];
            fnota.tbnota['vencimentoB'] := tbpedido['vencimentoB'];
            fnota.tbnota['vencimentoC'] := tbpedido['vencimentoC'];
            fnota.tbnota['valorA'] := tbpedido['valorA'];
            fnota.tbnota['valorB'] := tbpedido['valorB'];
            fnota.tbnota['valorC'] := tbpedido['valorC'];

             fnota.pclienteexecute(self);
              fnota.tbnota['vrpedido'] := tbpedido['total'];
                fnota.tbnota.post;

end;

procedure Tfpedido.saldo1Execute(Sender: TObject);
begin
      tbfiltro.Edit;
       tbfiltro['entrada'] := (tbfiltro.fields[23].asfloat + tbfiltro.fields[24].asfloat + tbfiltro.fields[25].asfloat + tbfiltro.fields[26].asfloat);
        tbfiltro['saldo'] := (tbfiltro.fields[7].asfloat - tbfiltro.fields[12].asfloat);

end;

procedure Tfpedido.DBEdit35Exit(Sender: TObject);
begin
        saldo1execute(self);
         totalizar1execute(self);        
end;

procedure Tfpedido.formatar1Execute(Sender: TObject);
begin

 (tbfiltro.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('vrunit') as tfloatfield).displayformat := '###,##0.00';
 (tbfiltro.fieldbyname ('valorsaldo') as tfloatfield).displayformat := '###,##0.00';
 (tbfiltro.fieldbyname ('qtd') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('entrada') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('saldo') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('qtd1') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('qtd2') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('qtd3') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('qtd4') as tfloatfield).displayformat := '00';
 (tbfiltro.fieldbyname ('nota1') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('nota2') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('nota3') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('nota4') as tfloatfield).displayformat := '000000';
 (tbfiltro.fieldbyname ('data1') as tdatetimefield).editmask := '99/99/9999';
 (tbfiltro.fieldbyname ('data2') as tdatetimefield).editmask := '99/99/9999';
 (tbfiltro.fieldbyname ('data3') as tdatetimefield).editmask := '99/99/9999';
 (tbfiltro.fieldbyname ('data4') as tdatetimefield).editmask := '99/99/9999';

end;

procedure Tfpedido.DBEdit16Exit(Sender: TObject);
begin
        saldoexecute(self);
         totalizarexecute(self);
end;

procedure Tfpedido.btndeleteClick(Sender: TObject);
begin

    if Application.MessageBox('Deseja apagar ente pedido?','Deletar',4) = mrYes then begin

        tbitem.Last;

        while not tbitem.Bof do begin
         tbitem.delete;
          tbitem.prior;
           end;
         tbpedido.delete;

         end;
end;

procedure Tfpedido.excluirExecute(Sender: TObject);
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

procedure Tfpedido.contaExecute(Sender: TObject);
var
 IT, qt : Integer;

begin

    if (tbfatura['descricao']= 'À VISTA') or (tbfatura['descricao']= 'APRES.') then begin
     tbreceber.insert;
      tbreceber['venc1'] := tbfatura['DESCRICAO'];
       tbpedido['VencimentoA'] := tbfatura['DESCRICAO'];
        tbpedido['valorA'] := tbpedido['total'];
        camposexecute(self);

        end else begin

     it :=tbfatura['parcelas'];

   if it = 1 then begin
    tbreceber.insert;
     tbreceber['datavencimento'] := (tbpedido['data'] + tbfatura['Cond.Pgto1']);
      tbpedido['VencimentoA'] := (tbpedido['data'] + tbfatura['Cond.Pgto1']);
       tbpedido['valorA'] := tbpedido['total'];
      camposexecute(self);

       end else begin

     qt := 0;

    While qt < it do Begin

    tbreceber.insert;

    if qt = 0 then begin
    tbreceber['datavencimento'] := (tbpedido['data'] + tbfatura['Cond.Pgto1']);
    tbreceber['letra'] := 'A';
    tbpedido['VencimentoA'] := (tbpedido['data'] + tbfatura['Cond.Pgto1']);
    tbpedido['valorA'] := (tbpedido['total']/tbfatura['parcelas']);

    end else if qt = 1 then begin
    tbreceber['datavencimento'] := (tbpedido['data'] + tbfatura['Cond.Pgto2']);
    tbreceber['letra'] := 'B';
    tbpedido['VencimentoB'] := (tbpedido['data'] + tbfatura['Cond.Pgto2']);
    tbpedido['valorB'] := (tbpedido['total']/tbfatura['parcelas']);

    end else if qt = 2 then begin
    tbreceber['datavencimento'] := (tbpedido['data'] + tbfatura['Cond.Pgto3']);
    tbreceber['letra'] := 'C';
    tbpedido['VencimentoC'] := (tbpedido['data'] + tbfatura['Cond.Pgto3']);
    tbpedido['valorC'] := (tbpedido['total']/tbfatura['parcelas']);

    end;

    camposexecute(self);

    qt := qt  + 1 ;

    end;
    end;
    end;


end;

procedure Tfpedido.camposExecute(Sender: TObject);
begin
        tbreceber['dataemissao'] := tbpedido['data'];
        tbreceber['docparcela'] := tbpedido['pedido'];
        tbreceber['codigo'] := tbpedido['codigo'];
        tbreceber['fantasia'] := tbpedido['fantasia'];
        tbreceber['nome'] := tbpedido['nome'];
        tbreceber['numeropedido'] := tbpedido['pedido'];
        tbreceber['valortitulo'] := tbpedido['total'];
        tbreceber['valordocumento'] := (tbpedido['total']/tbfatura['parcelas']);
        tbreceber['vrdesconto'] := (tbpedido['total']/tbfatura['parcelas']);
        tbreceber['extenso']:=Extens.Extenso(tbpedido['total']/tbfatura['parcelas']);
        tbreceber['endereco'] := tbpedido['endereco'];
        tbreceber['cidade'] := tbpedido['municipio'];
        tbreceber['cep'] := tbpedido['cep'];
        tbreceber['cgc'] := tbpedido['cgc/cpf'];
        tbreceber['ie'] := tbpedido['ie/rg'];
        tbreceber['uf'] := tbpedido['uf'];
        tbreceber['fone'] := tbpedido['fone'];
        tbreceber.post;

end;

procedure Tfpedido.FormShow(Sender: TObject);
begin
        tbpedido.Last;
end;

procedure Tfpedido.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfpedido.DBEdit2Exit(Sender: TObject);
begin
        tbitem.DisableControls;
        tbitem.First;

        while not tbitem.Eof do begin
        tbitem.Edit;
        tbitem['fantasia'] := dbedit2.Text;
        tbitem.Next;
        end;

        tbitem.EnableControls;
end;

procedure Tfpedido.tbitemBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

end.



