object fpagar: Tfpagar
  Left = 29
  Top = 94
  Width = 727
  Height = 374
  Caption = 'CONTAS A PAGAR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = fmenu.PopupMenu1
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 719
    Height = 347
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Cadastro '
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 571
        Height = 319
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 402
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 312
        Align = alClient
        AutoScroll = False
        AutoSize = True
        BorderStyle = bsNone
        TabOrder = 0
        object Label19: TLabel
          Left = 0
          Top = 281
          Width = 571
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 105
          Width = 571
          Height = 176
          Align = alTop
          Caption = 'Vencimento / Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Bevel1: TBevel
            Left = 8
            Top = 16
            Width = 156
            Height = 39
          end
          object Label4: TLabel
            Left = 31
            Top = 18
            Width = 56
            Height = 13
            Caption = 'Vencimento'
            FocusControl = EditData_Vencimento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 232
            Top = 18
            Width = 65
            Height = 13
            Caption = 'Valor da Nota'
            FocusControl = EditValor_Titulo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 169
            Top = 18
            Width = 53
            Height = 13
            Caption = 'N'#186' da Nota'
            FocusControl = EditNumero_Pedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 8
            Top = 75
            Width = 64
            Height = 13
            Caption = 'Total a Pagar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 398
            Top = 18
            Width = 69
            Height = 13
            Caption = 'Desconto (R$)'
            FocusControl = EditCartorio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 472
            Top = 18
            Width = 60
            Height = 13
            Caption = 'Desconto(%)'
            FocusControl = EditCod_FAT
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 150
            Top = 75
            Width = 78
            Height = 13
            Caption = 'Tipo Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 304
            Top = 18
            Width = 87
            Height = 13
            Caption = 'Valor da Duplicata'
            FocusControl = DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 406
            Top = 75
            Width = 80
            Height = 13
            Caption = 'Data Pagamento'
            FocusControl = DBEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 123
            Width = 37
            Height = 13
            Caption = 'Contato'
            FocusControl = EditCod_Agencia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 200
            Top = 123
            Width = 24
            Height = 13
            Caption = 'Fone'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 349
            Top = 123
            Width = 75
            Height = 13
            Caption = 'Local Cobran'#231'a'
            FocusControl = DBEdit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EditData_Vencimento: TDBEdit
            Left = 7
            Top = 34
            Width = 66
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DataVencimento'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EditValor_Titulo: TDBEdit
            Left = 229
            Top = 34
            Width = 71
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ValorTitulo'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditNumero_Pedido: TDBEdit
            Left = 169
            Top = 34
            Width = 57
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NumeroPedido'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EditCartorio: TDBEdit
            Left = 396
            Top = 34
            Width = 73
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DescMoeda'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnChange = EditCartorioChange
            OnExit = EditCartorioExit
          end
          object EditCod_FAT: TDBEdit
            Left = 471
            Top = 34
            Width = 63
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DescPercent'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnChange = EditCod_FATChange
            OnExit = EditCod_FATExit
          end
          object DBEdit3: TDBEdit
            Left = 303
            Top = 34
            Width = 91
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Valordocumento'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnChange = DBEdit3Change
          end
          object DBEdit4: TDBEdit
            Left = 405
            Top = 91
            Width = 124
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DataPagamento'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnChange = DBEdit4Change
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 91
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VrDesconto'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBComboBox1: TDBComboBox
            Left = 150
            Top = 91
            Width = 251
            Height = 21
            DataField = 'Tipopgto'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'DEP'#211'SITO'
              'CHEQUE'
              'DINHEIRO'
              'BANC'#193'RIO'
              'DEVOLU'#199#195'O')
            ParentFont = False
            TabOrder = 8
          end
          object EditCod_Agencia: TDBEdit
            Left = 8
            Top = 139
            Width = 185
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Contato'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit8: TDBEdit
            Left = 74
            Top = 34
            Width = 85
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Venc1'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 198
            Top = 139
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Fone'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit9: TDBEdit
            Left = 349
            Top = 139
            Width = 180
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Localcobranca'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 47
          Width = 571
          Height = 58
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label33: TLabel
            Left = 211
            Top = 7
            Width = 49
            Height = 13
            Caption = 'Fantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 163
            Top = 7
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object Label31: TLabel
            Left = 83
            Top = 7
            Width = 55
            Height = 13
            Caption = 'Duplicata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
          end
          object Label1: TLabel
            Left = 84
            Top = 8
            Width = 55
            Height = 13
            Cursor = crHandPoint
            Caption = 'Duplicata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = Label1Click
          end
          object Label3: TLabel
            Left = 4
            Top = 8
            Width = 39
            Height = 13
            Caption = 'Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 164
            Top = 8
            Width = 40
            Height = 13
            Cursor = crHandPoint
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = Label2Click
          end
          object Label30: TLabel
            Left = 324
            Top = 8
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 212
            Top = 8
            Width = 49
            Height = 13
            Cursor = crHandPoint
            Caption = 'Fantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = Label11Click
          end
          object EditDocParcela: TDBEdit
            Left = 83
            Top = 24
            Width = 58
            Height = 21
            Hint = 'F1 (LOCALIZAR)'
            CharCase = ecUpperCase
            DataField = 'DocParcela'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyDown = EditDocParcelaKeyDown
          end
          object EditCod_Cliente: TDBEdit
            Left = 163
            Top = 24
            Width = 46
            Height = 21
            Hint = 'F1 (LOCALIZAR)'
            CharCase = ecUpperCase
            DataField = 'Codigo'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnKeyDown = EditCod_ClienteKeyDown
          end
          object EditData_Emissao: TDBEdit
            Left = 4
            Top = 24
            Width = 76
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DataEmissao'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 321
            Top = 24
            Width = 216
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Nome'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit2: TDBEdit
            Left = 212
            Top = 24
            Width = 105
            Height = 21
            Hint = 'F1 (LOCALIZAR)'
            CharCase = ecUpperCase
            DataField = 'Fantasia'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnKeyDown = DBEdit2KeyDown
          end
          object DBEdit5: TDBEdit
            Left = 143
            Top = 24
            Width = 15
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Letra'
            DataSource = dspagar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 571
          Height = 47
          Align = alTop
          BevelInner = bvLowered
          Caption = 'Panel2'
          TabOrder = 2
          object ToolBar1: TToolBar
            Left = 2
            Top = 2
            Width = 567
            Height = 43
            Align = alClient
            AutoSize = True
            ButtonHeight = 38
            Caption = 'ToolBar1'
            TabOrder = 0
            object btnPrimeiro: TSpeedButton
              Left = 0
              Top = 2
              Width = 30
              Height = 38
              Hint = 'Primeiro Registro'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF3333333333333744333333333333F773333333333337
                44473333333333F777F3333333333744444333333333F7733733333333374444
                4433333333F77333733333333744444447333333F7733337F333333744444444
                433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                CCC333333333333777FF33333333333333CC3333333333333773}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnPrimeiroClick
            end
            object btnVoltar: TSpeedButton
              Left = 30
              Top = 2
              Width = 30
              Height = 38
              Hint = 'Registro Anterior (PgUp)'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                3333333333777F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                3333333777737777F333333099999990333333373F3333373333333309999903
                333333337F33337F33333333099999033333333373F333733333333330999033
                3333333337F337F3333333333099903333333333373F37333333333333090333
                33333333337F7F33333333333309033333333333337373333333333333303333
                333333333337F333333333333330333333333333333733333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnVoltarClick
            end
            object btnAvancar: TSpeedButton
              Left = 60
              Top = 2
              Width = 30
              Height = 38
              Hint = 'Pr'#243'ximo Registro (PgDn)'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnAvancarClick
            end
            object btnUltimo: TSpeedButton
              Left = 90
              Top = 2
              Width = 30
              Height = 38
              Hint = #218'ltimo Registro'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FF3333333333333447333333333333377FFF33333333333744473333333
                333337773FF3333333333444447333333333373F773FF3333333334444447333
                33333373F3773FF3333333744444447333333337F333773FF333333444444444
                733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
                999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
                33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
                333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
                33333777333333333333CC333333333333337733333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnUltimoClick
            end
            object Panel6: TPanel
              Left = 120
              Top = 2
              Width = 3
              Height = 38
              BevelInner = bvLowered
              TabOrder = 3
            end
            object Panel4: TPanel
              Left = 123
              Top = 2
              Width = 3
              Height = 38
              BevelInner = bvLowered
              TabOrder = 0
            end
            object btnnovo: TSpeedButton
              Left = 126
              Top = 2
              Width = 52
              Height = 38
              Hint = 'Insert'
              Caption = '&Novo'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333000003333333333F777773FF333333008877700
                33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
                703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
                77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
                07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
                780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
                8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
                3333333773FFFF77333333333000003333333333377777333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnnovoClick
            end
            object Panel7: TPanel
              Left = 178
              Top = 2
              Width = 3
              Height = 38
              BevelInner = bvLowered
              TabOrder = 2
            end
            object btngravar: TSpeedButton
              Left = 181
              Top = 2
              Width = 52
              Height = 38
              Caption = '&Gravar'
              Enabled = False
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
                70E337F33333333337F3E0F33333333370E337F3333FFF3337F3E0F337000733
                70E337F333777FF337F3E0F33000003370E337F3377777F337F3E0F330000033
                70E337F3377777F337F3E0F33000003370E337F33777773337F3E0F337000733
                70E337F33377733337F3E0F33333333370E337F33333333337F3E0F333333333
                70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
                00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = btngravarClick
            end
            object btncancelar: TSpeedButton
              Left = 233
              Top = 2
              Width = 49
              Height = 38
              Caption = '&Cancelar'
              Enabled = False
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
                333333333333333333333333333333333333333FFF33FF333FFF339993370733
                999333777FF37FF377733339993000399933333777F777F77733333399970799
                93333333777F7377733333333999399933333333377737773333333333990993
                3333333333737F73333333333331013333333333333777FF3333333333910193
                333333333337773FF3333333399000993333333337377737FF33333399900099
                93333333773777377FF333399930003999333337773777F777FF339993370733
                9993337773337333777333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = btncancelarClick
            end
            object Panel8: TPanel
              Left = 282
              Top = 2
              Width = 3
              Height = 38
              BevelInner = bvLowered
              TabOrder = 4
            end
            object Panel5: TPanel
              Left = 285
              Top = 2
              Width = 3
              Height = 38
              BevelInner = bvLowered
              TabOrder = 1
            end
            object SpeedButton5: TSpeedButton
              Left = 288
              Top = 2
              Width = 52
              Height = 38
              Caption = '&Imprimir...'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                0003377777777777777308888888888888807F33333333333337088888888888
                88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
                8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
                8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = SpeedButton5Click
            end
          end
        end
        object MemoInstruc: TDBMemo
          Left = 0
          Top = 294
          Width = 571
          Height = 25
          Align = alBottom
          DataField = 'Obs'
          DataSource = dspagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object Panel3: TPanel
        Left = 571
        Top = 0
        Width = 140
        Height = 319
        Align = alRight
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 43
          Width = 136
          Height = 274
          Align = alClient
          Color = clBtnFace
          DataSource = dspagar
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DOCPARCELA'
              Width = 85
              Visible = True
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'LETRA'
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 2
          Top = 2
          Width = 136
          Height = 41
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object Label29: TLabel
            Left = 43
            Top = 2
            Width = 52
            Height = 13
            Caption = 'Localizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 2
            Top = 17
            Width = 131
            Height = 21
            CharCase = ecUpperCase
            Color = 14540253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnChange = Edit1Change
            OnKeyDown = Edit1KeyDown
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 72
        Width = 711
        Height = 221
        Align = alClient
        Color = 14540253
        DataSource = dspagar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCPARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Doc. Parcela'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LETRA'
            Title.Alignment = taCenter
            Title.Caption = '-'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 17
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Pagamento'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORDOCUMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 14609647
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 711
        Height = 72
        ButtonHeight = 64
        Caption = 'ToolBar2'
        TabOrder = 1
        object GroupBox5: TGroupBox
          Left = 0
          Top = 2
          Width = 785
          Height = 64
          Align = alClient
          Caption = 'Filtros (Data Vencimento)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 164
            Top = 16
            Width = 38
            Height = 38
            Caption = 'Pago'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 201
            Top = 16
            Width = 70
            Height = 38
            Caption = 'N'#227'o Pago'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 270
            Top = 16
            Width = 92
            Height = 38
            Caption = 'Fornecedor (Geral)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton3Click
          end
          object SpeedButton4: TSpeedButton
            Left = 362
            Top = 16
            Width = 93
            Height = 38
            Caption = 'Fornecedor (Pago)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton4Click
          end
          object SpeedButton6: TSpeedButton
            Left = 455
            Top = 16
            Width = 115
            Height = 38
            Caption = 'Fornecedor (N'#227'o Pago)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton6Click
          end
          object SpeedButton8: TSpeedButton
            Left = 570
            Top = 16
            Width = 34
            Height = 38
            Caption = 'Todos'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton8Click
          end
          object SpeedButton9: TSpeedButton
            Left = 603
            Top = 16
            Width = 54
            Height = 38
            Caption = 'Imprimir...'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton9Click
          end
          object Label34: TLabel
            Left = 8
            Top = 16
            Width = 17
            Height = 13
            Caption = 'De:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 8
            Top = 40
            Width = 10
            Height = 13
            Caption = 'A:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object MaskEdit1: TMaskEdit
            Left = 28
            Top = 14
            Width = 70
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = MaskEdit1KeyDown
          end
          object MaskEdit2: TMaskEdit
            Left = 28
            Top = 40
            Width = 70
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyDown = MaskEdit2KeyDown
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 293
        Width = 711
        Height = 26
        Align = alBottom
        Alignment = taRightJustify
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object dspagar: TDataSource
    DataSet = tbpagar
    Left = 565
    Top = 131
  end
  object tbpagar: TTable
    BeforeEdit = tbpagarBeforeEdit
    AfterPost = tbpagarAfterPost
    AfterScroll = tbpagarAfterScroll
    DatabaseName = 'dbbalcao'
    IndexFieldNames = 'DocParcela'
    TableName = 'tbpagar.db'
    Left = 609
    Top = 187
  end
  object tbfornecedor: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'TbFornecedor.DB'
    Left = 564
    Top = 209
  end
  object ActionList1: TActionList
    Left = 624
    Top = 232
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
    object novo: TAction
      Caption = 'novo'
      ShortCut = 45
      OnExecute = novoExecute
    end
    object avancar: TAction
      Caption = 'avancar'
      ShortCut = 34
      OnExecute = avancarExecute
    end
    object voltar: TAction
      Caption = 'voltar'
      ShortCut = 33
      OnExecute = voltarExecute
    end
    object foco: TAction
      Caption = 'foco'
      ShortCut = 113
      OnExecute = focoExecute
    end
    object preencherdornecedor: TAction
      Caption = 'preencherdornecedor'
      OnExecute = preencherdornecedorExecute
    end
  end
end
