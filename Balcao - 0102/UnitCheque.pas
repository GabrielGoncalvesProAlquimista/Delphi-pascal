unit UnitCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Mask, DBCtrls, variants, ExtCtrls, ComCtrls, Db, DBTables,
  Grids, DBGrids;

type
  TFormCheque = class(TForm)
    DSTabelaCheque: TDataSource;
    TabelaCheque: TTable;
    PageCheque: TPageControl;
    TabCheque: TTabSheet;
    TabConsulta: TTabSheet;
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditEntrada: TDBEdit;
    EditNumero: TDBEdit;
    EditCliente: TDBEdit;
    EditAgencia: TDBEdit;
    EditConta: TDBEdit;
    EditBanco: TDBEdit;
    EditValor: TDBEdit;
    EditVencimento: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton5: TSpeedButton;
    Label11: TLabel;
    EditDestino: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheque: TFormCheque;

implementation


{$R *.DFM}





procedure TFormCheque.SpeedButton1Click(Sender: TObject);
begin
     TabelaCheque.Insert;
      EditEntrada.SetFocus;
       //Contr := 'Novo';
end;

procedure TFormCheque.Label2Click(Sender: TObject);
Var
LocCod:String;
begin
      LocCod:=Inputbox('Procura','Entre com o número do Cheque!','');
       if not TabelaCheque.locate('numero',LocCod,[])then
        ShowMessage('Cheque não encontrado');

end;

procedure TFormCheque.SpeedButton2Click(Sender: TObject);
begin
     TabelaCheque.Edit;
       TabelaCheque.Post;
end;

procedure TFormCheque.SpeedButton3Click(Sender: TObject);
begin
     TabelaCheque.Cancel;
end;

procedure TFormCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        TabelaCheque.edit;
         TabelaCheque.Post;

     TabelaCheque.Close;
end;

procedure TFormCheque.FormActivate(Sender: TObject);
begin
     PageCheque.ActivePage:=TabCheque;
end;

procedure TFormCheque.SpeedButton5Click(Sender: TObject);
begin
        if Application.MessageBox('Deseja deletar este cheque? ','Confirme',
        4) = idYes then TabelaCheque.Delete;
end;
procedure TFormCheque.MaskEdit1Enter(Sender: TObject);
begin
        keypreview:=False;
end;

procedure TFormCheque.MaskEdit1Exit(Sender: TObject);
begin
        KeyPreview:=True;
end;

procedure TFormCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
       Perform(WM_nextdlgctl,0,0)
 Else if Key = #27 then
   Perform(WM_nextdlgctl,1,0)
end;

procedure TFormCheque.FormShow(Sender: TObject);
begin
        tabelacheque.Last;
end;

end.
