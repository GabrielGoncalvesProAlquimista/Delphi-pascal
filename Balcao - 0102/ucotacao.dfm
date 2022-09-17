object fcotacao: Tfcotacao
  Left = 14
  Top = 61
  BorderStyle = bsDialog
  Caption = 'COTA'#199#195'O DE PRODUTO'
  ClientHeight = 407
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 742
    Height = 374
    Align = alClient
    Color = 14869218
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 33
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object Label2: TLabel
      Left = -4
      Top = 4
      Width = 600
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Demonstrativo de entradas de produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = -2
      Top = 5
      Width = 600
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Demonstrativo de entradas de produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object DataSource1: TDataSource
    DataSet = fmenu.Query1
    Left = 104
    Top = 120
  end
end
