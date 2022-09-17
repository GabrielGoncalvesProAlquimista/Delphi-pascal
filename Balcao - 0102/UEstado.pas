unit UEstado;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids, Buttons,
  ToolWin, ComCtrls, ActnList;

type
  TFestado = class(TForm)
    Panel1: TPanel;
    dsestado: TDataSource;
    tbestado: TTable;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCOD_UF: TDBEdit;
    EditESTADO: TDBEdit;
    DBGrid1: TDBGrid;
    ToolBar2: TToolBar;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    Panel7: TPanel;
    btnnovo: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    ActionList1: TActionList;
    novo: TAction;
    avancar: TAction;
    voltar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure tbestadoAfterScroll(DataSet: TDataSet);
    procedure tbestadoBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure novoExecute(Sender: TObject);
    procedure avancarExecute(Sender: TObject);
    procedure voltarExecute(Sender: TObject);
    procedure EditCOD_UFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditESTADOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbestadoAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { private declarations }
  public
  BOK : boolean;
  ST : String;
    { public declarations }
  end;

var
  Festado: TFestado;

implementation

{$R *.DFM}

procedure TFestado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         tbestado.edit;
           tbestado.Post;

        tbestado.close;
end;

procedure TFestado.btnPrimeiroClick(Sender: TObject);
begin
        tbestado.first;
end;

procedure TFestado.btnVoltarClick(Sender: TObject);
begin
        tbestado.prior;
end;

procedure TFestado.btnAvancarClick(Sender: TObject);
begin
        tbestado.Next;
end;

procedure TFestado.btnUltimoClick(Sender: TObject);
begin
        tbestado.last;
end;

procedure TFestado.btnnovoClick(Sender: TObject);
begin
        novoexecute(self);
end;

procedure TFestado.btngravarClick(Sender: TObject);
begin
        tbestado.edit;
         tbestado.post;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure TFestado.btncancelarClick(Sender: TObject);
begin
        tbestado.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure TFestado.Label1Click(Sender: TObject);
begin
        BOK := inputquery('Localizar UF','Entre com a sigla:',ST);
         if BOK then
          if not tbestado.Locate ('Estado',Uppercase(ST),[]) then
           ShowMessage ('UF não cadastrado !!!');
            ST := '';
end;

procedure TFestado.tbestadoAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbestado.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbestado.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure TFestado.tbestadoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;
end;

procedure TFestado.DBGrid1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure TFestado.DBGrid1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure TFestado.Label2Click(Sender: TObject);
begin
        BOK := inputquery('Localizar Estado','Entre com o nome de estado:',ST);
         if BOK then
          if not tbestado.Locate ('Nome',Uppercase(ST),[]) then
           ShowMessage ('Estado não cadastrado !!!');
            ST := '';
end;

procedure TFestado.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  Key := #0;
       Perform(WM_nextdlgctl,0,0)
 end else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure TFestado.novoExecute(Sender: TObject);
begin
       tbestado.insert;
      EditCOD_UF.setfocus;
     btnGravar.Enabled:=true;
    btncancelar.Enabled := true;     
end;

procedure TFestado.avancarExecute(Sender: TObject);
begin
        tbestado.next;
end;

procedure TFestado.voltarExecute(Sender: TObject);
begin
        tbestado.prior;
end;

procedure TFestado.EditCOD_UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label1Click(Self);
end;

procedure TFestado.EditESTADOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = VK_F1 then
         Label2Click(Self);
end;

procedure TFestado.tbestadoAfterPost(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure TFestado.FormShow(Sender: TObject);
begin
        tbestado.Last;
end;

procedure TFestado.FormCloseQuery(Sender: TObject; var CanClose: Boolean);

begin
        IF btngravar.Enabled = true then begin
         case application.MessageBox('Deseja salvar as alterações?', 'Sair do Cadastro de Vendedores',mb_yesnocancel + MB_ICONQUESTION )of

         idyes : begin
         tbestado.edit;
          tbestado.post;
           canclose:=true;
            end;

         idno : begin
          tbestado.cancel;
           canclose:=true;
            end;

         idcancel :
           canclose:=false;
end;
end;
end;
end.
