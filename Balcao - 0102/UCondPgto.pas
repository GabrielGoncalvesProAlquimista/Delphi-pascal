unit UCondPgto;

interface

uses
  Windows, variants, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls, DBTables, ComCtrls,
  ToolWin, Buttons, ActnList;

type
  Tfcondfatura = class(TForm)
    dscondfatura: TDataSource;
    tbcondfatura: TTable;
    ScrollBox: TScrollBox;
    Panel1: TPanel;
    ToolBar2: TToolBar;
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
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditCondicao: TDBEdit;
    EditDescricao: TDBEdit;
    EditCondPgto: TDBEdit;
    EditCondPgto2: TDBEdit;
    EditCondPgto3: TDBEdit;
    EditCondPgto4: TDBEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ActionList1: TActionList;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    foco: TAction;
    Bevel1: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure tbcondfaturaAfterScroll(DataSet: TDataSet);
    procedure tbcondfaturaBeforeEdit(DataSet: TDataSet);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure EditCondicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbcondfaturaAfterPost(DataSet: TDataSet);
    procedure focoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { private declarations }
  public
  bok:boolean;
  st:string;
    { public declarations }
  end;

var
  fcondfatura: Tfcondfatura;

implementation

uses UnitMenu;



{$R *.DFM}

procedure Tfcondfatura.SpeedButton1Click(Sender: TObject);
begin
        novoexecute(self);
end;

procedure Tfcondfatura.SpeedButton2Click(Sender: TObject);
begin
        tbcondfatura.edit;
         tbcondfatura.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfcondfatura.Edit1Change(Sender: TObject);
begin
        tbcondfatura.indexname := 'bydescricao';
         tbcondfatura.FindNearest ([edit1.text]);
end;

procedure Tfcondfatura.tbcondfaturaAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbcondfatura.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbcondfatura.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;


end;

procedure Tfcondfatura.tbcondfaturaBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure Tfcondfatura.btnPrimeiroClick(Sender: TObject);
begin
        tbcondfatura.first;
end;

procedure Tfcondfatura.btnVoltarClick(Sender: TObject);
begin
        tbcondfatura.prior;
end;

procedure Tfcondfatura.btnAvancarClick(Sender: TObject);
begin
        tbcondfatura.next;
end;

procedure Tfcondfatura.btnUltimoClick(Sender: TObject);
begin
        tbcondfatura.last;
end;

procedure Tfcondfatura.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfcondfatura.btncancelarClick(Sender: TObject);
begin
       tbcondfatura.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfcondfatura.DBEdit1Exit(Sender: TObject);
begin
        if DBEdit1.text = '' then begin
         showmessage('Este campo não pode ficar vazio!!!');
          DBEdit1.setfocus;
           end;
end;

procedure Tfcondfatura.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Condição','Entre com o número:',ST);
         if BOK then
          if not tbcondfatura.Locate ('condicao',ST,[]) then
           ShowMessage ('Concição não localizada!!!');
            ST := '';
end;

procedure Tfcondfatura.Label10Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Parcelas','Entre com a quantidade:',ST);
         if BOK then
          if not tbcondfatura.Locate ('parcelas',ST,[]) then
           ShowMessage ('Item não localizado!!!');
            ST := '';
end;

procedure Tfcondfatura.Label2Click(Sender: TObject);
begin
        BOK := inputquery('Localizar descrição','Entre com a descrição :',ST);
         if BOK then
          if not tbcondfatura.Locate ('Descricao',ST,[]) then
           ShowMessage ('Descricao não localizada!!!');
            ST := '';
end;

procedure Tfcondfatura.avancarExecute(Sender: TObject);
begin
        tbcondfatura.next;
end;

procedure Tfcondfatura.voltarExecute(Sender: TObject);
begin
        tbcondfatura.prior;
end;

procedure Tfcondfatura.novoExecute(Sender: TObject);
begin
        with fmenu.query1 do begin
         close;
          sql.clear;
           sql.add('select max(condicao) as codigo from Cond_Fatura');
            open;
         end;

        tbcondfatura.insert;
        if fmenu.query1['codigo'] <> null then
         tbcondfatura['condicao'] := fmenu.query1['codigo'] + 1
        else
         tbcondfatura['condicao'] := '1';

          btnGravar.Enabled:=True;
        btncancelar.Enabled := true;          
           dbedit1.setfocus;

end;

procedure Tfcondfatura.EditCondicaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure Tfcondfatura.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label10Click(Self);
end;

procedure Tfcondfatura.EditDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label2Click(Self);
end;

procedure Tfcondfatura.tbcondfaturaAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfcondfatura.focoExecute(Sender: TObject);
begin
        if not edit1.Focused then
        edit1.setfocus
        else
        dbedit1.setfocus;
end;

procedure Tfcondfatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        tbcondfatura.edit;
         tbcondfatura.Post;

         tbcondfatura.close;

end;

procedure Tfcondfatura.FormShow(Sender: TObject);
begin
        tbcondfatura.Last;
end;

procedure Tfcondfatura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair de Cond. Fatura',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbcondfatura.edit;
          tbcondfatura.post;
           canclose:=true;
            end;

         idno : begin
          tbcondfatura.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;
end;

end.