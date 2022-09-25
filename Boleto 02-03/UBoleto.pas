unit UBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, Mask, DBCtrls, ComCtrls,
  Grids, DBGrids, Buttons, ToolWin, QRCtrls, QuickRpt;

type
  Tfboleto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    dsboleto: TDataSource;
    tbboleto: TTable;
    tbboletoChave: TAutoIncField;
    tbboletoNlocal: TFloatField;
    tbboletoLocal: TStringField;
    tbboletoCedente: TStringField;
    tbboletoNcedente: TStringField;
    tbboletoDatadocumento: TDateField;
    tbboletoNdocumento: TStringField;
    tbboletoEspecie: TStringField;
    tbboletoAceite: TStringField;
    tbboletoDataprocesso: TDateField;
    tbboletoUsobanco: TStringField;
    tbboletoCarteira: TStringField;
    tbboletoSacado: TStringField;
    tbboletoCgccpf: TStringField;
    tbboletoSacadoAvalista: TStringField;
    tbboletoCodigobaixa: TStringField;
    tbboletoVencimento: TDateField;
    tbboletoAgCodigoCedente: TStringField;
    tbboletoNossonumero: TStringField;
    tbboletoValor: TFloatField;
    tbboletoDesconto: TFloatField;
    tbboletoMulta: TFloatField;
    tbboletoTotal: TFloatField;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    DBMemo2: TDBMemo;
    tbcomplemento: TTable;
    dscomplemento: TDataSource;
    Label18: TLabel;
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
    Panel3: TPanel;
    btnimprimir: TSpeedButton;
    Panel9: TPanel;
    Panel14: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    EditNlocal: TDBEdit;
    EditLocal: TDBEdit;
    Label4: TLabel;
    EditCedente: TDBEdit;
    EditNcedente: TDBEdit;
    Label5: TLabel;
    Label8: TLabel;
    EditEspecie: TDBEdit;
    EditNdocumento: TDBEdit;
    Label7: TLabel;
    EditDatadocumento: TDBEdit;
    Label6: TLabel;
    Label9: TLabel;
    EditAceite: TDBEdit;
    EditDataprocesso: TDBEdit;
    Label11: TLabel;
    EditUsobanco: TDBEdit;
    Bevel1: TBevel;
    EditCarteira: TDBEdit;
    Label12: TLabel;
    Label15: TLabel;
    EditCgccpf: TDBEdit;
    Label17: TLabel;
    EditCodigobaixa: TDBEdit;
    EditSacadoAvalista: TDBEdit;
    Label16: TLabel;
    EditSacado: TDBEdit;
    Label14: TLabel;
    Bevel2: TBevel;
    Label19: TLabel;
    EditVencimento: TDBEdit;
    Label23: TLabel;
    EditDesconto: TDBEdit;
    EditMulta: TDBEdit;
    Label24: TLabel;
    EditAgCodigoCedente: TDBEdit;
    Label20: TLabel;
    EditNossonumero: TDBEdit;
    Label21: TLabel;
    Label25: TLabel;
    EditTotal: TDBEdit;
    Label22: TLabel;
    EditValor: TDBEdit;
    Bevel3: TBevel;
    Label10: TLabel;
    Panel4: TPanel;
    Panel10: TPanel;
    Label26: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    LINSTRUCAO: TQRLabel;
    LOBS: TQRLabel;
    QRShape19: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    procedure DBMemo1Exit(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure tbboletoAfterOpen(DataSet: TDataSet);
    procedure tbboletoAfterScroll(DataSet: TDataSet);
    procedure tbboletoBeforeEdit(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure tbboletoCalcFields(DataSet: TDataSet);
    procedure btnimprimirClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fboleto: Tfboleto;

implementation

{$R *.dfm}

procedure Tfboleto.DBMemo1Exit(Sender: TObject);
begin
        tbcomplemento.Edit;
         tbcomplemento.post;
end;

procedure Tfboleto.btngravarClick(Sender: TObject);
begin
         tbboleto.Edit;
          tbboleto.Post;
           btngravar.Enabled:=false;
            btncancelar.Enabled:=false;
end;

procedure Tfboleto.btncancelarClick(Sender: TObject);
begin
        tbboleto.cancel;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
end;

procedure Tfboleto.SpeedButton21Click(Sender: TObject);
begin
          if Application.MessageBox('Deseja excluir este cliente? ',
         'Confirme', 4)= idYes then begin

        tbboleto.delete;
          btnGravar.Enabled:=false;
           btncancelar.enabled := false;
        end;

end;

procedure Tfboleto.tbboletoAfterOpen(DataSet: TDataSet);
begin
        btngravar.enabled := false;
        btncancelar.enabled := false;
end;

procedure Tfboleto.tbboletoAfterScroll(DataSet: TDataSet);
begin
           btnAvancar.Enabled := True;
            btnUltimo.Enabled := True;
             btnPrimeiro.Enabled := True;
              btnVoltar.Enabled := True;

        if tbboleto.Bof then begin
         btnPrimeiro.Enabled := False;
          btnVoltar.Enabled := False;

             end;

        if tbboleto.Eof then begin

           btnAvancar.Enabled := False;
            btnUltimo.Enabled := False;
             end;

end;

procedure Tfboleto.tbboletoBeforeEdit(DataSet: TDataSet);
begin
       btnGravar.Enabled:=True;
       btncancelar.enabled := true;

end;

procedure Tfboleto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then begin
  key := #0;
       Perform(WM_nextdlgctl,0,0);
 end Else if Key = #27 then
   Perform(WM_nextdlgctl,1,0);
end;

procedure Tfboleto.FormActivate(Sender: TObject);
begin

        tbboleto.Open;
        tbcomplemento.open;
        pagecontrol1.ActivePageIndex := 0;
end;

procedure Tfboleto.Edit1Change(Sender: TObject);
begin
        tbboleto.FindNearest([edit1.text]);
end;

procedure Tfboleto.btnPrimeiroClick(Sender: TObject);
begin
        tbboleto.First;
end;

procedure Tfboleto.btnnovoClick(Sender: TObject);
begin
        tbboleto.Insert;
         editnlocal.SetFocus;
end;

procedure Tfboleto.btnVoltarClick(Sender: TObject);
begin
        tbboleto.Prior;
end;

procedure Tfboleto.btnAvancarClick(Sender: TObject);
begin
        tbboleto.Next;
end;

procedure Tfboleto.btnUltimoClick(Sender: TObject);
begin
        tbboleto.Last;
end;

procedure Tfboleto.tbboletoCalcFields(DataSet: TDataSet);
begin
        tbboletototal.Value := tbboletovalor.Value - tbboletodesconto.Value + tbboletomulta.Value;
end;

procedure Tfboleto.btnimprimirClick(Sender: TObject);
var
bookmark : tbookmarkstr;
begin

     bookmark := tbboleto.Bookmark;

        linstrucao.Caption := dbmemo1.Text;
        lobs.Caption := DBMemo2.Text;

        tbboleto.Filter := 'sacado= ''' + editsacado.Text + '''';
        tbboleto.Filtered := true;

        quickrep1.PreviewModal;
        tbboleto.Filtered := false;

        tbboleto.Bookmark := bookmark;

end;

procedure Tfboleto.PageControl1Change(Sender: TObject);
begin
        IF pagecontrol1.ActivePageIndex = 0 then
         keypreview := true
          else
         keypreview := false; 

end;

procedure Tfboleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        tbboleto.close;
        tbcomplemento.close;
end;

end.
