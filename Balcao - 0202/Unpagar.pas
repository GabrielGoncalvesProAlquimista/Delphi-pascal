unit Unpagar;

interface

uses
  Windows, Messages, SysUtils, variants, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, DBTables, Mask, CLIPBRD, StdCtrls, Grids, DBGrids, Buttons, ToolWin,
  ComCtrls, ExtCtrls, DBCtrls;

type
  Tfpagar = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox: TScrollBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label36: TLabel;
    EditData_Vencimento: TDBEdit;
    EditValor_Titulo: TDBEdit;
    EditNumero_Pedido: TDBEdit;
    EditCartorio: TDBEdit;
    EditCod_FAT: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label30: TLabel;
    Label11: TLabel;
    EditDocParcela: TDBEdit;
    EditCod_Cliente: TDBEdit;
    EditData_Emissao: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel6: TPanel;
    Panel4: TPanel;
    btnnovo: TSpeedButton;
    Panel7: TPanel;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label29: TLabel;
    Edit1: TEdit;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    ToolBar2: TToolBar;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label34: TLabel;
    Label35: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Panel9: TPanel;
    dspagar: TDataSource;
    tbpagar: TTable;
    tbfornecedor: TTable;
    ActionList1: TActionList;
    totalizar: TAction;
    DBEdit4: TDBEdit;
    Label37: TLabel;
    DBEdit5: TDBEdit;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    foco: TAction;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    MemoInstruc: TDBMemo;
    DBComboBox1: TDBComboBox;
    EditCod_Agencia: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Bevel1: TBevel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    preencherdornecedor: TAction;
    procedure PageControl1Change(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure tbpagarAfterScroll(DataSet: TDataSet);
    procedure tbpagarBeforeEdit(DataSet: TDataSet);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure totalizarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure novoExecute(Sender: TObject);
    procedure EditDocParcelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCod_ClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure tbpagarAfterPost(DataSet: TDataSet);
    procedure focoExecute(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure EditCartorioChange(Sender: TObject);
    procedure EditCod_FATChange(Sender: TObject);
    procedure EditCartorioExit(Sender: TObject);
    procedure EditCod_FATExit(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure preencherdornecedorExecute(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  bok:boolean;
  st:string;
  tot : real;
    { Public declarations }
  end;

var
  fpagar: Tfpagar;

implementation

uses UnitMenu, UnitRelatorioPagar, ulistafornecedor;

{$R *.DFM}

procedure Tfpagar.PageControl1Change(Sender: TObject);
begin
        tbpagar.filtered := false;

        if PageControl1.ActivePageIndex = 1 then
         keypreview := false
        else begin
        tbpagar.IndexFieldNames := 'docparcela';
        keypreview := true;
        end;
end;

procedure Tfpagar.btnPrimeiroClick(Sender: TObject);
begin
        tbpagar.first;
end;

procedure Tfpagar.btnVoltarClick(Sender: TObject);
begin
        tbpagar.Prior;
end;

procedure Tfpagar.btnAvancarClick(Sender: TObject);
begin
        tbpagar.Next;
end;

procedure Tfpagar.btnUltimoClick(Sender: TObject);
begin
        tbpagar.last;
end;

procedure Tfpagar.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);

end;

procedure Tfpagar.btngravarClick(Sender: TObject);
begin
        tbpagar.edit;
         tbpagar.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpagar.btncancelarClick(Sender: TObject);
begin
        tbpagar.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfpagar.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Documento','Digite aqui, o documento a ser localizado:',ST);
         if BOK then
          if not tbpagar.Locate ('DocParcela',uppercase(ST),[]) then
           ShowMessage ('Documento não localizado !!!');
            ST := '';
end;

procedure Tfpagar.Label2Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Código','Digite aqui, o código a ser localizado:',ST);
         if BOK then
          if not tbpagar.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não localizado !!!');
            ST := '';
end;

procedure Tfpagar.Label11Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Cliente','Digite aqui, o nome a ser localizado:',ST);
         if BOK then
          if not tbpagar.Locate ('fantasia',ST,[]) then
           ShowMessage ('Nome não localizado !!!');
            ST := '';
end;

procedure Tfpagar.FormActivate(Sender: TObject);
begin
 (tbpagar.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbpagar.fieldbyname ('dataemissao') as tdatetimefield).editmask := '99/99/9999';
 (tbpagar.fieldbyname ('datavencimento') as tdatetimefield).editmask := '99/99/9999';
 (tbpagar.fieldbyname ('datapagamento') as tdatetimefield).editmask := '99/99/9999';
 (tbpagar.fieldbyname ('numeropedido') as tfloatfield).displayformat := '000000';
 (tbpagar.fieldbyname ('valortitulo') as tfloatfield).displayformat := '###,##0.00';
 (tbpagar.fieldbyname ('valordocumento') as tfloatfield).displayformat := '###,##0.00';
 (tbpagar.fieldbyname ('VrDesconto') as tfloatfield).displayformat := '###,##0.00';
 (tbpagar.fieldbyname ('docparcela') as tfloatfield).displayformat := '000000';


end;

procedure Tfpagar.Edit1Change(Sender: TObject);
begin
        tbpagar.IndexFieldNames :='DocParcela'; 
         tbpagar.findnearest([edit1.text]);

end;

procedure Tfpagar.tbpagarAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbpagar.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbpagar.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfpagar.tbpagarBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfpagar.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then begin
         tbpagar.Filtered := false;
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + '''';
         tbpagar.filtered := true;
         totalizarexecute(self);
         end;

        if key = 27 then
         maskedit1.setfocus;         
end;

procedure Tfpagar.totalizarExecute(Sender: TObject);
var
bookmark : tbookmarkstr;
begin

     bookmark := tbpagar.Bookmark;

     try
      tbpagar.DisableControls;
      tot := 0;

    try
    tbpagar.First;

    while not tbpagar.Eof do begin

    tot := tot + tbpagar.fields[15].asfloat;
    tbpagar.next;
    end;
    finally

    tbpagar.EnableControls;
    end;
    finally
    tbpagar.Bookmark := bookmark;
    panel9.caption := 'Total: ' + format('%n',[tot]);
    end;


end;

procedure Tfpagar.SpeedButton1Click(Sender: TObject);
begin
       tbpagar.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + ''' and Datapagamento>''01/01/1990'''
          else
         tbpagar.Filter:='datapagamento>''01/01/1990''';
        tbpagar.filtered:=True;
       totalizarexecute(self);
end;

procedure Tfpagar.SpeedButton2Click(Sender: TObject);
begin
       tbpagar.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + ''' and Datapagamento < ''01/01/1990'''
          else
         tbpagar.Filter:='datapagamento <''01/01/1990''';
        tbpagar.filtered:=True;
       totalizarexecute(self);
end;

procedure Tfpagar.SpeedButton3Click(Sender: TObject);
begin
      if tbpagar['Fantasia'] <> null Then
       ST:= tbpagar['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do fornecedor', St);
      if BOK then begin

       tbpagar.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''''
          else
         tbpagar.Filter:='fantasia = ''' + UpperCase(st) + '''';
        tbpagar.filtered:=True;
       totalizarexecute(self);
       end;

end;

procedure Tfpagar.SpeedButton4Click(Sender: TObject);
begin
     if tbpagar['Fantasia'] <> null Then
       ST:= tbpagar['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do fornecedor', St);
      if BOK then begin

       tbpagar.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''' and datapagamento > ''01/01/1900'''
          else
         tbpagar.Filter:='fantasia = ''' + UpperCase(st) + ''' and datapagamento > ''01/01/1900''';
        tbpagar.filtered:=True;
       totalizarexecute(self);
       end;
end;

procedure Tfpagar.SpeedButton6Click(Sender: TObject);
begin
      if tbpagar['Fantasia'] <> null Then
       ST:= tbpagar['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do fornecedor', St);
      if BOK then begin

       tbpagar.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbpagar.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''' and datapagamento < ''01/01/1900'''
          else
         tbpagar.Filter:='fantasia = ''' + UpperCase(st) + ''' and datapagamento < ''01/01/1900''';
        tbpagar.filtered:=True;
       totalizarexecute(self);
       end;
end;

procedure Tfpagar.SpeedButton8Click(Sender: TObject);
begin
       tbpagar.filtered := false;
        Maskedit1.Clear;
         maskedit2.clear;
          totalizarexecute(self);
end;

procedure Tfpagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfpagar.novoExecute(Sender: TObject);
begin

        btngravar.enabled := true;
        btncancelar.Enabled := true;

        tbpagar.insert;
         tbpagar['dataemissao'] := datetostr(now);


        editdocparcela.setfocus;

end;

procedure Tfpagar.EditDocParcelaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfpagar.EditCod_ClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label2Click(Self);

        if key = vk_F12 then begin
         Application.CreateForm (Tflistafornecedor, flistafornecedor);
          flistafornecedor.table1.open;
           flistafornecedor.controle :='pagar';
            flistafornecedor.show;
             end;

          if key = 13 then
           preencherdornecedorExecute(self);

         
end;

procedure Tfpagar.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label11Click(Self);
end;

procedure Tfpagar.avancarExecute(Sender: TObject);
begin
        tbpagar.next;
end;

procedure Tfpagar.voltarExecute(Sender: TObject);
begin
        tbpagar.prior;
end;

procedure Tfpagar.tbpagarAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfpagar.focoExecute(Sender: TObject);
begin
        if not edit1.Focused then
        edit1.setfocus
        else
        editdocparcela.setfocus;
end;

procedure Tfpagar.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit2.setfocus;
end;

procedure Tfpagar.SpeedButton5Click(Sender: TObject);
begin

     tbpagar.IndexFieldNames := 'DocParcela';
       totalizarexecute (self);
        application.CreateForm(tfrpagar, frpagar);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  frpagar.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frpagar.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

          frpagar.ltotal.caption := panel9.Caption;
           frpagar.quickrep1.preview;
end;

procedure Tfpagar.SpeedButton9Click(Sender: TObject);
begin

    tbpagar.IndexFieldNames := 'DocParcela';
        application.CreateForm(tfrpagar, frpagar);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  frpagar.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frpagar.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

          frpagar.ltotal.caption := panel9.Caption;
           frpagar.quickrep1.preview;
end;

procedure Tfpagar.DBEdit4Change(Sender: TObject);
begin

         if DBEdit4.Text = '  /  /    ' then begin
          tbpagar.edit;
           tbpagar.FieldByName('DataPagamento').Clear;
            end;
end;

procedure Tfpagar.EditCartorioChange(Sender: TObject);
begin
        if EditCartorio.Text <> '' then
         editcod_fat.Clear;
end;

procedure Tfpagar.EditCod_FATChange(Sender: TObject);
begin
     if EditCod_FAT.Text<> '' then
      editcartorio.Clear;
end;

procedure Tfpagar.EditCartorioExit(Sender: TObject);
begin
        if editcartorio.Text <> '' then begin
         tbpagar.edit;
          tbpagar['vrdesconto'] := tbpagar.Fields[11].AsFloat - tbpagar.Fields[13].AsFloat; // vrdoc - descmoeda
           end;
end;

procedure Tfpagar.EditCod_FATExit(Sender: TObject);
begin
        if EditCod_FAT.Text <> '' then begin
         tbpagar.edit;
          tbpagar['vrdesconto'] := tbpagar.Fields[11].AsFloat - ((tbpagar.Fields[11].AsFloat * tbpagar.Fields[14].AsFloat)/100);
           end;
end;

procedure Tfpagar.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

         tbpagar.edit;
          if dbgrid2.SelectedIndex = 5 then
           if (key = 8) or (key = 46) then
            tbpagar.Fields[8].Clear;

end;

procedure Tfpagar.preencherdornecedorExecute(Sender: TObject);
begin

          tbfornecedor.open;

               if tbfornecedor.Locate ('codigo',editcod_Cliente.text,[]) then begin
               tbpagar.edit;
              tbpagar['fantasia'] := tbfornecedor['fantasia'];
             tbpagar['nome'] := tbfornecedor['fornecedor'];
            tbpagar['contato'] := tbfornecedor['contato1'];
           tbpagar['fone'] := tbfornecedor['fone'];
           tbfornecedor.close;
          dbedit1.setfocus;

          end else begin
          Showmessage('Não há nenhum fornecedor código: ' +  editcod_Cliente.text +' cadastrado !!!');
          editcod_Cliente.setfocus;
          end;

end;

procedure Tfpagar.DBEdit3Change(Sender: TObject);
begin
        if (editcartorio.Text ='') and (editcod_fat.Text = '' ) then begin
        tbpagar.Edit;
        tbpagar['vrdesconto'] := tbpagar['Valordocumento'];
        end;
end;

procedure Tfpagar.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F8 then begin
         tbpagar['DataPagamento'] := datetostr (now);
          dbedit4.setfocus;
           end;
end;

procedure Tfpagar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F8 then begin
         tbpagar['DataPagamento'] := datetostr (now);
          dbedit4.setfocus;
           end;
end;

procedure Tfpagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        tbpagar.edit;
         tbpagar.Post;

end;

procedure Tfpagar.FormShow(Sender: TObject);
begin
        tbpagar.Last;
end;

end.
