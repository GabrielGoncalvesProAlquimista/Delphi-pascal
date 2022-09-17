unit uestoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, Qrctrls, QuickRpt, ExtCtrls, Buttons, ToolWin,
  ComCtrls;

type
  Tfestoque = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  festoque: Tfestoque;

implementation

uses UnitMenu;

{$R *.DFM}

procedure Tfestoque.SpeedButton1Click(Sender: TObject);
begin
        quickrep1.preview;
end;

procedure Tfestoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        fmenu.query1.close;
end;

end.
