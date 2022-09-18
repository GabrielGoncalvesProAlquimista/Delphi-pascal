object fnota: Tfnota
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = 'EMISS'#195'O DE NOTA FISCAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = fmenu.PopupMenu1
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
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
      Height = 225
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 792
        Height = 47
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 3
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 786
          Height = 41
          Align = alClient
          AutoSize = True
          ButtonHeight = 37
          Caption = 'ToolBar1'
          Color = 13290186
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
            Width = 43
            Height = 37
            Hint = 'Insert'
            Caption = '&Novo...'
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
          object Panel12: TPanel
            Left = 169
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 4
          end
          object btngravar: TSpeedButton
            Left = 172
            Top = 2
            Width = 39
            Height = 37
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
          object Panel13: TPanel
            Left = 211
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 5
          end
          object btncancelar: TSpeedButton
            Left = 214
            Top = 2
            Width = 49
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
            Left = 263
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 1
          end
          object Panel11: TPanel
            Left = 266
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 3
          end
          object SpeedButton8: TSpeedButton
            Left = 269
            Top = 2
            Width = 50
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
          object Panel14: TPanel
            Left = 319
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 6
          end
          object btndelete: TSpeedButton
            Left = 322
            Top = 2
            Width = 45
            Height = 37
            Caption = '&Deletar'
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
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              3333333777333777FF3333993333339993333377FF3333377FF3399993333339
              993337777FF3333377F3393999333333993337F777FF333337FF993399933333
              399377F3777FF333377F993339993333399377F33777FF33377F993333999333
              399377F333777FF3377F993333399933399377F3333777FF377F993333339993
              399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
              99333773FF3333777733339993333339933333773FFFFFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            OnClick = btndeleteClick
          end
          object Panel17: TPanel
            Left = 367
            Top = 2
            Width = 3
            Height = 37
            BevelInner = bvLowered
            TabOrder = 7
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 174
        Width = 792
        Height = 49
        Align = alBottom
        Color = 10658466
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label6: TLabel
          Left = 214
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 318
          Top = 9
          Width = 91
          Height = 13
          Caption = 'Vencimento  (B)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 417
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 523
          Top = 9
          Width = 91
          Height = 13
          Caption = 'Vencimento  (C)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 623
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 118
          Top = 9
          Width = 91
          Height = 13
          Caption = 'Vencimento  (A)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object VencA: TDBEdit
          Left = 118
          Top = 22
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VencimentoA'
          DataSource = DSNota
          TabOrder = 0
        end
        object ValorA: TDBEdit
          Left = 214
          Top = 22
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ValorA'
          DataSource = DSNota
          TabOrder = 1
        end
        object VencB: TDBEdit
          Left = 319
          Top = 22
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VencimentoB'
          DataSource = DSNota
          TabOrder = 2
        end
        object ValorB: TDBEdit
          Left = 417
          Top = 22
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ValorB'
          DataSource = DSNota
          TabOrder = 3
        end
        object VencC: TDBEdit
          Left = 524
          Top = 22
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VencimentoC'
          DataSource = DSNota
          TabOrder = 4
        end
        object ValorC: TDBEdit
          Left = 622
          Top = 22
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ValorC'
          DataSource = DSNota
          TabOrder = 5
        end
        object Panel2: TPanel
          Left = 304
          Top = 7
          Width = 3
          Height = 40
          BevelInner = bvLowered
          TabOrder = 6
        end
        object Panel5: TPanel
          Left = 509
          Top = 7
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 7
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 43
          Top = 19
          Width = 22
          Height = 21
          DataField = 'Condpgto'
          DataSource = DSNota
          KeyField = 'Descricao'
          ListField = 'Descricao'
          ListSource = dsfatura
          TabOrder = 8
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 92
        Width = 792
        Height = 82
        Align = alClient
        Caption = 'Dados do Cliente'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label39: TLabel
          Left = 4
          Top = 11
          Width = 40
          Height = 13
          Cursor = crHandPoint
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label36Click
        end
        object Label10: TLabel
          Left = 74
          Top = 12
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 349
          Top = 12
          Width = 22
          Height = 13
          Caption = 'CGC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 592
          Top = 12
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 5
          Top = 46
          Width = 27
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 182
          Top = 46
          Width = 19
          Height = 13
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 273
          Top = 46
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 581
          Top = 46
          Width = 46
          Height = 13
          Caption = 'Fone/Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 754
          Top = 46
          Width = 14
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 476
          Top = 12
          Width = 43
          Height = 13
          Caption = 'Inscri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 5
          Top = 12
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
          OnClick = Label36Click
        end
        object DBEdit9: TDBEdit
          Left = 72
          Top = 25
          Width = 274
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 349
          Top = 25
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CGC'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 592
          Top = 25
          Width = 187
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Endereco'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 3
          Top = 59
          Width = 176
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 182
          Top = 59
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 272
          Top = 59
          Width = 304
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Municipio'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit15: TDBEdit
          Left = 580
          Top = 59
          Width = 168
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fone/fax'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit16: TDBEdit
          Left = 756
          Top = 59
          Width = 22
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Uf'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit1: TDBEdit
          Left = 474
          Top = 25
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditCodigo: TDBEdit
          Left = 2
          Top = 25
          Width = 67
          Height = 21
          Hint = 'F1 (LOCALIZAR)'
          DataField = 'Codigo'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = EditCodigoKeyDown
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 49
        Width = 792
        Height = 43
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 97
          Top = 6
          Width = 81
          Height = 13
          Cursor = crHandPoint
          Caption = 'Nota Fiscal n'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label35Click
        end
        object Label5: TLabel
          Left = 194
          Top = 7
          Width = 70
          Height = 13
          Caption = 'Nat. Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 272
          Top = 7
          Width = 28
          Height = 13
          Caption = 'CFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 341
          Top = 7
          Width = 80
          Height = 13
          Caption = 'Data da Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 430
          Top = 7
          Width = 60
          Height = 13
          Caption = 'Data da S/E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 585
          Top = 7
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 98
          Top = 7
          Width = 81
          Height = 13
          Cursor = crHandPoint
          Caption = 'Nota Fiscal n'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label35Click
        end
        object Label41: TLabel
          Left = 509
          Top = 7
          Width = 70
          Height = 13
          Caption = 'Hora da Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBEdit17: TDBEdit
          Left = 272
          Top = 20
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CFOP'
          DataSource = DSNota
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 339
          Top = 20
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Emissao'
          DataSource = DSNota
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 428
          Top = 20
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Datasaida'
          DataSource = DSNota
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 510
          Top = 20
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HoraSaida'
          DataSource = DSNota
          TabOrder = 7
        end
        object DBCheckBox1: TDBCheckBox
          Left = 2
          Top = 8
          Width = 64
          Height = 17
          Caption = 'Entrada'
          DataField = 'E'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'X'
          ValueUnchecked = ' '
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox2: TDBCheckBox
          Left = 2
          Top = 23
          Width = 65
          Height = 17
          Caption = 'Sa'#237'da'
          DataField = 'S'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'X'
          ValueUnchecked = ' '
          OnClick = DBCheckBox2Click
        end
        object EditNNota: TDBEdit
          Left = 97
          Top = 20
          Width = 90
          Height = 21
          Hint = 'F1 (LOCALIZAR)'
          Color = 14671839
          DataField = 'Nota'
          DataSource = DSNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = EditNNotaKeyDown
        end
        object DBEdit2: TDBEdit
          Left = 192
          Top = 20
          Width = 76
          Height = 21
          DataField = 'Natureza'
          DataSource = DSNota
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 584
          Top = 20
          Width = 194
          Height = 21
          DataField = 'Vendedor'
          DataSource = DSNota
          DropDownWidth = 300
          KeyField = 'Apel'
          ListField = 'Apel;nome'
          ListSource = dsvendedor
          TabOrder = 8
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 225
      Width = 796
      Height = 238
      Hint = 'Ins = Novo,  F3 = Estoque,  F2 = Sair da grade'
      Align = alClient
      DataSource = dsitem
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnEnter = DBGrid1Enter
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 459
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Un'
          Title.Alignment = taCenter
          Title.Caption = 'Uni'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vrunit'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object GroupBox11: TGroupBox
      Left = 0
      Top = 463
      Width = 796
      Height = 43
      Align = alBottom
      TabOrder = 2
      object Label37: TLabel
        Left = 4
        Top = 7
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 284
        Top = 7
        Width = 75
        Height = 13
        Caption = 'Valor do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 384
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Vr. Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 452
        Top = 7
        Width = 73
        Height = 13
        Caption = 'Frete por Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 546
        Top = 7
        Width = 89
        Height = 13
        Caption = 'Valor dos Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 669
        Top = 7
        Width = 65
        Height = 13
        Caption = 'Valor da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EditObs: TDBEdit
        Left = 4
        Top = 19
        Width = 277
        Height = 21
        DataField = 'OBS'
        DataSource = DSNota
        TabOrder = 0
      end
      object Edit4: TDBEdit
        Left = 284
        Top = 19
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Vrpedido'
        DataSource = DSNota
        TabOrder = 1
      end
      object Edit1: TDBEdit
        Left = 384
        Top = 19
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Vrfrete'
        DataSource = DSNota
        TabOrder = 2
        OnExit = Edit1Exit
      end
      object Edit2: TDBEdit
        Left = 451
        Top = 19
        Width = 94
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Fretoconta'
        DataSource = DSNota
        TabOrder = 3
      end
      object Edit3: TDBEdit
        Left = 547
        Top = 19
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Vrproduto'
        DataSource = DSNota
        TabOrder = 4
      end
      object DBEdit23: TDBEdit
        Left = 664
        Top = 19
        Width = 119
        Height = 21
        DataField = 'Vrnota'
        DataSource = DSNota
        TabOrder = 5
      end
    end
    object GroupBox12: TGroupBox
      Left = 0
      Top = 506
      Width = 796
      Height = 43
      Align = alBottom
      TabOrder = 3
      object Label23: TLabel
        Left = 4
        Top = 6
        Width = 72
        Height = 13
        Caption = 'Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 331
        Top = 6
        Width = 17
        Height = 13
        Caption = 'Qtd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 373
        Top = 6
        Width = 38
        Height = 13
        Caption = 'Esp'#233'cie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 437
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 517
        Top = 6
        Width = 52
        Height = 13
        Caption = 'Peso Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 588
        Top = 6
        Width = 63
        Height = 13
        Caption = 'Peso L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 659
        Top = 6
        Width = 46
        Height = 13
        Caption = 'S. Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 732
        Top = 6
        Width = 47
        Height = 13
        Caption = 'N. Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 124
        Top = 6
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Edit5: TDBEdit
        Left = 3
        Top = 19
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Transportadora'
        DataSource = DSNota
        TabOrder = 0
      end
      object Edit6: TDBEdit
        Left = 331
        Top = 19
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Qtd'
        DataSource = DSNota
        TabOrder = 2
      end
      object Edit7: TDBEdit
        Left = 373
        Top = 19
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Especia'
        DataSource = DSNota
        TabOrder = 3
      end
      object Edit8: TDBEdit
        Left = 437
        Top = 19
        Width = 79
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Fantasia'
        DataSource = DSNota
        TabOrder = 4
      end
      object Edit9: TDBEdit
        Left = 518
        Top = 19
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PesoB'
        DataSource = DSNota
        TabOrder = 5
      end
      object Edit10: TDBEdit
        Left = 588
        Top = 19
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PesoL'
        DataSource = DSNota
        TabOrder = 6
      end
      object DBEdit21: TDBEdit
        Left = 658
        Top = 19
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Spedido'
        DataSource = DSNota
        TabOrder = 7
      end
      object DBEdit22: TDBEdit
        Left = 708
        Top = 82
        Width = 53
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TranNPedido'
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 732
        Top = 19
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Npedido'
        DataSource = DSNota
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 123
        Top = 19
        Width = 206
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EndTransportadora'
        DataSource = DSNota
        TabOrder = 1
      end
    end
  end
  object TbNota: TTable
    BeforeEdit = TbNotaBeforeEdit
    AfterPost = TbNotaAfterPost
    AfterScroll = TbNotaAfterScroll
    OnPostError = TbNotaPostError
    DatabaseName = 'DBVendas'
    IndexFieldNames = 'Nota'
    TableName = 'tbnota.db'
    Left = 158
    Top = 290
  end
  object DSNota: TDataSource
    DataSet = TbNota
    Left = 670
    Top = 346
  end
  object tbitem: TTable
    BeforeEdit = tbitemBeforeEdit
    OnNewRecord = tbitemNewRecord
    DatabaseName = 'DBVendas'
    IndexName = 'ByLink'
    MasterFields = 'Nota'
    MasterSource = DSNota
    TableName = 'tbNotaItem.db'
    Left = 286
    Top = 290
  end
  object dsitem: TDataSource
    DataSet = tbitem
    Left = 718
    Top = 298
  end
  object ActionList1: TActionList
    Left = 390
    Top = 370
    object Formatar: TAction
      Caption = 'Formatar'
      OnExecute = FormatarExecute
    end
    object Totalizar: TAction
      Caption = 'Totalizar'
      OnExecute = TotalizarExecute
    end
    object PProduto: TAction
      Caption = 'PProduto'
      OnExecute = PProdutoExecute
    end
    object FormProduto: TAction
      Caption = 'FormProduto'
      OnExecute = FormProdutoExecute
    end
    object PCliente: TAction
      Caption = 'PCliente'
      OnExecute = PClienteExecute
    end
    object Novo: TAction
      Caption = 'Novo'
      ShortCut = 45
      OnExecute = NovoExecute
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
    object novograde: TAction
      Caption = 'novograde'
      ShortCut = 16429
      OnExecute = novogradeExecute
    end
    object excluir: TAction
      Caption = 'excluir'
      OnExecute = excluirExecute
    end
    object conta: TAction
      Caption = 'conta'
      OnExecute = contaExecute
    end
    object campos: TAction
      Caption = 'campos'
      OnExecute = camposExecute
    end
    object formatar1: TAction
      Caption = 'formatar1'
      OnExecute = formatar1Execute
    end
    object totalizar1: TAction
      Caption = 'totalizar1'
      OnExecute = totalizar1Execute
    end
    object estoque: TAction
      Caption = 'estoque'
      ShortCut = 114
      OnExecute = estoqueExecute
    end
  end
  object tbproduto: TTable
    DatabaseName = 'DBVendas'
    TableName = 'tbproduto.DB'
    Left = 62
    Top = 282
  end
  object tbcliente: TTable
    DatabaseName = 'DBVendas'
    TableName = 'tbCliente.DB'
    Left = 62
    Top = 338
  end
  object dsfatura: TDataSource
    DataSet = tbfatura
    Left = 720
    Top = 392
  end
  object tbfatura: TTable
    DatabaseName = 'DBVendas'
    TableName = 'Cond_Fatura.DB'
    Left = 160
    Top = 408
  end
  object tbfiltro: TTable
    DatabaseName = 'DBVendas'
    TableName = 'TbNota.DB'
    Left = 64
    Top = 400
  end
  object dsfiltro: TDataSource
    DataSet = tbfiltro
    Left = 720
    Top = 344
  end
  object tbvendedor: TTable
    DatabaseName = 'dbvendas'
    TableName = 'tbVendedor.DB'
    Left = 160
    Top = 344
  end
  object dsvendedor: TDataSource
    DataSet = tbvendedor
    Left = 672
    Top = 400
  end
  object tbreceber: TTable
    DatabaseName = 'dbvendas'
    TableName = 'tbreceber.DB'
    Left = 280
    Top = 336
  end
end
