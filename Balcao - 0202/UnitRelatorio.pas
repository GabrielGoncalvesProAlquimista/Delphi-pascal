unit UnitRelatorio;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls;

type
  Tfrpedido = class(TForm)
    Quickorcamento: TQuickRep;
    QRBand4: TQRBand;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand7: TQRBand;
    QRSysData3: TQRSysData;
    QRBand8: TQRBand;
    QRShape3: TQRShape;
    QRSysData4: TQRSysData;
    QRShape4: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText37: TQRDBText;
    QRShape5: TQRShape;
    image3: TQRImage;
    memo3: TQRMemo;
    QRSubDetail1: TQRSubDetail;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRBand9: TQRBand;
    QRLabel54: TQRLabel;
    QRDBText47: TQRDBText;
    quickpedido1: TQuickRep;
    QRGroup3: TQRGroup;
    QRGroup7: TQRGroup;
    QRDBText19: TQRDBText;
    QRGroup8: TQRGroup;
    QRExpr7: TQRExpr;
    QRLabel61: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel55: TQRLabel;
    QRBand11: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText52: TQRDBText;
    QRBand5: TQRBand;
    QRLabel50: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand13: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr9: TQRExpr;
    QRBand17: TQRBand;
    QRLabel40: TQRLabel;
    QRExpr10: TQRExpr;
    ChildBand1: TQRChildBand;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    image2: TQRImage;
    memo2: TQRMemo;
    quickpedido: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel67: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape47: TQRShape;
    PageFooterBand1: TQRBand;
    ltitulopedido: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRShape12: TQRShape;
    QRSysData9: TQRSysData;
    QRShape16: TQRShape;
    QRDBText78: TQRDBText;
    QRLabel89: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel94: TQRLabel;
    QRLabel86: TQRLabel;
    QRDBText75: TQRDBText;
    QRDBText77: TQRDBText;
    QRLabel88: TQRLabel;
    QRDBText74: TQRDBText;
    QRDBText79: TQRDBText;
    QRLabel90: TQRLabel;
    QRDBText89: TQRDBText;
    QRLabel93: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText70: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel84: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel82: TQRLabel;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRLabel83: TQRLabel;
    QRLabel92: TQRLabel;
    LabelNome: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape1: TQRShape;
    memo1: TQRMemo;
    IMAGE1: TQRImage;
    QRSubDetail5: TQRSubDetail;
    QRDBText36: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText55: TQRDBText;
    QRBand6: TQRBand;
    QRLabel98: TQRLabel;
    QRDBText87: TQRDBText;
    Quickvenda: TQuickRep;
    QRBand10: TQRBand;
    QRDBText20: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRShape22: TQRShape;
    QRDBText21: TQRDBText;
    QRGroup2: TQRGroup;
    QRShape21: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel58: TQRLabel;
    QRDBText58: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel14: TQRLabel;
    memo4: TQRMemo;
    QRBand12: TQRBand;
    QRLabel59: TQRLabel;
    QRDBText60: TQRDBText;
    QRLabel60: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText62: TQRDBText;
    QRShape25: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frpedido: Tfrpedido;

implementation


{$R *.DFM}

end.
