object fboleto: Tfboleto
  Left = 66
  Top = 41
  BorderStyle = bsDialog
  Caption = '  GNOME SISTEMAS - BOLETO BANC'#193'RIO'
  ClientHeight = 446
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 659
    Height = 446
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Dados'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 418
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        Caption = 'Panel2'
        TabOrder = 0
        object ScrollBox: TScrollBox
          Left = 4
          Top = 4
          Width = 643
          Height = 410
          HorzScrollBar.Margin = 6
          HorzScrollBar.Range = 432
          VertScrollBar.Margin = 6
          VertScrollBar.Range = 350
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 643
            Height = 41
            AutoSize = True
            ButtonHeight = 37
            Caption = 'ToolBar1'
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
            object Panel6: TPanel
              Left = 120
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 3
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
              Width = 49
              Height = 37
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
            object Panel5: TPanel
              Left = 175
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 2
            end
            object btngravar: TSpeedButton
              Left = 178
              Top = 2
              Width = 49
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
            object Panel8: TPanel
              Left = 227
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 1
            end
            object btncancelar: TSpeedButton
              Left = 230
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
            object Panel12: TPanel
              Left = 279
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 6
            end
            object SpeedButton21: TSpeedButton
              Left = 282
              Top = 2
              Width = 45
              Height = 37
              Caption = '&Apagar'
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                555557777F777555F55500000000555055557777777755F75555005500055055
                555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                5555577FF77577FF555555005050110555555577F757777FF555555505099910
                555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                3055577F75F77777575F55005055090B030555775755777575755555555550B0
                B03055555F555757575755550555550B0B335555755555757555555555555550
                BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                50BB555555555555575F555555555555550B5555555555555575}
              Layout = blGlyphTop
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton21Click
            end
            object Panel11: TPanel
              Left = 327
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 5
            end
            object Panel3: TPanel
              Left = 330
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 7
            end
            object btnimprimir: TSpeedButton
              Left = 333
              Top = 2
              Width = 52
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
              OnClick = btnimprimirClick
            end
            object Panel9: TPanel
              Left = 385
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 4
            end
            object Panel14: TPanel
              Left = 388
              Top = 2
              Width = 3
              Height = 37
              BevelInner = bvLowered
              TabOrder = 8
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 41
            Width = 441
            Height = 369
            Align = alLeft
            BevelInner = bvLowered
            TabOrder = 1
            object Label2: TLabel
              Left = 14
              Top = 14
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = EditNlocal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 85
              Top = 14
              Width = 98
              Height = 13
              Caption = 'Local do Pagamento'
              FocusControl = EditLocal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 14
              Top = 52
              Width = 40
              Height = 13
              Caption = 'Cedente'
              FocusControl = EditCedente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 308
              Top = 52
              Width = 55
              Height = 13
              Caption = 'N'#186' Cedente'
              FocusControl = EditNcedente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 312
              Top = 90
              Width = 38
              Height = 13
              Caption = 'Esp'#233'cie'
              FocusControl = EditEspecie
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 136
              Top = 90
              Width = 53
              Height = 13
              Caption = 'N'#186' do Doc.'
              FocusControl = EditNdocumento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 14
              Top = 90
              Width = 64
              Height = 13
              Caption = 'Data do Doc.'
              FocusControl = EditDatadocumento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 15
              Top = 130
              Width = 30
              Height = 13
              Caption = 'Aceite'
              FocusControl = EditAceite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 222
              Top = 128
              Width = 68
              Height = 13
              Caption = 'Uso do Banco'
              FocusControl = EditUsobanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 9
              Top = 8
              Width = 424
              Height = 169
            end
            object Label12: TLabel
              Left = 343
              Top = 128
              Width = 36
              Height = 13
              Caption = 'Carteira'
              FocusControl = EditCarteira
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 308
              Top = 187
              Width = 47
              Height = 13
              Caption = 'CPF/CGC'
              FocusControl = EditCgccpf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 308
              Top = 225
              Width = 77
              Height = 13
              Caption = 'C'#243'digo de Baixa'
              FocusControl = EditCodigobaixa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 14
              Top = 225
              Width = 77
              Height = 13
              Caption = 'Sacado Avalista'
              FocusControl = EditSacadoAvalista
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 14
              Top = 187
              Width = 37
              Height = 13
              Caption = 'Sacado'
              FocusControl = EditSacado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel2: TBevel
              Left = 9
              Top = 184
              Width = 424
              Height = 86
            end
            object Label19: TLabel
              Left = 12
              Top = 279
              Width = 56
              Height = 13
              Caption = 'Vencimento'
              FocusControl = EditVencimento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 12
              Top = 318
              Width = 46
              Height = 13
              Caption = 'Desconto'
              FocusControl = EditDesconto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 129
              Top = 318
              Width = 26
              Height = 13
              Caption = 'Multa'
              FocusControl = EditMulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 85
              Top = 280
              Width = 110
              Height = 13
              Caption = 'Ag. C'#243'digo do Cedente'
              FocusControl = EditAgCodigoCedente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 206
              Top = 280
              Width = 70
              Height = 13
              Caption = 'Nosso N'#250'mero'
              FocusControl = EditNossonumero
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 240
              Top = 318
              Width = 67
              Height = 13
              Caption = 'Valor Cobrado'
              FocusControl = EditTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 327
              Top = 280
              Width = 65
              Height = 13
              Caption = 'Valor do Doc.'
              FocusControl = EditValor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel3: TBevel
              Left = 8
              Top = 276
              Width = 425
              Height = 85
            end
            object Label10: TLabel
              Left = 92
              Top = 130
              Width = 85
              Height = 13
              Caption = 'Data do Processo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EditNlocal: TDBEdit
              Left = 14
              Top = 29
              Width = 65
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nlocal'
              DataSource = dsboleto
              TabOrder = 0
            end
            object EditLocal: TDBEdit
              Left = 85
              Top = 29
              Width = 332
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Local'
              DataSource = dsboleto
              TabOrder = 1
            end
            object EditCedente: TDBEdit
              Left = 14
              Top = 67
              Width = 288
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Cedente'
              DataSource = dsboleto
              TabOrder = 2
            end
            object EditNcedente: TDBEdit
              Left = 308
              Top = 67
              Width = 110
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Ncedente'
              DataSource = dsboleto
              TabOrder = 3
            end
            object EditEspecie: TDBEdit
              Left = 312
              Top = 105
              Width = 105
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Especie'
              DataSource = dsboleto
              TabOrder = 6
            end
            object EditNdocumento: TDBEdit
              Left = 136
              Top = 105
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Ndocumento'
              DataSource = dsboleto
              TabOrder = 5
            end
            object EditDatadocumento: TDBEdit
              Left = 14
              Top = 105
              Width = 117
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Datadocumento'
              DataSource = dsboleto
              TabOrder = 4
            end
            object EditAceite: TDBEdit
              Left = 15
              Top = 145
              Width = 74
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Aceite'
              DataSource = dsboleto
              TabOrder = 7
            end
            object EditDataprocesso: TDBEdit
              Left = 93
              Top = 145
              Width = 124
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Dataprocesso'
              DataSource = dsboleto
              TabOrder = 8
            end
            object EditUsobanco: TDBEdit
              Left = 222
              Top = 143
              Width = 117
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Usobanco'
              DataSource = dsboleto
              TabOrder = 9
            end
            object EditCarteira: TDBEdit
              Left = 344
              Top = 143
              Width = 73
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Carteira'
              DataSource = dsboleto
              TabOrder = 10
            end
            object EditCgccpf: TDBEdit
              Left = 308
              Top = 202
              Width = 115
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Cgccpf'
              DataSource = dsboleto
              TabOrder = 12
            end
            object EditCodigobaixa: TDBEdit
              Left = 308
              Top = 240
              Width = 114
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Codigobaixa'
              DataSource = dsboleto
              TabOrder = 14
            end
            object EditSacadoAvalista: TDBEdit
              Left = 14
              Top = 240
              Width = 288
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SacadoAvalista'
              DataSource = dsboleto
              TabOrder = 13
            end
            object EditSacado: TDBEdit
              Left = 14
              Top = 202
              Width = 288
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Sacado'
              DataSource = dsboleto
              TabOrder = 11
            end
            object EditVencimento: TDBEdit
              Left = 12
              Top = 294
              Width = 65
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Vencimento'
              DataSource = dsboleto
              TabOrder = 15
            end
            object EditDesconto: TDBEdit
              Left = 12
              Top = 333
              Width = 112
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Desconto'
              DataSource = dsboleto
              TabOrder = 19
            end
            object EditMulta: TDBEdit
              Left = 129
              Top = 333
              Width = 104
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Multa'
              DataSource = dsboleto
              TabOrder = 20
            end
            object EditAgCodigoCedente: TDBEdit
              Left = 85
              Top = 295
              Width = 115
              Height = 21
              CharCase = ecUpperCase
              DataField = 'AgCodigoCedente'
              DataSource = dsboleto
              TabOrder = 16
            end
            object EditNossonumero: TDBEdit
              Left = 206
              Top = 295
              Width = 115
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nossonumero'
              DataSource = dsboleto
              TabOrder = 17
            end
            object EditTotal: TDBEdit
              Left = 240
              Top = 333
              Width = 177
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Total'
              DataSource = dsboleto
              TabOrder = 21
            end
            object EditValor: TDBEdit
              Left = 327
              Top = 295
              Width = 94
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor'
              DataSource = dsboleto
              TabOrder = 18
            end
          end
          object Panel4: TPanel
            Left = 441
            Top = 41
            Width = 202
            Height = 369
            Align = alClient
            BevelInner = bvLowered
            Caption = 'Panel4'
            TabOrder = 2
            object Panel10: TPanel
              Left = 2
              Top = 2
              Width = 198
              Height = 44
              Align = alTop
              BevelInner = bvLowered
              TabOrder = 0
              object Label26: TLabel
                Left = 49
                Top = 4
                Width = 99
                Height = 13
                Alignment = taCenter
                Caption = 'Localizar Sacado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Edit1: TEdit
                Left = 2
                Top = 19
                Width = 182
                Height = 21
                TabOrder = 0
                OnChange = Edit1Change
              end
            end
            object DBGrid1: TDBGrid
              Left = 2
              Top = 46
              Width = 198
              Height = 321
              Align = alClient
              DataSource = dsboleto
              Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Sacado'
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Complemento Fixo'
      ImageIndex = 1
      object Label1: TLabel
        Left = 48
        Top = 32
        Width = 49
        Height = 13
        Caption = 'Instru'#231#245'es'
      end
      object Label13: TLabel
        Left = 48
        Top = 192
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Label18: TLabel
        Left = 96
        Top = 328
        Width = 291
        Height = 13
        Caption = 'Preencha os dados acima, para controle do boleto.'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 48
        Top = 48
        Width = 561
        Height = 89
        DataField = 'Instrucao'
        DataSource = dscomplemento
        TabOrder = 0
        OnExit = DBMemo1Exit
      end
      object DBMemo2: TDBMemo
        Left = 48
        Top = 208
        Width = 561
        Height = 89
        DataField = 'Obs'
        DataSource = dscomplemento
        TabOrder = 1
        OnExit = DBMemo1Exit
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 448
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = tbboleto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      50
      2794
      50
      2159
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 19
      Width = 778
      Height = 406
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1074.20833333333
        2058.45833333333)
      BandType = rbDetail
      object QRShape20: TQRShape
        Left = 477
        Top = 109
        Width = 233
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1262.0625
          288.395833333333
          616.479166666667)
        Brush.Color = 15658734
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 477
        Top = 237
        Width = 233
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1262.0625
          627.0625
          616.479166666667)
        Brush.Color = 15658734
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 477
        Top = 37
        Width = 233
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1262.0625
          97.8958333333333
          616.479166666667)
        Brush.Color = 15658734
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = 1
        Width = 705
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          13.2291666666667
          2.64583333333333
          1865.3125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BOLETO BANC'#193'RIO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRShape10: TQRShape
        Left = 5
        Top = 33
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          87.3125
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape9: TQRShape
        Left = 5
        Top = 57
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          150.8125
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape8: TQRShape
        Left = 5
        Top = 82
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          216.958333333333
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 5
        Top = 107
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          283.104166666667
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 5
        Top = 132
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          349.25
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 476
        Top = 157
        Width = 233
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1259.41666666667
          415.395833333333
          616.479166666667)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 476
        Top = 181
        Width = 233
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1259.41666666667
          478.895833333333
          616.479166666667)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 476
        Top = 206
        Width = 233
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1259.41666666667
          545.041666666667
          616.479166666667)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 476
        Top = 231
        Width = 233
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          1259.41666666667
          611.1875
          616.479166666667)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 5
        Top = 256
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          677.333333333333
          1865.3125)
        Shape = qrsHorLine
      end
      object QRShape1: TQRShape
        Left = 5
        Top = 313
        Width = 705
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          13.2291666666667
          828.145833333333
          1865.3125)
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 37
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          97.8958333333333
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Local do pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 149
        Top = 46
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          394.229166666667
          121.708333333333
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Local'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 45
        Top = 71
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          119.0625
          187.854166666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Cedente'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 5
        Top = 61
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          13.2291666666667
          161.395833333333
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cedente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 333
        Top = 71
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          881.0625
          187.854166666667
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Ncedente'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 86
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          227.541666666667
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data do Documento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 5
        Top = 96
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          254
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Datadocumento'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 109
        Top = 96
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          254
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Ndocumento'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 109
        Top = 86
        Width = 75
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          288.395833333333
          227.541666666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' do Documento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 205
        Top = 96
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          542.395833333333
          254
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Especie'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 205
        Top = 86
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          542.395833333333
          227.541666666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Esp'#233'cie Doc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 285
        Top = 96
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          754.0625
          254
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Aceite'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 285
        Top = 86
        Width = 27
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          754.0625
          227.541666666667
          71.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aceite'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 357
        Top = 96
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          944.5625
          254
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Dataprocesso'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 357
        Top = 86
        Width = 102
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          944.5625
          227.541666666667
          269.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data do Processamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 5
        Top = 121
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          320.145833333333
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Usobanco'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 5
        Top = 112
        Width = 60
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          13.2291666666667
          296.333333333333
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Uso do Banco'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 83
        Top = 112
        Width = 34
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          219.604166666667
          296.333333333333
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Carteira'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 83
        Top = 121
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          219.604166666667
          320.145833333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Carteira'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 5
        Top = 137
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          13.2291666666667
          362.479166666667
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Instru'#231#245'es'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel13: TQRLabel
        Left = 5
        Top = 259
        Width = 32
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          13.2291666666667
          685.270833333333
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sacado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 45
        Top = 269
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          119.0625
          711.729166666667
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Sacado'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 5
        Top = 302
        Width = 72
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          13.2291666666667
          799.041666666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sacador/Avalista'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 485
        Top = 302
        Width = 69
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1283.22916666667
          799.041666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo de Baixa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText14: TQRDBText
        Left = 453
        Top = 269
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1198.5625
          711.729166666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Cgccpf'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 368
        Top = 269
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          973.666666666667
          711.729166666667
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF/CGC :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LINSTRUCAO: TQRLabel
        Left = 40
        Top = 152
        Width = 337
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333
          105.833333333333
          402.166666666667
          891.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LINSTRUCAO'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LOBS: TQRLabel
        Left = 5
        Top = 321
        Width = 284
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.5
          13.2291666666667
          849.3125
          751.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel17'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape19: TQRShape
        Left = 96
        Top = 90
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          254
          238.125
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 472
        Top = 39
        Width = 9
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333
          1248.83333333333
          103.1875
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 271
        Top = 90
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          717.020833333333
          238.125
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 139
        Top = 114
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          367.770833333333
          301.625
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 70
        Top = 114
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          185.208333333333
          301.625
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 341
        Top = 90
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          902.229166666667
          238.125
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRShape18: TQRShape
        Left = 189
        Top = 90
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          500.0625
          238.125
          23.8125)
        Pen.Width = 3
        Shape = qrsVertLine
      end
      object QRLabel17: TQRLabel
        Left = 484
        Top = 37
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          97.8958333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vencimento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 484
        Top = 61
        Width = 115
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          161.395833333333
          304.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ag'#234'ncia/C'#243'digo de cedente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 484
        Top = 86
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          227.541666666667
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nosso n'#250'mero'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 484
        Top = 112
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          296.333333333333
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor do documento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 484
        Top = 136
        Width = 103
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          359.833333333333
          272.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-) Desconto/Abatimento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Left = 484
        Top = 185
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          489.479166666667
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+) Mora/Multa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Left = 484
        Top = 236
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1280.58333333333
          624.416666666667
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(=) Valor Cobrado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 638
        Top = 46
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1688.04166666667
          121.708333333333
          185.208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Vencimento'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 603
        Top = 71
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1595.4375
          187.854166666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'AgCodigoCedente'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 627
        Top = 96
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1658.9375
          254
          214.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Nossonumero'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 677
        Top = 121
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1791.22916666667
          320.145833333333
          82.0208333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Valor'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 652
        Top = 147
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1725.08333333333
          388.9375
          148.166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Desconto'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 675
        Top = 195
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1785.9375
          515.9375
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Multa'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 679
        Top = 245
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1796.52083333333
          648.229166666667
          76.7291666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Total'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 101
        Top = 46
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          267.229166666667
          121.708333333333
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Nlocal'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 83
        Top = 299
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          219.604166666667
          791.104166666667
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'SacadoAvalista'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 560
        Top = 299
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1481.66666666667
          791.104166666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = tbboleto
        DataField = 'Codigobaixa'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 517
        Top = 349
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1367.89583333333
          923.395833333333
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Autentica'#231#227'o mec'#226'nica'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 666
        Top = 20
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1762.125
          52.9166666666667
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recibo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object dsboleto: TDataSource
    DataSet = tbboleto
    Left = 357
    Top = 499
  end
  object tbboleto: TTable
    AfterOpen = tbboletoAfterOpen
    BeforeEdit = tbboletoBeforeEdit
    AfterScroll = tbboletoAfterScroll
    OnCalcFields = tbboletoCalcFields
    DatabaseName = 'dbboleto'
    IndexName = 'bysacado'
    TableName = 'tbboleto.db'
    Left = 425
    Top = 411
    object tbboletoChave: TAutoIncField
      FieldName = 'Chave'
      ReadOnly = True
    end
    object tbboletoNlocal: TFloatField
      FieldName = 'Nlocal'
      DisplayFormat = '000'
    end
    object tbboletoLocal: TStringField
      FieldName = 'Local'
    end
    object tbboletoCedente: TStringField
      FieldName = 'Cedente'
      Size = 60
    end
    object tbboletoNcedente: TStringField
      FieldName = 'Ncedente'
    end
    object tbboletoDatadocumento: TDateField
      FieldName = 'Datadocumento'
      EditMask = '99/99/9999'
    end
    object tbboletoNdocumento: TStringField
      FieldName = 'Ndocumento'
      Size = 15
    end
    object tbboletoEspecie: TStringField
      FieldName = 'Especie'
      Size = 10
    end
    object tbboletoAceite: TStringField
      FieldName = 'Aceite'
      Size = 5
    end
    object tbboletoDataprocesso: TDateField
      FieldName = 'Dataprocesso'
      EditMask = '99/99/9999'
    end
    object tbboletoUsobanco: TStringField
      FieldName = 'Usobanco'
      Size = 12
    end
    object tbboletoCarteira: TStringField
      FieldName = 'Carteira'
      Size = 6
    end
    object tbboletoSacado: TStringField
      FieldName = 'Sacado'
      Size = 60
    end
    object tbboletoCgccpf: TStringField
      FieldName = 'Cgccpf'
    end
    object tbboletoSacadoAvalista: TStringField
      FieldName = 'SacadoAvalista'
      Size = 60
    end
    object tbboletoCodigobaixa: TStringField
      FieldName = 'Codigobaixa'
      Size = 15
    end
    object tbboletoVencimento: TDateField
      FieldName = 'Vencimento'
      EditMask = '99/99/9999'
    end
    object tbboletoAgCodigoCedente: TStringField
      FieldName = 'AgCodigoCedente'
    end
    object tbboletoNossonumero: TStringField
      FieldName = 'Nossonumero'
    end
    object tbboletoValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,##0.00'
    end
    object tbboletoDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,##0.00'
    end
    object tbboletoMulta: TFloatField
      FieldName = 'Multa'
      DisplayFormat = '###,##0.00'
    end
    object tbboletoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object tbcomplemento: TTable
    DatabaseName = 'dbboleto'
    TableName = 'tbinstrucao.db'
    Left = 240
    Top = 408
  end
  object dscomplemento: TDataSource
    DataSet = tbcomplemento
    Left = 312
    Top = 432
  end
end
