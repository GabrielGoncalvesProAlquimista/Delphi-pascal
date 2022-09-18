unit ureceber;

interface

uses
  Windows, Messages, clipbrd, Classes, SysUtils, variants, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, ToolWin, ActnList;

type
  Tfreceber = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ScrollBox: TScrollBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditData_Vencimento: TDBEdit;
    EditValor_Titulo: TDBEdit;
    EditNumero_Pedido: TDBEdit;
    EditCartorio: TDBEdit;
    EditCod_FAT: TDBEdit;
    dsreceber: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    EditDocParcela: TDBEdit;
    Label3: TLabel;
    EditData_Emissao: TDBEdit;
    Label2: TLabel;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Label29: TLabel;
    Edit1: TEdit;
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
    Panel8: TPanel;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    btncancelar: TSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    tbcliente: TTable;
    ToolBar2: TToolBar;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    MaskEdit1: TMaskEdit;
    Label34: TLabel;
    Label35: TLabel;
    MaskEdit2: TMaskEdit;
    Panel9: TPanel;
    DBEdit3: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ActionList1: TActionList;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    totalizar: TAction;
    foco: TAction;
    DBComboBox1: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    MemoInstruc: TDBMemo;
    Label19: TLabel;
    Bevel1: TBevel;
    SpeedButton7: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    EditCod_Banco: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    tbreceber: TTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure tbreceberAfterScroll(DataSet: TDataSet);
    procedure EditCod_ClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btncancelarClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure EditDocParcelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure focoExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure EditCartorioChange(Sender: TObject);
    procedure EditCod_FATChange(Sender: TObject);
    procedure EditCartorioExit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Change(Sender: TObject);
    procedure EditCod_FATExit(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbreceberAfterOpen(DataSet: TDataSet);
    procedure tbreceberBeforeEdit(DataSet: TDataSet);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { private declarations }
  public
  bok:boolean;
  st:string;
  tot : real;
    { public declarations }
  end;

var
  freceber: Tfreceber;

implementation

uses ulistacliente, UnitRelatorioReceber, Extens, UnitMenu;

{$R *.DFM}

procedure Tfreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

         tbreceber.edit;
          tbreceber.Post;

end;

procedure Tfreceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfreceber.btnPrimeiroClick(Sender: TObject);
begin
        tbreceber.first;
end;

procedure Tfreceber.btnVoltarClick(Sender: TObject);
begin
        tbreceber.Prior;
end;

procedure Tfreceber.btnAvancarClick(Sender: TObject);
begin
        tbreceber.Next;
end;

procedure Tfreceber.btnUltimoClick(Sender: TObject);
begin
        tbreceber.last;
end;

procedure Tfreceber.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);

end;

procedure Tfreceber.btngravarClick(Sender: TObject);
begin
       tbreceber.edit;
        if tbreceber['extenso'] <> null then
                  
          tbreceber.post;

          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfreceber.Edit1Change(Sender: TObject);
begin
       tbreceber.IndexFieldNames := 'DocParcela';
         tbreceber.findnearest([edit1.text]);
end;

procedure Tfreceber.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Documento','Digite aqui, o documento a ser localizado:',ST);
         if BOK then
          if not tbreceber.Locate ('DocParcela',uppercase(ST),[]) then
           ShowMessage ('Documento não localizado !!!');
            ST := '';
end;

procedure Tfreceber.tbreceberAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbreceber.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbreceber.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfreceber.EditCod_ClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
         tbreceber.edit;
          if dbgrid2.SelectedIndex = 5 then
           if (key = 8) or (key = 46) then
            tbreceber.Fields[8].Clear;


end;

procedure Tfreceber.btncancelarClick(Sender: TObject);
begin
        tbreceber.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled:= false;
end;

procedure Tfreceber.Label2Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Código','Digite aqui, o código a ser localizado:',ST);
         if BOK then
          if not tbreceber.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não localizado !!!');
            ST := '';
end;

procedure Tfreceber.Label11Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Cliente','Digite aqui, o nome a ser localizado:',ST);
         if BOK then
          if not tbreceber.Locate ('fantasia',ST,[]) then
           ShowMessage ('Nome não localizado !!!');
            ST := '';
end;

procedure Tfreceber.FormActivate(Sender: TObject);
begin
 (tbreceber.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
 (tbreceber.fieldbyname ('dataemissao') as tdatetimefield).editmask := '99/99/9999';
 (tbreceber.fieldbyname ('datavencimento') as tdatetimefield).editmask := '99/99/9999';
 (tbreceber.fieldbyname ('datapagamento') as tdatetimefield).editmask := '99/99/9999';
 (tbreceber.fieldbyname ('numeropedido') as tfloatfield).displayformat := '000000';
 (tbreceber.fieldbyname ('valortitulo') as tfloatfield).displayformat := '###,##0.00';
 (tbreceber.fieldbyname ('valordocumento') as tfloatfield).displayformat := '###,##0.00';
 (tbreceber.fieldbyname ('vrdesconto') as tfloatfield).displayformat := '###,##0.00';
 (tbreceber.fieldbyname ('docparcela') as tfloatfield).displayformat := '000000';
 (tbreceber.fieldbyname ('Fone') as tstringfield).editmask := '!\(99\)9999-9999;0;_';

 end;

procedure Tfreceber.PageControl1Change(Sender: TObject);
begin


        if PageControl1.ActivePageIndex = 1 then
         keypreview := false 
        else
        keypreview := true;
        tbreceber.filtered:=False;
        panel9.caption := '';
end;

procedure Tfreceber.totalizarExecute(Sender: TObject);
var
bookmark : tbookmarkstr;
begin

     bookmark := tbreceber.Bookmark;

     try
      tbreceber.DisableControls;
      tot := 0;

    try
    tbreceber.First;

    while not tbreceber.Eof do begin

    tot := tot + tbreceber.fields[15].asfloat;
    tbreceber.next;
    end;
    finally

    tbreceber.EnableControls;
    end;
    finally
    tbreceber.Bookmark := bookmark;
    panel9.caption := 'Total: ' + format('%n',[tot]);
    end;

end;

procedure Tfreceber.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         maskedit2.setfocus;
end;

procedure Tfreceber.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
         if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then begin
         tbreceber.Filtered := false;
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + '''';
         tbreceber.filtered := true;
         totalizarexecute(self);
         end;

        if key = 27 then
         maskedit1.setfocus;         
end;

procedure Tfreceber.SpeedButton1Click(Sender: TObject);
begin

       tbreceber.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + ''' and Datapagamento>''01/01/1990'''
          else
         tbreceber.Filter:='datapagamento>''01/01/1990''';
        tbreceber.filtered:=True;
       totalizarexecute(self);

end;

procedure Tfreceber.SpeedButton2Click(Sender: TObject);
begin
       tbreceber.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' + maskedit2.text + ''' and Datapagamento < ''01/01/1990'''
          else
         tbreceber.Filter:='datapagamento <''01/01/1990''';
        tbreceber.filtered:=True;
       totalizarexecute(self);
end;

procedure Tfreceber.SpeedButton3Click(Sender: TObject);
begin

      if tbreceber['Fantasia'] <> null Then
       ST:= tbreceber['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do cliente', St);
      if BOK then begin

       tbreceber.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''''
          else
         tbreceber.Filter:='fantasia = ''' + UpperCase(st) + '''';
        tbreceber.filtered:=True;
       totalizarexecute(self);
       end;
end;

procedure Tfreceber.SpeedButton4Click(Sender: TObject);
begin
      if tbreceber['Fantasia'] <> null Then
       ST:= tbreceber['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do cliente', St);
      if BOK then begin

       tbreceber.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''' and datapagamento > ''01/01/1900'''
          else
         tbreceber.Filter:='fantasia = ''' + UpperCase(st) + ''' and datapagamento > ''01/01/1900''';
        tbreceber.filtered:=True;
       totalizarexecute(self);
       end;
end;

procedure Tfreceber.SpeedButton6Click(Sender: TObject);
begin
      if tbreceber['Fantasia'] <> null Then
       ST:= tbreceber['Fantasia'];

        BOK:= InputQuery ('Filtrar', 'Entre com o nome do cliente', St);
      if BOK then begin

       tbreceber.Filtered:=False;
        if (maskedit1.text <> '  /  /    ') and (maskedit2.text <> '  /  /    ') then
         tbreceber.Filter := 'datavencimento >=''' + maskedit1.text + ''' and datavencimento <=''' +maskedit2.text + ''' and fantasia = '''+ UpperCase(st) + ''' and datapagamento < ''01/01/1900'''
          else
         tbreceber.Filter:='fantasia = ''' + UpperCase(st) + ''' and datapagamento < ''01/01/1900''';
        tbreceber.filtered:=True;
       totalizarexecute(self);
       end;
end;

procedure Tfreceber.SpeedButton8Click(Sender: TObject);
begin

       tbreceber.filtered:=false;
        Maskedit1.Clear;
         maskedit2.clear;
          totalizarexecute(self);

end;

procedure Tfreceber.novoExecute(Sender: TObject);
begin
        btngravar.enabled := true;
        btncancelar.Enabled := true;        

        tbreceber.insert;
         tbreceber['dataemissao'] := datetostr(now);
          editdocparcela.setfocus;
end;

procedure Tfreceber.avancarExecute(Sender: TObject);
begin
        tbreceber.next;
end;

procedure Tfreceber.voltarExecute(Sender: TObject);
begin
        tbreceber.Prior;
end;

procedure Tfreceber.EditDocParcelaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfreceber.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label11Click(Self);
end;

procedure Tfreceber.focoExecute(Sender: TObject);
begin
        if not edit1.Focused then
        edit1.setfocus
        else
        editdocparcela.setfocus;
end;

procedure Tfreceber.SpeedButton5Click(Sender: TObject);
Var
 NotaIni, NotaFin:String;
begin

    if  application.MessageBox('Imprimir somente a duplicata atual?','Imprimir duplicata (s)',4 + MB_ICONWARNING ) = mryes then
     tbreceber.filter := 'docparcela = ''' + editdocparcela.text + ''''

      else begin
     if InputQuery ('localizar...', 'Entre com o número inicial da duplicata',NotaIni ) then
      if InputQuery ('localizar...', 'Entre com o número final da duplicata',NotaFin ) then
       tbreceber.filter := 'docparcela >= ''' + notaini + ''' and docparcela<= ''' + notafin +'''' ;
        end;

         tbreceber.filtered := true;


        Application.CreateForm(tfrreceber, frreceber);
         frreceber.Quickduplicata.Previewmodal;

              frreceber.Release;
               tbreceber.filtered := False;


end;

procedure Tfreceber.EditCartorioChange(Sender: TObject);
begin
       tbreceber.edit;
        if EditCartorio.Text <> '' then
         editcod_fat.Clear;
end;

procedure Tfreceber.EditCod_FATChange(Sender: TObject);
begin
           tbreceber.edit;
     if EditCod_FAT.Text<> '' then
      editcartorio.Clear;
end;

procedure Tfreceber.EditCartorioExit(Sender: TObject);
begin
        if editcartorio.Text <> '' then begin
         tbreceber.edit;
          tbreceber['vrdesconto'] := tbreceber.Fields[11].AsFloat - tbreceber.Fields[13].AsFloat; // vrdoc - descmoeda
           end;
end;

procedure Tfreceber.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label2Click(Self);

{        if key = vk_F12 then begin
         Application.CreateForm (Tflistacliente, flistacliente);
          flistacliente.st := 'receber';
           flistacliente.table1.open;
            flistacliente.show;
             end;

        if key = 13 then begin
         tbcliente.open;
        if tbcliente.Locate ('Codigo',DBEdit9.text,[]) then begin

        tbreceber['fantasia'] := tbcliente['nomefantasia'];
        tbreceber['nome'] := tbcliente['nome'];
        tbreceber['cgc'] := tbcliente['cgc'];
        tbreceber['endereco'] := tbcliente['endereco'];
        tbreceber['cidade'] := tbcliente['cidade'];
        tbreceber['cep'] := tbcliente['cep'];
        tbreceber['uf'] := tbcliente['uf'];
        tbreceber['ie'] := tbcliente['ie'];
        tbreceber['fone'] := tbcliente['fonefax'];
        tbreceber['contato'] := tbcliente['contato'];

        dbedit10.setfocus;
        end else
        showmessage('Cliente não localizado');
        tbcliente.close;
        end;}
end;

procedure Tfreceber.DBEdit3Change(Sender: TObject);
begin

        if (editcartorio.Text ='') and (editcod_fat.Text = '' ) then begin
        tbreceber.Edit;
        tbreceber['vrdesconto'] := tbreceber['Valordocumento'];
        end;
end;

procedure Tfreceber.EditCod_FATExit(Sender: TObject);
begin
        if EditCod_FAT.Text <> '' then begin
         tbreceber.edit;
          tbreceber['vrdesconto'] := tbreceber.Fields[11].AsFloat - ((tbreceber.Fields[11].AsFloat * tbreceber.Fields[14].AsFloat)/100);
           end;

end;

procedure Tfreceber.SpeedButton10Click(Sender: TObject);
begin

    tbreceber.IndexFieldNames := 'DocParcela';
         totalizarexecute(self);

        Application.CreateForm(tfrreceber, frreceber);

  fmenu.logotipoExecute(self);
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  frreceber.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frreceber.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');


         frreceber.ltotal.Caption := panel9.caption;
          frreceber.ltitulo.Caption := 'CONTAS A RECEBER ';
           frreceber.Quickrep1.Previewmodal;
            frreceber.Release;

end;

procedure Tfreceber.SpeedButton7Click(Sender: TObject);
begin

   tbreceber.IndexFieldNames := 'DocParcela';
        Application.CreateForm(tfrreceber, frreceber);

  fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp')then begin
  frreceber.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   frreceber.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

         frreceber.ltotal.Caption := panel9.caption;
          frreceber.ltitulo.Caption := 'CONTAS A RECEBER ';
           frreceber.Quickrep1.Previewmodal;
            frreceber.Release;
end;

procedure Tfreceber.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_F8 then begin
         tbreceber['DataPagamento'] := datetostr (now);
          dbedit4.setfocus;
           end;

end;

procedure Tfreceber.DBEdit6Exit(Sender: TObject);
begin
        tbreceber['Extenso'] := Extens.Extenso(strtofloat(dbedit6.text));
end;

procedure Tfreceber.DBEdit3Exit(Sender: TObject);
begin
        tbreceber['Extenso'] := Extens.Extenso(strtofloat(dbedit6.text));
end;

procedure Tfreceber.FormShow(Sender: TObject);
begin
        tbreceber.Last;
         btnGravar.Enabled:=false;
           btncancelar.enabled:= false;
end;

procedure Tfreceber.tbreceberAfterOpen(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;

end;

procedure Tfreceber.tbreceberBeforeEdit(DataSet: TDataSet);
begin
        btngravar.Enabled := true;
         btncancelar.Enabled := true;
end;

procedure Tfreceber.DBEdit4Change(Sender: TObject);
begin
       if DBEdit4.Text = '  /  /    ' then begin
        tbreceber.edit;
         tbreceber.FieldByName('DataPagamento').Clear;
          end; 
end;

procedure Tfreceber.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cadastro de Cliente',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbreceber.edit;
          tbreceber.post;
           canclose:=true;
            end;

         idno : begin
          tbreceber.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;

end;

end.
