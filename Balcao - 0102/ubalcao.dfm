object fbalcao: Tfbalcao
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = 'VENDA NO BALC'#195'O'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = fmenu.PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 800
    Height = 553
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 796
      Height = 107
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 792
        Height = 47
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 786
          Height = 41
          Align = alClient
          AutoSize = True
          ButtonHeight = 37
          Caption = 'ToolBar1'
          Color = clSilver
          ParentColor = False
          TabOrder = 0
          object btnPrimeiro: TSpeedButton
            Left = 0
            Top = 2
            Width = 30
            Height = 37
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
            Height = 37
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
            Height = 37
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
            Height = 37
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
          object Panel10: TPanel
            Left = 120
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 2
          end
          object Panel7: TPanel
            Left = 123
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 0
          end
          object btnnovo: TSpeedButton
            Left = 126
            Top = 2
            Width = 78
            Height = 37
            Hint = 'Insert'
            Caption = '&Nova Venda...'
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
          object Panel13: TPanel
            Left = 204
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 4
          end
          object btngravar: TSpeedButton
            Left = 207
            Top = 2
            Width = 59
            Height = 37
            Caption = 'Con&firmar'
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
          object Panel12: TPanel
            Left = 266
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 3
          end
          object btncancelar: TSpeedButton
            Left = 269
            Top = 2
            Width = 59
            Height = 37
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
            Left = 328
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 1
          end
          object SpeedButton8: TSpeedButton
            Left = 331
            Top = 2
            Width = 59
            Height = 37
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
            OnClick = SpeedButton8Click
          end
          object Panel4: TPanel
            Left = 390
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 5
          end
          object btncontas: TSpeedButton
            Left = 393
            Top = 2
            Width = 72
            Height = 37
            Caption = 'G&erar Conta'
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
              000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
              99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
              0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
              FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
              0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
              000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
              00FF3777773333F77733333333333000033F3333333337777333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = btncontasClick
          end
        end
      end
      object ScrollBox2: TScrollBox
        Left = 2
        Top = 49
        Width = 792
        Height = 56
        Align = alClient
        TabOrder = 0
        object Panel21: TPanel
          Left = 0
          Top = 0
          Width = 788
          Height = 52
          Align = alClient
          BevelInner = bvLowered
          BevelWidth = 2
          BorderWidth = 2
          Color = 12041930
          TabOrder = 0
          object Label4: TLabel
            Left = 518
            Top = 19
            Width = 61
            Height = 13
            Caption = 'VENDA N'#170
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 310
            Top = 19
            Width = 34
            Height = 13
            Caption = 'DATA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 520
            Top = 19
            Width = 61
            Height = 13
            Cursor = crHandPoint
            Caption = 'VENDA N'#186
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = Label1Click
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 6
            Top = 6
            Width = 227
            Height = 40
            Align = alLeft
            Caption = 'Opera'#231#227'o'
            Columns = 2
            DataField = 'Operacao'
            DataSource = dspedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Items.Strings = (
              'OR'#199'AMENTO'
              'VENDA')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'O'
              'P')
            OnExit = DBRadioGroup1Exit
          end
          object EditDtaEm: TDBEdit
            Left = 357
            Top = 11
            Width = 123
            Height = 28
            CharCase = ecUpperCase
            Color = 14671839
            DataField = 'Data'
            DataSource = dspedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object EditCodPed: TDBEdit
            Left = 588
            Top = 11
            Width = 133
            Height = 28
            Hint = 'F1 (LOCALIZAR)'
            CharCase = ecUpperCase
            Color = 14671839
            DataField = 'Pedido'
            DataSource = dspedido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnKeyDown = EditCodPedKeyDown
          end
        end
      end
    end
    object Panel11: TPanel
      Left = 0
      Top = 107
      Width = 124
      Height = 440
      Align = alLeft
      BorderWidth = 2
      Color = clBlack
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 118
        Height = 240
        Align = alClient
        Color = clSilver
        ParentColor = False
        TabOrder = 0
        object Label2: TLabel
          Left = 5
          Top = 93
          Width = 71
          Height = 13
          Caption = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 145
          Width = 37
          Height = 13
          Caption = 'PRE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 195
          Width = 35
          Height = 13
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 5
          Top = 42
          Width = 110
          Height = 13
          Caption = 'COD. PRODUTO (F12)'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 6
          Top = 13
          Width = 106
          Height = 21
          Caption = 'Novo '#205'tem (Ctrl + Ins)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object EditQtd: TDBEdit
          Left = 5
          Top = 108
          Width = 109
          Height = 21
          Color = clBlack
          DataField = 'Qtd'
          DataSource = dsitem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = EditQtdExit
        end
        object EditSubtotal: TDBEdit
          Left = 5
          Top = 210
          Width = 109
          Height = 21
          Color = clBlack
          DataField = 'Total'
          DataSource = dsitem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object EditPreco: TDBEdit
          Left = 5
          Top = 159
          Width = 109
          Height = 21
          Color = clBlack
          DataField = 'Vrunit'
          DataSource = dsitem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = EditPrecoExit
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 57
          Width = 109
          Height = 21
          Hint = 'F12 = consulta, F3 = Estoque'
          Color = clBlack
          DataField = 'Codigo'
          DataSource = dsitem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = EditQtdExit
          OnKeyDown = DBEdit1KeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 243
        Width = 118
        Height = 194
        Align = alBottom
        Color = clSilver
        ParentColor = False
        TabOrder = 1
        object Label10: TLabel
          Left = 5
          Top = 18
          Width = 75
          Height = 13
          Caption = 'TOTAL VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 5
          Top = 146
          Width = 38
          Height = 13
          Caption = 'TROCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 5
          Top = 85
          Width = 55
          Height = 13
          Caption = 'RECEBIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditTotal: TDBEdit
          Left = 5
          Top = 32
          Width = 110
          Height = 21
          Color = clBlack
          DataField = 'Total'
          DataSource = dspedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditRecebido: TDBEdit
          Left = 5
          Top = 99
          Width = 110
          Height = 21
          Color = clBlack
          DataField = 'Recebido'
          DataSource = dspedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = EditRecebidoExit
        end
        object EditTroco: TDBEdit
          Left = 4
          Top = 161
          Width = 110
          Height = 21
          Color = clBlack
          DataField = 'Troco'
          DataSource = dspedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
    object Panel14: TPanel
      Left = 617
      Top = 107
      Width = 179
      Height = 440
      Align = alRight
      BevelInner = bvLowered
      BorderWidth = 2
      BorderStyle = bsSingle
      Color = clBlack
      TabOrder = 2
      object DBGrid3: TDBGrid
        Left = 4
        Top = 27
        Width = 167
        Height = 382
        Align = alClient
        Color = 15658734
        DataSource = dsitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Lista de Produtos'
            Title.Color = clBlack
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 193
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 4
        Top = 409
        Width = 167
        Height = 23
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DBEdit2: TDBEdit
          Left = 45
          Top = 0
          Width = 96
          Height = 21
          DataField = 'Total'
          DataSource = dspedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel9: TPanel
        Left = 4
        Top = 4
        Width = 167
        Height = 23
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 2
        object SpeedButton2: TSpeedButton
          Left = 4
          Top = 3
          Width = 163
          Height = 18
          Caption = 'Excluir '#237'tem selecionado'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
        end
      end
    end
    object Panel18: TPanel
      Left = 124
      Top = 107
      Width = 493
      Height = 440
      Align = alClient
      BevelInner = bvLowered
      Caption = 'Panel18'
      TabOrder = 3
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 489
        Height = 436
        Align = alClient
        BevelInner = bvLowered
        BorderWidth = 2
        Caption = 'Panel5'
        Color = clBlack
        TabOrder = 0
        object Image1: TDBImage
          Left = 4
          Top = 4
          Width = 481
          Height = 411
          Align = alClient
          Color = clSilver
          TabOrder = 0
        end
        object Panel19: TPanel
          Left = 4
          Top = 415
          Width = 481
          Height = 17
          Align = alBottom
          Caption = 'Panel19'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 547
      Width = 796
      Height = 2
      Align = alBottom
      BevelInner = bvLowered
      Color = clBlack
      TabOrder = 4
    end
  end
  object tbpedido: TTable
    BeforeEdit = tbpedidoBeforeEdit
    AfterScroll = tbpedidoAfterScroll
    DatabaseName = 'dbbalcao'
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftFloat
      end
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Codigo'
        DataType = ftFloat
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Vendedor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Transportadora'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end
      item
        Name = 'Baixa'
        DataType = ftFloat
      end
      item
        Name = 'Saldo'
        DataType = ftFloat
      end
      item
        Name = 'Operacao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Municipio'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Uf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'Cgc/cpf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ie/rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Prazopgto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Spedido'
        DataType = ftFloat
      end
      item
        Name = 'Recebido'
        DataType = ftFloat
      end
      item
        Name = 'Troco'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tbpedidoIndex1'
        Fields = 'Pedido'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'tbpedido.DB'
    Left = 570
    Top = 258
  end
  object dspedido: TDataSource
    DataSet = tbpedido
    Left = 282
    Top = 410
  end
  object tbitem: TTable
    BeforeEdit = tbitemBeforeEdit
    AfterScroll = tbitemAfterScroll
    OnNewRecord = tbitemNewRecord
    DatabaseName = 'dbbalcao'
    IndexName = 'ByLink'
    MasterFields = 'Pedido'
    MasterSource = dspedido
    TableName = 'tbpedidoitem.DB'
    Left = 272
    Top = 330
  end
  object dsitem: TDataSource
    DataSet = tbitem
    Left = 510
    Top = 290
  end
  object tbcliente: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'TbCliente.DB'
    Left = 158
    Top = 314
  end
  object tbproduto: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'tbproduto.DB'
    Left = 158
    Top = 240
  end
  object ActionList1: TActionList
    Left = 320
    Top = 216
    object Totalizar: TAction
      Caption = 'Totalizar'
      OnExecute = TotalizarExecute
    end
    object preencher: TAction
      Caption = 'preencher'
      OnExecute = preencherExecute
    end
    object Excluir: TAction
      Caption = 'Excluir'
      OnExecute = ExcluirExecute
    end
    object campos: TAction
      Caption = 'campos'
      OnExecute = camposExecute
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
    object estoque: TAction
      Caption = 'estoque'
      ShortCut = 114
      OnExecute = estoqueExecute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object fimageitem: TAction
      Caption = 'fimageitem'
    end
    object conta: TAction
      Caption = 'conta'
      OnExecute = contaExecute
    end
    object novoitem: TAction
      Caption = 'novoitem'
      ShortCut = 16429
      OnExecute = novoitemExecute
    end
  end
  object tbfatura: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'Cond_Fatura.DB'
    Left = 198
    Top = 474
  end
  object dsfatura: TDataSource
    DataSet = tbfatura
    Left = 318
    Top = 458
  end
  object tbreceber: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'tbReceber.DB'
    Left = 182
    Top = 394
  end
end
