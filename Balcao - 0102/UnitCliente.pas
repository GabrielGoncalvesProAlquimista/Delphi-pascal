unit UnitCliente;

interface

uses
  Windows, variants, Messages, SysUtils, Classes, clipbrd, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls, Db, DBTables, Buttons, Grids, DBGrids,
  ComCtrls, QuickRpt, ToolWin, ActnList;

type
  Tfcliente = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Label34: TLabel;
    EditData: TDBEdit;
    EditCodigo: TDBEdit;
    EditNomeFntasia: TDBEdit;
    EditNome: TDBEdit;
    EditEndereco: TDBEdit;
    EditBairro: TDBEdit;
    EditCidade: TDBEdit;
    EditCEP: TDBEdit;
    EditCGC: TDBEdit;
    EditIE: TDBEdit;
    EditFone: TDBEdit;
    DBEdit3: TDBEdit;
    EditFoneFax: TDBEdit;
    EditContato: TDBEdit;
    EditCargoContato: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit12: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    ScrollBox3: TScrollBox;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Label26: TLabel;
    Edit2: TEdit;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    Panel13: TPanel;
    Panel10: TPanel;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    Panel5: TPanel;
    btngravar: TSpeedButton;
    Panel12: TPanel;
    btncancelar: TSpeedButton;
    Panel8: TPanel;
    SpeedButton21: TSpeedButton;
    Panel11: TPanel;
    Panel3: TPanel;
    btnimprimir: TSpeedButton;
    Panel9: TPanel;
    Panel14: TPanel;
    SpeedButton23: TSpeedButton;
    Panel16: TPanel;
    Panel18: TPanel;
    DSTabelaCliente: TDataSource;
    TabelaVendedor: TTable;
    TabelaFornecedor: TTable;
    ActionList1: TActionList;
    novo: TAction;
    voltar: TAction;
    avancar: TAction;
    foco: TAction;
    formatar: TAction;
    formatarsql: TAction;
    desativar: TAction;
    fornecedor: TAction;
    consumonf: TAction;
    atualizarpreco: TAction;
    consumo: TAction;
    tbcliente: TTable;
    dsvendedor: TDataSource;
    tbestado: TTable;
    dsestado: TDataSource;
    tbfatura: TTable;
    dsfatura: TDataSource;
    GroupBox1: TGroupBox;
    Bevel11: TBevel;
    Bevel10: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsConsulta: TDataSource;
    DBGrid1: TDBGrid;
    btcancelar: TSpeedButton;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure EditCGCExit(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure QRCompositeReport5AddReports(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure tbclienteAfterOpen(DataSet: TDataSet);
    procedure tbclienteAfterScroll(DataSet: TDataSet);
    procedure tbclienteBeforeEdit(DataSet: TDataSet);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure EditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure f(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EditNomeFntasiaExit(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure fornecedorExecute(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeFntasiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCGCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditContatoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure tbclientePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FReport : TQuickRep;
    procedure SetReport(Value : TQuickRep);
  public
  ST, tipo:string;
  bok : boolean;
    property Report : TQuickRep read FReport write SetReport;
   { Private declarations }


  { Public declarations }
  end;

var
  fcliente: Tfcliente;
 Texto, Texto1 : String;
implementation

uses Unit1,UnitRelatorioCliente1, UnitMenu;



{$R *.DFM}

procedure Tfcliente.SetReport(Value : TQuickRep);
begin
  FReport:=Value;
end;

procedure Tfcliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

      tbcliente.edit;
       tbcliente.post;

       tabelavendedor.close;
        tbestado.close;
         tbcliente.edit;
          tbcliente.post;
           tbcliente.close;
            tbfatura.close;


end;

procedure Tfcliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  key := #0;
       Perform(WM_nextdlgctl,0,0);
 end Else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfcliente.Label3Click(Sender: TObject);

begin

        BOK := inputquery('Localizar código','Entre com o código:',ST);
         if BOK then
          if not tbcliente.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não cadastrado !!!');
            ST := '';

end;

procedure Tfcliente.Label4Click(Sender: TObject);

Var
       Razao:String;
        LocCodogo : Boolean;
begin


     LocCodogo := InputQuery ('localizar', 'Entre com a Razão Social',Razao );
      if LocCodogo then begin
        if not tbcliente.FindKey ([Razao]) then
         ShowMessage ('Nome não encontrado');
          end;
end;

procedure Tfcliente.Label5Click(Sender: TObject);
begin
        BOK := inputquery('Localizar nome fantasia ou apelido','Entre com o nome:',ST);
         if BOK then
          if not tbcliente.Locate ('NomeFantasia',uppercase(ST),[]) then
           ShowMessage ('Nome não encontrado !!!');
            ST := '';

end;

procedure Tfcliente.Label6Click(Sender: TObject);


begin

        BOK := inputquery('Localizar CGC','Entre com o CGC:',ST);
         if BOK then
          if not tbcliente.Locate ('cgc',ST,[]) then
           ShowMessage ('CGC não localizado !!!');
            ST := '';

end;

procedure Tfcliente.EditCGCExit(Sender: TObject);
begin

            if length(EditCGC.Text) > 15 then
             if VerCGC(EditCGC.Text) = False then
              EditCGC.SetFocus;

             if length(EditCGC.Text) < 15 then
             if VerCPF(EditCGC.Text) = False then
              EditCGC.SetFocus;


end;

procedure Tfcliente.SpeedButton12Click(Sender: TObject);
begin
        tbcliente.Filtered := False;
end;

procedure Tfcliente.Edit2Change(Sender: TObject);
begin
        tbcliente.SetKey;
         tbcliente['nomefantasia'] := edit2.text;
          tbcliente.GotoNearest;
end;

procedure Tfcliente.SpeedButton8Click(Sender: TObject);

begin

   st:='';

   if fmenu.query1['bairro'] <> null then
    st := fmenu.query1['bairro'];

        BOK := inputquery('Filtrar Bairro','Entre com o nome do bairro, ou "T" para todos os bairros em ordem alfabética:',ST);
         if BOK then begin

        with fmenu.query1 do begin
         close;
          sql.clear;
           if uppercase(st)='T' then
          sql.add ('select * from tbcliente order by bairro')
          else
           sql.add ('select * from tbcliente where bairro = "' + uppercase(st) + '"');
             open;

             end;
              end;

            tipo :='bairro';
            statusbar1.Panels[0].Text :='Ordem de bairro';
            (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

end;

procedure Tfcliente.QRCompositeReport5AddReports(Sender: TObject);
    begin;
end;

procedure Tfcliente.btngravarClick(Sender: TObject);
begin
         tbcliente.Edit;
          tbcliente.Post;
           btngravar.Enabled:=false;
            btncancelar.Enabled:=false;

end;

procedure Tfcliente.btnnovoClick(Sender: TObject);

begin
     novoexecute(self);
end;




procedure Tfcliente.novoExecute(Sender: TObject);
begin

       tbcliente.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbcliente');
            open;
         end;

        tbcliente.insert;
        if fmenu.query1['codigo'] <> null then
         tbcliente['codigo'] := fmenu.query1['codigo'] + 1
        else
        tbcliente['codigo']:='1';
        tbcliente['data'] := datetostr(now);
        st := '';

        fmenu.query1.close;

            dblookupcombobox1.setfocus;
                    btngravar.Enabled:=true;
                btncancelar.Enabled := true;





end;

procedure Tfcliente.btnPrimeiroClick(Sender: TObject);
begin
        tbcliente.first;
end;

procedure Tfcliente.btnVoltarClick(Sender: TObject);
begin
        tbcliente.prior;
end;

procedure Tfcliente.btnAvancarClick(Sender: TObject);
begin
        tbcliente.next;
end;

procedure Tfcliente.btncancelarClick(Sender: TObject);
begin
        tbcliente.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfcliente.Label11Click(Sender: TObject);
begin
        BOK := inputquery('Localizar contato','Entre com o nome do contato:',ST);
         if BOK then
          if not tbcliente.Locate ('Contato',uppercase(ST),[]) then
           ShowMessage ('Contato não localizado !!!');
            ST := '';
end;

procedure Tfcliente.SpeedButton21Click(Sender: TObject);
begin

          if Application.MessageBox('Deseja excluir este cliente? ',
         'Confirme', 4)= idYes then begin

        tbcliente.delete;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
        end;

end;

procedure Tfcliente.DBLookupComboBox1Click(Sender: TObject);
begin
        tbcliente.edit;
         tbcliente['comissaovendedor'] := tabelavendedor['comissao'];
end;

procedure Tfcliente.tbclienteAfterOpen(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfcliente.tbclienteAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbcliente.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbcliente.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfcliente.tbclienteBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfcliente.DBLookupComboBox2Click(Sender: TObject);
begin
        tbcliente.edit;
         tbcliente['natureza'] := tbestado['natureza'];

end;

procedure Tfcliente.voltarExecute(Sender: TObject);
begin
        tbcliente.prior;
end;

procedure Tfcliente.avancarExecute(Sender: TObject);
begin
        tbcliente.next;
end;

procedure Tfcliente.focoExecute(Sender: TObject);
begin
        if not edit2.Focused then
        edit2.setfocus
        else
        editdata.setfocus;
end;

procedure Tfcliente.formatarExecute(Sender: TObject);
begin

 (tbcliente.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
  (tbcliente.fieldbyname ('cep') as tstringfield).editmask := '99.999-999;0;_';
   (tbcliente.fieldbyname ('fone') as tstringfield).editmask := '(99)9999-9999;0;_';
    (tbcliente.fieldbyname ('fone1') as tstringfield).editmask := '(99)9999-9999;0;_';
     (tbcliente.fieldbyname ('fonefax') as tstringfield).editmask := '(99)9999-9999;0;_';
      (tbcliente.fieldbyname ('uf') as tstringfield).editmask := 'aa';
       //(tbcliente.fieldbyname ('cgc') as tstringfield).editmask := '99.999.999/9999-99';
        (tbcliente.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
         (tbcliente.fieldbyname ('visita') as tdatetimefield).editmask := '99/99/9999';

end;

procedure Tfcliente.EditDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 27 then dbgrid3.setfocus;
end;

procedure Tfcliente.f(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        Messagedlg('Este cliente já está cadastrado, verificar !!!',mterror,[mbok],0);
         tbcliente.cancel;
          abort;
end;

procedure Tfcliente.EditNomeFntasiaExit(Sender: TObject);
begin
        if length(EditNomeFntasia.text) < 1 then begin
         showmessage('preencha o nome fantasia!!!');
           end;
end;

procedure Tfcliente.btnimprimirClick(Sender: TObject);
var
      bookmark : tbookmarkstr;
begin

           bookmark := tbcliente.Bookmark;

        application.CreateForm(tformrelatoriocliente1, formrelatoriocliente1);

       fmenu.logotipoExecute(self);

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriocliente1.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   formrelatoriocliente1.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');


       if tbcliente['NomeFantasia'] <> null then
        st := tbcliente['NomeFantasia'];

        if application.messagebox ('Deseja imprimir apenas este clientes?', 'Impressão', 4 + MB_ICONWARNING) =  mryes then begin

         tbcliente.Filter := 'nomefantasia = ''' + st + '''';
          tbcliente.Filtered := true;

     end;

        st := '';
         formrelatoriocliente1.quickficha.PreviewModal;
          tbcliente.Filtered := false;
           formrelatoriocliente1.release;

              tbcliente.Bookmark  := bookmark;

end;

procedure Tfcliente.fornecedorExecute(Sender: TObject);

begin

          if Application.MessageBox('Deseja gerar fornecedor a partir  deste cadastro? ',
         'Confirme', 4)= idYes then begin

        TabelaFornecedor.Open;
        TabelaFornecedor.Last;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbfornecedor');
            open;
         end;


     TabelaFornecedor.Insert;

     TabelaFornecedor['Fantasia']:= tbcliente['NomeFantasia'] ;
     TabelaFornecedor['Fone_Fax'] :=tbcliente['FoneFax'] ;
     TabelaFornecedor['CGC'] :=tbcliente['CGC'] ;
     TabelaFornecedor['Data'] :=tbcliente['Data'] ;
     TabelaFornecedor['Fornecedor'] :=tbcliente['Nome'];
     TabelaFornecedor['uf'] :=tbcliente['UF'];
     TabelaFornecedor['Endereco']:=tbcliente['Endereco'] ;
     TabelaFornecedor['Bairro'] := tbcliente['Bairro'] ;
     TabelaFornecedor['Cidade'] := tbcliente['Cidade'] ;
     TabelaFornecedor['Cep'] :=tbcliente['Cep'];
     TabelaFornecedor['Contato1'] := tbcliente['Contato'] ;
     TabelaFornecedor['Cargo2'] :=tbcliente['CargoContato'] ;
     TabelaFornecedor['Contato2'] :=tbcliente['Contata1'];
     TabelaFornecedor['Cargo2']:= tbcliente['Cargo1'];
     TabelaFornecedor['Fone1'] :=tbcliente['Fone1'];
     TabelaFornecedor['Email']:= tbcliente['Email'];
     TabelaFornecedor['CondPgto']:= tbcliente['CondPgto'] ;
     TabelaFornecedor['Codigo'] := fmenu.query1['codigo'] + 1;
     TabelaFornecedor.Post;
     TabelaFornecedor.Close;
     showmessage('Fornecedor Gerado');
     end;
     fmenu.query1.close;


end;

procedure Tfcliente.SpeedButton23Click(Sender: TObject);
begin
        fornecedorexecute(self);
end;

procedure Tfcliente.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then
         label3click(self);
end;

procedure Tfcliente.EditNomeFntasiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then
         label5click(self);
end;

procedure Tfcliente.EditCGCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
                if key = vk_f1 then
         label6click(self);
end;

procedure Tfcliente.EditContatoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then
         label11click(self);
end;

procedure Tfcliente.DBLookupComboBox3Click(Sender: TObject);
begin
        tbcliente['parcelas'] := tbfatura['parcelas'];
end;

procedure Tfcliente.tbclientePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        showmessage ('Este cliente já foi cadastrado, ou existe fantasia/apelido em branco!');
          abort;
end;

procedure Tfcliente.btnUltimoClick(Sender: TObject);
begin
        tbcliente.Last;
end;

procedure Tfcliente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cadastro de Cliente',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbcliente.edit;
          tbcliente.post;
           canclose:=true;
            end;

         idno : begin
          tbcliente.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;
end;

procedure Tfcliente.SpeedButton9Click(Sender: TObject);
begin
       st:='';

       IF fmenu.query1['vendedor']<> null then
        st := fmenu.query1['vendedor'];

        if inputquery('Filtrar Vendedor','Entre com o nome do vendedor, ou "T" para todos os vendedores em ordem alfabética:',st) then begin

        with fmenu.query1 do begin
         close;
          sql.clear;
           if uppercase(st)='T' then
          sql.add ('select * from tbcliente order by vendedor')
          else
           sql.add ('select * from tbcliente where vendedor ="' + uppercase(st) + '" order by vendedor');
            open;
              end;

          tipo :='vendedor';
            statusbar1.Panels[0].Text :='Ordem de vendedor';
        end;
           (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

end;

procedure Tfcliente.SpeedButton10Click(Sender: TObject);
begin

       st:='';
       IF fmenu.query1['cidade']<> null then
        st := fmenu.query1['cidade'];

        if inputquery('Filtrar Cidade','Entre com o nome da cidade, ou "T" para todas as cidades em ordem alfabética:',st) then begin

        with fmenu.query1 do begin
         close;
          sql.clear;
           if uppercase(st)= 'T' then
          sql.add ('select * from tbcliente order by cidade')
          else
           sql.add ('select * from tbcliente where Cidade ="' + uppercase(st) + '" order by Cidade');
            open;
             end;

          tipo := 'cidade';
          statusbar1.Panels[0].Text :='Ordem de cidade';
        end;
           (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

end;

procedure Tfcliente.SpeedButton11Click(Sender: TObject);
begin

      st:='';
       IF fmenu.query1['uf']<> null then
        st := fmenu.query1['uf'];

        if inputquery('Filtrar Estado','Entre com a sigla do estado, ou "T" para todos os estados em ordem alfabética:',st) then begin

        with fmenu.query1 do begin
         close;
          sql.clear;
          if uppercase(st)='T' then
          sql.add ('select * from tbcliente order by uf')
          else
           sql.add ('select * from tbcliente where uf ="' + uppercase(st) + '" order by uf');
            open;
             end;

          tipo := 'estado';
          statusbar1.Panels[0].Text :='Ordem de estado';
        end;
           (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

end;

procedure Tfcliente.btcancelarClick(Sender: TObject);
begin
         with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add ('select * from tbcliente order by bairro');
            open;
             end;
             tipo := 'bairro';
             statusbar1.Panels[0].Text :='Ordem de bairro';
             (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';

end;

procedure Tfcliente.SpeedButton5Click(Sender: TObject);
begin
  fmenu.logotipoExecute(self);

        application.CreateForm(tformrelatoriocliente1, formrelatoriocliente1);

  if (tipo = 'estado') then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriocliente1.image2.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
  formrelatoriocliente1.memo2.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

  formrelatoriocliente1.quickestado.PreviewModal;
  end else


  if (tipo = 'cidade') then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriocliente1.image3.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
  formrelatoriocliente1.memo3.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

  formrelatoriocliente1.quickcidade.PreviewModal;
  end else

  if (tipo = 'bairro') then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriocliente1.image4.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
  formrelatoriocliente1.memo4.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

  formrelatoriocliente1.quickbairro.PreviewModal;
  end else

  if (tipo = 'vendedor') then begin

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriocliente1.image5.Picture.assign(clipboard);
  clipboard.clear;
  end;
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
  formrelatoriocliente1.memo5.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

  formrelatoriocliente1.quickvendedor.PreviewModal;
  end;

     formrelatoriocliente1.release;

end;

procedure Tfcliente.PageControl1Change(Sender: TObject);
begin
        if pagecontrol1.ActivePageIndex = 1 then begin

         with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add ('select * from tbcliente order by bairro');
            open;
             end;
             tipo := 'bairro';
             statusbar1.Panels[0].Text :='Ordem de bairro';
             st:='';
             (fmenu.query1.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
        end else begin
        if tbcliente.State in [dsedit] then begin
         tbcliente.Post;
          btngravar.enabled := false;
           btncancelar.Enabled := false;
            end;
        fmenu.query1.close;
        end;
end;

procedure Tfcliente.SpeedButton2Click(Sender: TObject);
begin
        application.CreateForm(tformrelatoriocliente1, formrelatoriocliente1);
         formrelatoriocliente1.Quicketiqueta.PreviewModal;
          formrelatoriocliente1.Release;
end;

procedure Tfcliente.SpeedButton1Click(Sender: TObject);
var
MSG: STRING;
begin

   st := '';

   if tbcliente['nomefantasia'] <> null then
    st := tbcliente['nomefantasia'];

    with fmenu.query1 do begin
     close;
      sql.clear;
       sql.add ('select distinct nome from tbpedidoitem where fantasia = "'+ st+'"');
        open;
         end;

    while not fmenu.query1.Eof do begin
    if fmenu.query1['nome'] <> null then
    msg := msg + fmenu.query1['nome']+ #13;
    fmenu.query1.next;
    end;



    showmessage('PRODUTOS CONSUMIDOS:' + #13 + #13 + msg);



end;

end.
