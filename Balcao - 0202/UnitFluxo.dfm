object FFluxo: TFFluxo
  Left = 22
  Top = 18
  BorderStyle = bsDialog
  Caption = 'FLUXO DE CAIXA'
  ClientHeight = 516
  ClientWidth = 749
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 749
    Height = 516
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Anal'#237'tico'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 741
        Height = 69
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 152
          Top = 51
          Width = 68
          Height = 13
          Caption = 'ENTRADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 528
          Top = 51
          Width = 46
          Height = 13
          Caption = 'SA'#205'DAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 201
          Top = 12
          Width = 182
          Height = 13
          Caption = 'PER'#205'ODO DE:                      A:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MaskEdit5: TMaskEdit
          Left = 288
          Top = 8
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnKeyDown = MaskEdit5KeyDown
        end
        object MaskEdit6: TMaskEdit
          Left = 389
          Top = 8
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = MaskEdit6KeyDown
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 69
        Width = 369
        Height = 401
        Align = alLeft
        BevelInner = bvLowered
        Caption = 'Panel2'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 2
          Width = 365
          Height = 397
          Align = alClient
          DataSource = dsentrada
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 5994677
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object Panel3: TPanel
        Left = 369
        Top = 69
        Width = 372
        Height = 401
        Align = alClient
        BevelInner = bvLowered
        Caption = 'Panel3'
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 2
          Top = 2
          Width = 368
          Height = 397
          Align = alClient
          DataSource = dssaida
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 5994677
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 470
        Width = 741
        Height = 18
        Align = alBottom
        Color = clBlack
        TabOrder = 3
        object labelentrada: TLabel
          Left = 1
          Top = 1
          Width = 219
          Height = 16
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object labelsaida: TLabel
          Left = 236
          Top = 1
          Width = 269
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object labelsaldo: TLabel
          Left = 512
          Top = 2
          Width = 200
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sint'#233'tico'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 741
        Height = 40
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 311
          Top = 8
          Width = 74
          Height = 22
          Caption = 'Ir Para...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
            00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
            70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
            70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
            70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
            70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
            70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
            00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label1: TLabel
          Left = 5
          Top = 12
          Width = 105
          Height = 13
          Caption = 'Entre com um per'#237'odo'
        end
        object MaskEdit1: TMaskEdit
          Left = 115
          Top = 8
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnKeyDown = MaskEdit1KeyDown
        end
        object MaskEdit2: TMaskEdit
          Left = 195
          Top = 8
          Width = 73
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = MaskEdit2KeyDown
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 40
        Width = 741
        Height = 448
        Align = alClient
        Color = 14869218
        DataSource = dssintetico
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimentos'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Entradas'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sa'#237'das'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ac'#250'mulo'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end>
      end
    end
  end
  object dssintetico: TDataSource
    DataSet = querysintetico
    Left = 276
    Top = 136
  end
  object dsentrada: TDataSource
    DataSet = queryentrada
    Left = 292
    Top = 264
  end
  object querysintetico: TQuery
    DatabaseName = 'dbbalcao'
    Left = 212
    Top = 144
  end
  object queryentrada: TQuery
    DatabaseName = 'dbbalcao'
    Left = 220
    Top = 264
  end
  object ActionList1: TActionList
    Left = 380
    Top = 136
    object fanalitico: TAction
      Caption = 'fanalitico'
      OnExecute = fanaliticoExecute
    end
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
  end
  object querysaida: TQuery
    DatabaseName = 'dbbalcao'
    Left = 445
    Top = 213
  end
  object dssaida: TDataSource
    DataSet = querysaida
    Left = 397
    Top = 253
  end
end
