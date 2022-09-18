unit UnitFornecedor;

interface

uses
  Windows, variants, Messages, CLIPBRD, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls, Grids, DBGrids,
  ToolWin, ComCtrls, ActnList;

type
  Tffornecedor = class(TForm)
    Panel1: TPanel;
    ScrollBox: TScrollBox;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EditData: TDBEdit;
    EditCodigo: TDBEdit;
    EditCGC: TDBEdit;
    EditFornecedor: TDBEdit;
    EditInscricao: TDBEdit;
    EditEndereco: TDBEdit;
    EditBairro: TDBEdit;
    EditCidade: TDBEdit;
    EditUF: TDBEdit;
    EditFone: TDBEdit;
    EditCep: TDBEdit;
    EditFone_Fax: TDBEdit;
    EditEmail: TDBEdit;
    EditNomeFantasia: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    ScrollBox2: TScrollBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label14: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    TabelaFornecedor: TTable;
    DSTabelaFornecedor: TDataSource;
    tbcliente: TTable;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    ToolBar2: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    Panel5: TPanel;
    btngravar: TSpeedButton;
    Panel8: TPanel;
    btncancelar: TSpeedButton;
    Panel12: TPanel;
    SpeedButton21: TSpeedButton;
    Panel11: TPanel;
    Panel4: TPanel;
    btnimprimir: TSpeedButton;
    Panel9: TPanel;
    SpeedButton23: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    ActionList1: TActionList;
    novo: TAction;
    voltar: TAction;
    avancar: TAction;
    foco: TAction;
    formatar: TAction;
    cliente: TAction;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dsfatura: TDataSource;
    tbfatura: TTable;
    SpeedButton1: TSpeedButton;
    Panel10: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure TabelaFornecedorAfterScroll(DataSet: TDataSet);
    procedure TabelaFornecedorBeforeEdit(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCGCExit(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure EditCodigoEnter(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeFantasiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabelaFornecedorAfterOpen(DataSet: TDataSet);
    procedure novoExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure clienteExecute(Sender: TObject);
    procedure EditCGCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabelaFornecedorPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  st:string;
    { Public declarations }
  end;

var
  ffornecedor: Tffornecedor;
    Valr, Valr1 : String;
implementation

uses  Unit1, UnitRelatorioFornecedor, UnitMenu;

{$R *.DFM}

procedure Tffornecedor.Edit1Change(Sender: TObject);
begin
      TabelaFornecedor.FindNearest([Edit1.Text]);
end;

procedure Tffornecedor.TabelaFornecedorAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if TabelaFornecedor.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if Tabelafornecedor.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tffornecedor.TabelaFornecedorBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tffornecedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     Perform(WM_nextdlgctl,0,0)
 else if Key = #27 then
     Perform(WM_nextdlgctl,1,0)

end;

procedure Tffornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         TabelaFornecedor.edit;
           TabelaFornecedor.Post;

        TabelaFornecedor.close;
        tbfatura.close;
end;

procedure Tffornecedor.EditCGCExit(Sender: TObject);
begin
            if VerCGC(EditCGC.Text) = False then
              EditCGC.SetFocus;
end;

procedure Tffornecedor.Label2Click(Sender: TObject);
BEGIN
      tabelafornecedor.edit;
       tabelafornecedor.post;
       
       ST := '';
        if inputquery('Localizar código','Entre com o código:',ST) then
          if not tabelafornecedor.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não cadastrado !!!');
            


end;

procedure Tffornecedor.Label4Click(Sender: TObject);
begin
        if inputquery('Localizar CGC','Entre com o CGC:',ST) then
          if not tabelafornecedor.Locate ('cgc',ST,[]) then
           ShowMessage ('CGC não localizado !!!');
            ST := '';

end;

procedure Tffornecedor.Label15Click(Sender: TObject);
BEGIN

       ST := '';
        if inputquery('Localizar fantasia','Entre com o nome:',ST) then
          if not tabelafornecedor.Locate ('fantasia',UPPERCASE(ST),[]) then
           ShowMessage ('Nome Fantasia não cadastrado !!!');


end;

procedure Tffornecedor.EditCodigoEnter(Sender: TObject);
begin
          Valr:=EditCodigo.Text;

           end;

procedure Tffornecedor.btnPrimeiroClick(Sender: TObject);
begin
        tabelafornecedor.first;
end;

procedure Tffornecedor.btnVoltarClick(Sender: TObject);
begin
        tabelafornecedor.prior;
end;

procedure Tffornecedor.btnAvancarClick(Sender: TObject);
begin
        tabelafornecedor.next;
end;

procedure Tffornecedor.btnUltimoClick(Sender: TObject);
begin
                tabelafornecedor.last;
end;

procedure Tffornecedor.btnnovoClick(Sender: TObject);
begin
     novoexecute(self);
end;

procedure Tffornecedor.btngravarClick(Sender: TObject);
begin
         TabelaFornecedor.Edit;
          TabelaFornecedor.Post;
           btngravar.Enabled:=false;
            btncancelar.Enabled:=false;
end;

procedure Tffornecedor.btncancelarClick(Sender: TObject);
begin
        TabelaFornecedor.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tffornecedor.SpeedButton21Click(Sender: TObject);
begin
          if Application.MessageBox('Deseja excluir este fornecedor? ',
         'Confirme', 4)= idYes then begin

        TabelaFornecedor.delete;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
        end;

end;

procedure Tffornecedor.btnimprimirClick(Sender: TObject);
begin
        application.CreateForm(tformrelatoriofornecedor, formrelatoriofornecedor);

  fmenu.logotipoExecute(self);
  if fileexists (extractfilepath(paramstr(0)) + '\imagem\logo.bmp') then begin
  formrelatoriofornecedor.image1.Picture.assign(clipboard);
  clipboard.clear;
  end;

  if fileexists (extractfilepath(paramstr(0)) + '\imagem\dado.txt') then
   formrelatoriofornecedor.memo1.lines.loadfromfile(extractfilepath(paramstr(0)) + '\imagem\dado.txt');

         formrelatoriofornecedor.quickrep1.PreviewModal;
          formrelatoriofornecedor.release;

end;

procedure Tffornecedor.SpeedButton23Click(Sender: TObject);
begin
 clienteexecute(self);
end;

procedure Tffornecedor.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then
         label2click(self);
end;

procedure Tffornecedor.EditNomeFantasiaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = vk_f1 then
         label15click(self);
end;

procedure Tffornecedor.TabelaFornecedorAfterOpen(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tffornecedor.novoExecute(Sender: TObject);
begin
        if inputquery('Cadastrar Fornecedor','Entre com o CGC, ou * para nenhum:',ST) then begin

         if st<>'*' then begin
          if tabelafornecedor.Locate ('fantasia',ST,[]) then begin
           ShowMessage ('Este fornecedor já está cadastrado !!!');
           abort;
            end;
             end;

        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;

       tabelafornecedor.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbfornecedor');
            open;
         end;

        tabelafornecedor.insert;
        if fmenu.query1['codigo'] <> null then
         tabelafornecedor['codigo'] := fmenu.query1['codigo'] + 1
        else
        tabelafornecedor['codigo']:='1';

        if st<>'*' then
        tabelafornecedor['cgc'] := St;
        tabelafornecedor['data'] := datetostr(now);
        tabelafornecedor['tipo'] := 'A';
        st := '';
        fmenu.query1.close;

        editnomefantasia.setfocus;

            end;

end;

procedure Tffornecedor.voltarExecute(Sender: TObject);
begin
        tabelafornecedor.prior;
end;

procedure Tffornecedor.avancarExecute(Sender: TObject);
begin
        tabelafornecedor.next;
end;

procedure Tffornecedor.focoExecute(Sender: TObject);
begin
        if not edit1.Focused then
        edit1.setfocus
        else
        editdata.setfocus;
end;

procedure Tffornecedor.formatarExecute(Sender: TObject);
begin

 (tabelafornecedor.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
  (tabelafornecedor.fieldbyname ('cep') as tstringfield).editmask := '99.999-999;0;_';
   (tabelafornecedor.fieldbyname ('fone') as tstringfield).editmask := '(99)9999-9999';
    (tabelafornecedor.fieldbyname ('fone1') as tstringfield).editmask := '(99)9999-9999';
     (tabelafornecedor.fieldbyname ('fone_fax') as tstringfield).editmask := '(99)9999-9999';
      (tabelafornecedor.fieldbyname ('uf') as tstringfield).editmask := 'aa';
       (tabelafornecedor.fieldbyname ('cgc') as tstringfield).editmask := '99.999.999/9999-99';
        (tabelafornecedor.fieldbyname ('data') as tdatetimefield).editmask := '99/99/9999';
end;

procedure Tffornecedor.clienteExecute(Sender: TObject);
begin
          if Application.MessageBox('Deseja gerar cliente a partir  deste cadastro? ',
         'Confirme', 4)= idYes then begin

        tbcliente.Open;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbcliente');
            open;
         end;


     tbcliente.Insert;

     tbcliente['NomeFantasia']:=TabelaFornecedor['Fantasia'] ;
     tbcliente['FoneFax']:= TabelaFornecedor['Fone_Fax'] ;
     tbcliente['CGC']:= TabelaFornecedor['CGC'] ;
     tbcliente['Data']:=TabelaFornecedor['Data']  ;
     tbcliente['Nome']:=TabelaFornecedor['Fornecedor'];
     tbcliente['UF']:=TabelaFornecedor['uf'];
     tbcliente['Endereco'] :=TabelaFornecedor['Endereco'];
     tbcliente['Bairro']:= TabelaFornecedor['Bairro'] ;
     tbcliente['Cidade'] :=TabelaFornecedor['Cidade'];
     tbcliente['Cep']:=TabelaFornecedor['Cep'] ;
     tbcliente['Contato']:= TabelaFornecedor['Contato1'];
     tbcliente['CargoContato'] :=TabelaFornecedor['Cargo2'];
     tbcliente['Contata1']:=TabelaFornecedor['Contato2'];
     tbcliente['Cargo1']:=TabelaFornecedor['Cargo2'];
     tbcliente['Fone1']:=TabelaFornecedor['Fone1'];
     tbcliente['Email']:=TabelaFornecedor['Email'];
     tbcliente['CondPgto'] :=TabelaFornecedor['CondPgto'];
     tbcliente['Codigo'] :=fmenu.query1['codigo'] + 1 ;

     tbcliente.Post;
     tbcliente.Close;
     showmessage('Cliente Gerado');
     end;
     fmenu.query1.close;

end;

procedure Tffornecedor.EditCGCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then
         label4click(self);
end;

procedure Tffornecedor.TabelaFornecedorPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        showmessage ('este fornecedor já está cadastrado');
         tabelafornecedor.cancel;
end;

procedure Tffornecedor.SpeedButton1Click(Sender: TObject);
var
MSG: STRING;
begin

   st := '';

   if tabelafornecedor['fantasia'] <> null then
    st := tabelafornecedor['fantasia'];

    with fmenu.query1 do begin
     close;
      sql.clear;
       sql.add ('select distinct nome from tbentradaitem where fantasia = "'+ st+'"');
        open;
         end;

    while not fmenu.query1.Eof do begin
    if fmenu.query1['nome'] <> null then
    msg := msg + fmenu.query1['nome']+ #13;
    fmenu.query1.next;
    end;



    showmessage('PRODUTOS COMPRADOS:' + #13 + #13 + msg);


end;

end.
