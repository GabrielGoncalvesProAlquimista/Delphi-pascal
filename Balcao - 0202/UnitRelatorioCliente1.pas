unit UnitRelatorioCliente1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tformrelatoriocliente1 = class(TForm)
    Quickficha: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText41: TQRDBText;
    Memo1: TQRMemo;
    Image1: TQRImage;
    Quicketiqueta: TQuickRep;
    QRBand9: TQRBand;
    QRExprMemo1: TQRExprMemo;
    QRGroup4: TQRGroup;
    QRLabel50: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRShape1: TQRShape;
    quickestado: TQuickRep;
    QRBand7: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    memo2: TQRMemo;
    image2: TQRImage;
    QRGroup1: TQRGroup;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    QRSysData6: TQRSysData;
    QRBand8: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRExpr5: TQRExpr;
    quickcidade: TQuickRep;
    QRBand2: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData4: TQRSysData;
    memo3: TQRMemo;
    image3: TQRImage;
    QRGroup2: TQRGroup;
    QRLabel16: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRBand3: TQRBand;
    QRSysData5: TQRSysData;
    QRBand4: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRExpr1: TQRExpr;
    quickbairro: TQuickRep;
    QRBand5: TQRBand;
    LTITULO: TQRLabel;
    QRSysData7: TQRSysData;
    MEMO4: TQRMemo;
    IMAGE4: TQRImage;
    QRGroup3: TQRGroup;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand6: TQRBand;
    QRSysData8: TQRSysData;
    QRBand10: TQRBand;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRExpr2: TQRExpr;
    QUICKVENDEDOR: TQuickRep;
    QRBand11: TQRBand;
    QRLabel28: TQRLabel;
    QRSysData9: TQRSysData;
    memo5: TQRMemo;
    image5: TQRImage;
    QRGroup5: TQRGroup;
    QRLabel36: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand12: TQRBand;
    QRSysData10: TQRSysData;
    QRBand13: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRExpr3: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formrelatoriocliente1: Tformrelatoriocliente1;

implementation

{$R *.dfm}

end.
