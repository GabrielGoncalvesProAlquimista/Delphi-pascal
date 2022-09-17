object FormDadoEmpresa: TFormDadoEmpresa
  Left = 136
  Top = 50
  BorderStyle = bsDialog
  Caption = 'Dados da Empresa'
  ClientHeight = 308
  ClientWidth = 500
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 56
    Width = 620
    Height = 169
  end
  object Label1: TLabel
    Left = 168
    Top = 31
    Width = 295
    Height = 13
    Caption = 'NOME DA EMPRESA, ENDERE'#199'O, FONES, EMAIL '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 0
    Top = 0
    Width = 500
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Preencha aqui os dados da sua empresa para o CABE'#199'ALHO dos relat' +
      #243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 25
    Top = 80
    Width = 104
    Height = 22
    Caption = 'LOGOTIPO'
    OnClick = SpeedButton1Click
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 263
    Width = 75
    Height = 25
    Caption = '&Gravar'
    DragKind = dkDock
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 263
    Width = 73
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Memo1: TMemo
    Left = 144
    Top = 88
    Width = 337
    Height = 127
    Color = clSilver
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Image1: TDBImage
    Left = 24
    Top = 112
    Width = 105
    Height = 105
    Color = clSilver
    Stretch = True
    TabOrder = 3
  end
  object open1: TOpenPictureDialog
    Filter = 'BITMAP|*.BMP'
    Left = 424
    Top = 256
  end
end
