unit UnitVendedor;

interface

uses
  Windows, variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, StdCtrls, Mask, DBCtrls, Db,
  DBTables, ToolWin, ActnList;

type
  Tfvendedor = class(TForm)
    ScrollBox: TScrollBox;
    TabelaVendedor: TTable;
    DSTabelaVendedor: TDataSource;
    ScrollBox1: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label19: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    EditCodigo: TDBEdit;
    EditNome: TDBEdit;
    EditEndereco: TDBEdit;
    EditBairro: TDBEdit;
    EditCidade: TDBEdit;
    EditCep: TDBEdit;
    EditUF: TDBEdit;
    EditFone: TDBEdit;
    EditEmail: TDBEdit;
    EditComissao: TDBEdit;
    EditComissaoX: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    ScrollBox2: TScrollBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label10: TLabel;
    Edit1: TEdit;
    ToolBar2: TToolBar;
    btnprimeiro: TSpeedButton;
    btnvoltar: TSpeedButton;
    btnavancar: TSpeedButton;
    btnultimo: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    SpeedButton6: TSpeedButton;
    Panel5: TPanel;
    btngravar: TSpeedButton;
    Panel8: TPanel;
    btncancelar: TSpeedButton;
    Panel12: TPanel;
    SpeedButton21: TSpeedButton;
    ActionList1: TActionList;
    novo: TAction;
    voltar: TAction;
    avancar: TAction;
    foco: TAction;
    formatar: TAction;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure TabelaVendedorAfterScroll(DataSet: TDataSet);
    procedure TabelaVendedorBeforeEdit(DataSet: TDataSet);
    procedure Label1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Label18Click(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnavancarClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure TabelaVendedorAfterOpen(DataSet: TDataSet);
    procedure novoExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure TabelaVendedorPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Label2Click(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
  st:string;
    { Public declarations }
  end;

var
  fvendedor: Tfvendedor;
    Valr, Valr1 : String;
implementation

uses UnitMenu;


{$R *.DFM}

procedure Tfvendedor.btnVoltarClick(Sender: TObject);
BEGIN
        TabelaVendedor.prior;
end;

procedure Tfvendedor.btnNovoClick(Sender: TObject);

begin
     novoexecute(self);
     end;

procedure Tfvendedor.btnGravarClick(Sender: TObject);
begin
         TabelaVendedor.Edit;
          TabelaVendedor.Post;
           btngravar.Enabled:=false;
            btncancelar.Enabled:=false;
end;

procedure Tfvendedor.TabelaVendedorAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if TabelaVendedor.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if TabelaVendedor.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfvendedor.TabelaVendedorBeforeEdit(DataSet: TDataSet);
begin
        btnGravar.Enabled:=True;
         btncancelar.enabled := true;
end;

procedure Tfvendedor.Label1Click(Sender: TObject);
begin
        if inputquery('Localizar código','Entre com o código:',ST) then
          if not tabelavendedor.Locate ('Codigo',ST,[]) then
           ShowMessage ('Código não cadastrado !!!');
            ST := ''

end;



procedure Tfvendedor.Edit1Change(Sender: TObject);
begin
         TabelaVendedor.FindNearest ([Edit1.Text]);
end;

procedure Tfvendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    Perform(WM_nextdlgctl,0,0)
 else  if key=#27 then
    Perform(WM_nextdlgctl,1,0);

end;

procedure Tfvendedor.Label18Click(Sender: TObject);
begin
        if inputquery('Localizar Nome(Apelido)','Entre com o nome:',ST) then
          if not tabelavendedor.Locate ('apel',uppercase(ST),[]) then
           ShowMessage ('Nome não cadastrado !!!');
            ST := ''

end;

procedure Tfvendedor.btncancelarClick(Sender: TObject);
begin
        TabelaVendedor.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfvendedor.SpeedButton21Click(Sender: TObject);
begin
          if Application.MessageBox('Deseja excluir este vendedor? ',
         'Confirme', 4)= idYes then begin

       TabelaVendedor.delete;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
        end;

end;

procedure Tfvendedor.btnprimeiroClick(Sender: TObject);
begin
        TabelaVendedor.first;
end;

procedure Tfvendedor.btnavancarClick(Sender: TObject);
begin
        TabelaVendedor.next;
end;

procedure Tfvendedor.btnultimoClick(Sender: TObject);
begin
        TabelaVendedor.last;
end;

procedure Tfvendedor.TabelaVendedorAfterOpen(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfvendedor.novoExecute(Sender: TObject);
begin
        btnGravar.Enabled:=true;
        btncancelar.Enabled := true;

       TabelaVendedor.Refresh;

        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(codigo) as codigo from tbvendedor');
            open;
         end;

        TabelaVendedor.insert;
        if fmenu.query1['codigo'] <> null then
         TabelaVendedor['codigo'] := fmenu.query1['codigo'] + 1
        else
        TabelaVendedor['codigo']:='1';
        fmenu.query1.close;

            editnome.setfocus;


end;

procedure Tfvendedor.voltarExecute(Sender: TObject);
begin
        tabelavendedor.prior
end;

procedure Tfvendedor.avancarExecute(Sender: TObject);
begin
        tabelavendedor.next;
end;

procedure Tfvendedor.focoExecute(Sender: TObject);
begin
        if not edit1.Focused then
        edit1.setfocus
        else
        editnome.setfocus;
end;

procedure Tfvendedor.formatarExecute(Sender: TObject);
begin
 (tabelavendedor.fieldbyname ('codigo') as tfloatfield).displayformat := '000000';
  (tabelavendedor.fieldbyname ('cep') as tstringfield).editmask := '99.999-999';
   (tabelavendedor.fieldbyname ('fone') as tstringfield).editmask := '(99)9999-9999';
    (tabelavendedor.fieldbyname ('fone1') as tstringfield).editmask := '(99)9999-9999';
     (tabelavendedor.fieldbyname ('celular') as tstringfield).editmask := '(99)9999-9999';
      (tabelavendedor.fieldbyname ('uf') as tstringfield).editmask := 'aa';

end;

procedure Tfvendedor.TabelaVendedorPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
        Messagedlg('Este vendedor já está cadastrado, verificar !!!',mterror,[mbok],0);
                 Messagedlg('Este cliente já está cadastrado, verificar !!!',mterror,[mbok],0);
         tabelavendedor.cancel;
          abort;
end;

procedure Tfvendedor.Label2Click(Sender: TObject);
begin
        if inputquery('Localizar Nome','Entre com o nome:',ST) then
          if not tabelavendedor.Locate ('nome',uppercase(ST),[]) then
           ShowMessage ('Nome não cadastrado !!!');
            ST := ''
end;

procedure Tfvendedor.EditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then label1click(self);
end;

procedure Tfvendedor.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
                if key = vk_f1 then label18click(self);
end;

procedure Tfvendedor.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f1 then label2click(self);
end;

procedure Tfvendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        tabelavendedor.edit;
         tabelavendedor.Post;

         tabelavendedor.Close;
end;

procedure Tfvendedor.FormShow(Sender: TObject);
begin
        tabelavendedor.Last;
end;

procedure Tfvendedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cadastro de Vendedor',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tabelavendedor.edit;
          tabelavendedor.post;
           canclose:=true;
            end;

         idno : begin
          tabelavendedor.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;
end;

end.
