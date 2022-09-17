object fentrada: Tfentrada
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = 'Entradas  de Produtos '
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 553
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Entrada'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 792
        Height = 525
        Align = alClient
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 788
          Height = 156
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 784
            Height = 43
            Align = alTop
            BevelOuter = bvLowered
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 136
              Top = 2
              Width = 23
              Height = 22
              Hint = 'Novo'
              Flat = True
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
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 159
              Top = 2
              Width = 23
              Height = 22
              Hint = 'Gravar'
              Flat = True
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
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object ToolBar2: TToolBar
              Left = 1
              Top = 1
              Width = 782
              Height = 41
              Align = alClient
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
                Width = 27
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
                Left = 57
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
                Left = 87
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
                Left = 117
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 4
              end
              object Panel7: TPanel
                Left = 120
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 0
              end
              object btnnovo: TSpeedButton
                Left = 123
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
                OnClick = SpeedButton1Click
              end
              object Panel5: TPanel
                Left = 166
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 3
              end
              object btngravar: TSpeedButton
                Left = 169
                Top = 2
                Width = 38
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
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object Panel9: TPanel
                Left = 207
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 5
              end
              object btncancelar: TSpeedButton
                Left = 210
                Top = 2
                Width = 47
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
                ShowHint = True
                OnClick = btncancelarClick
              end
              object Panel16: TPanel
                Left = 257
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 7
              end
              object btndelete: TSpeedButton
                Left = 260
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
              object Panel4: TPanel
                Left = 305
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 2
              end
              object Panel8: TPanel
                Left = 308
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 1
              end
              object SpeedButton8: TSpeedButton
                Left = 311
                Top = 2
                Width = 50
                Height = 37
                Caption = '&Imprimir... '
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
                ShowHint = True
                OnClick = SpeedButton8Click
              end
              object Panel15: TPanel
                Left = 361
                Top = 2
                Width = 3
                Height = 37
                BevelInner = bvLowered
                TabOrder = 6
              end
            end
          end
          object ScrollBox2: TScrollBox
            Left = 2
            Top = 45
            Width = 784
            Height = 109
            Align = alClient
            TabOrder = 0
            object Label13: TLabel
              Left = 352
              Top = 9
              Width = 40
              Height = 13
              Cursor = crHandPoint
              Caption = 'Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
              OnClick = Label5Click
            end
            object Label12: TLabel
              Left = 292
              Top = 9
              Width = 51
              Height = 13
              Cursor = crHandPoint
              Caption = 'N. Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
              OnClick = Label7Click
            end
            object Label11: TLabel
              Left = 520
              Top = 9
              Width = 49
              Height = 13
              Cursor = crHandPoint
              Caption = 'Fantasia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
              OnClick = Label8Click
            end
            object Label10: TLabel
              Left = 421
              Top = 9
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
              OnClick = Label6Click
            end
            object Label9: TLabel
              Left = 141
              Top = 9
              Width = 63
              Height = 13
              Cursor = crHandPoint
              Caption = 'Entrada N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
              OnClick = Label2Click
            end
            object Label4: TLabel
              Left = 141
              Top = 50
              Width = 57
              Height = 13
              Caption = ' Fornecedor'
            end
            object Label6: TLabel
              Left = 422
              Top = 10
              Width = 40
              Height = 13
              Cursor = crHandPoint
              Hint = 'Clique para consultar'
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = Label6Click
            end
            object Label2: TLabel
              Left = 142
              Top = 10
              Width = 63
              Height = 13
              Cursor = crHandPoint
              Hint = 'Clique para consultar'
              Caption = 'Entrada N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = Label2Click
            end
            object Label3: TLabel
              Left = 214
              Top = 10
              Width = 63
              Height = 13
              Caption = 'Data Entrada'
            end
            object Label7: TLabel
              Left = 293
              Top = 10
              Width = 51
              Height = 13
              Cursor = crHandPoint
              Hint = 'Clique para consultar'
              Caption = 'N. Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = Label7Click
            end
            object Label5: TLabel
              Left = 353
              Top = 10
              Width = 40
              Height = 13
              Cursor = crHandPoint
              Hint = 'Clique para consultar'
              Caption = 'Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = Label5Click
            end
            object Label8: TLabel
              Left = 521
              Top = 10
              Width = 49
              Height = 13
              Cursor = crHandPoint
              Hint = 'Clique para consultar'
              Caption = 'Fantasia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Transparent = True
              OnClick = Label8Click
            end
            object Label15: TLabel
              Left = 452
              Top = 50
              Width = 22
              Height = 13
              Caption = 'CGC'
              OnClick = btnAvancarClick
            end
            object Label24: TLabel
              Left = 575
              Top = 50
              Width = 127
              Height = 13
              Caption = 'Condi'#231#245'es de Faturamento'
            end
            object DBEdit3: TDBEdit
              Left = 141
              Top = 66
              Width = 308
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nome'
              DataSource = dsentrada
              TabOrder = 7
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 0
              Top = 0
              Width = 127
              Height = 105
              Align = alLeft
              Caption = 'Tipo de Opera'#231#227'o'
              DataField = 'Natureza'
              DataSource = dsentrada
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Items.Strings = (
                'ENTRADA'
                'DEVOLU'#199#195'O')
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'E'
                'D')
              OnExit = DBRadioGroup1Exit
            end
            object EditCodigo: TDBEdit
              Left = 422
              Top = 26
              Width = 96
              Height = 21
              Hint = 'F1 (LOCALIZAR)'
              CharCase = ecUpperCase
              DataField = 'Codigo'
              DataSource = dsentrada
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnKeyDown = EditCodigoKeyDown
            end
            object DBEdit1: TDBEdit
              Left = 142
              Top = 26
              Width = 67
              Height = 21
              Hint = 'F1 (LOCALIZAR)'
              CharCase = ecUpperCase
              Color = 14671839
              DataField = 'Entrada'
              DataSource = dsentrada
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 214
              Top = 26
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Data'
              DataSource = dsentrada
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 292
              Top = 26
              Width = 58
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nota'
              DataSource = dsentrada
              TabOrder = 3
              OnKeyDown = DBEdit6KeyDown
            end
            object DBEdit4: TDBEdit
              Left = 353
              Top = 26
              Width = 64
              Height = 21
              Hint = 'F1 (LOCALIZAR)'
              CharCase = ecUpperCase
              DataField = 'Pedido'
              DataSource = dsentrada
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnKeyDown = DBEdit4KeyDown
            end
            object DBEdit5: TDBEdit
              Left = 454
              Top = 66
              Width = 117
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Cgc'
              DataSource = dsentrada
              TabOrder = 8
            end
            object DBEdit8: TDBEdit
              Left = 520
              Top = 26
              Width = 238
              Height = 21
              Hint = 'F1 (LOCALIZAR)'
              CharCase = ecUpperCase
              DataField = 'Fantasia'
              DataSource = dsentrada
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnExit = DBEdit8Exit
              OnKeyDown = DBEdit8KeyDown
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 576
              Top = 64
              Width = 182
              Height = 21
              DataField = 'Condfatura'
              DataSource = dsentrada
              KeyField = 'Descricao'
              ListField = 'Descricao'
              ListSource = dsfatura
              TabOrder = 9
              OnClick = DBLookupComboBox1Click
            end
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 156
          Width = 788
          Height = 344
          Hint = 'Ins = Novo,  F3 = Estoque,  F2 = Sair da grade, F4 = Imagem'
          Align = alClient
          Color = clWhite
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 331
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Un.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtd.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vrunit'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 500
          Width = 788
          Height = 21
          Align = alBottom
          Color = clBlack
          TabOrder = 2
          object Label1: TLabel
            Left = 592
            Top = 1
            Width = 73
            Height = 19
            AutoSize = False
            Caption = 'TOTAL =  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText1: TDBText
            Left = 717
            Top = 1
            Width = 70
            Height = 19
            Align = alRight
            AutoSize = True
            DataField = 'Total'
            DataSource = dsentrada
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object IMAGE1: TDBImage
          Left = 240
          Top = 120
          Width = 281
          Height = 249
          Hint = 'Clique e tecle + ou - para zoom'
          Color = clBtnFace
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnKeyDown = IMAGE1KeyDown
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 792
        Height = 91
        ButtonHeight = 79
        Caption = 'ToolBar1'
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 0
          Top = 2
          Width = 794
          Height = 79
          Align = alClient
          Caption = 'Filtros (Data Emiss'#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Bevel2: TBevel
            Left = 86
            Top = 19
            Width = 105
            Height = 54
          end
          object Bevel3: TBevel
            Left = 194
            Top = 19
            Width = 497
            Height = 54
          end
          object Label34: TLabel
            Left = 91
            Top = 28
            Width = 17
            Height = 13
            Caption = 'De:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 97
            Top = 50
            Width = 10
            Height = 13
            Caption = 'A:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 4
            Top = 19
            Width = 79
            Height = 54
          end
          object SpeedButton9: TSpeedButton
            Left = 707
            Top = 19
            Width = 76
            Height = 22
            Caption = 'Cancelar Filtro'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton9Click
          end
          object Label14: TLabel
            Left = 206
            Top = 24
            Width = 75
            Height = 13
            Caption = 'FORNECEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 350
            Top = 24
            Width = 54
            Height = 13
            Caption = 'PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 606
            Top = 24
            Width = 42
            Height = 13
            Caption = 'C'#211'DIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton3: TSpeedButton
            Left = 707
            Top = 43
            Width = 76
            Height = 22
            Caption = 'Imprimir...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object MaskEdit1: TMaskEdit
            Left = 116
            Top = 25
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
            Left = 116
            Top = 47
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
          object RadioButton1: TRadioButton
            Left = 8
            Top = 23
            Width = 65
            Height = 17
            Caption = 'Entrada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 8
            Top = 39
            Width = 73
            Height = 14
            Caption = 'Devolu'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = RadioButton2Click
          end
          object RadioButton3: TRadioButton
            Left = 8
            Top = 55
            Width = 66
            Height = 17
            Caption = 'Todos'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            TabStop = True
            OnClick = avancarExecute
          end
          object ComboBox1: TComboBox
            Left = 204
            Top = 40
            Width = 141
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            TabOrder = 5
            OnChange = ComboBox1Change
            OnDropDown = ComboBox1DropDown
            OnEnter = ComboBox1Enter
          end
          object ComboBox2: TComboBox
            Left = 350
            Top = 40
            Width = 255
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            TabOrder = 6
            OnChange = ComboBox2Change
            OnDropDown = ComboBox2DropDown
            OnEnter = ComboBox2Enter
          end
          object ComboBox3: TComboBox
            Left = 608
            Top = 40
            Width = 73
            Height = 21
            ItemHeight = 0
            TabOrder = 7
            OnChange = ComboBox3Change
            OnDropDown = ComboBox3DropDown
            OnEnter = ComboBox3Enter
          end
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 91
        Width = 792
        Height = 415
        Align = alClient
        Color = 14671839
        DataSource = dsfiltro
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Entrada'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'C'#243'digo'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Produto'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fantasia'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vrunit'
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Unit.'
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Color = clGray
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15532031
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end>
      end
      object Panel13: TPanel
        Left = 0
        Top = 506
        Width = 792
        Height = 19
        Align = alBottom
        Alignment = taRightJustify
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15532031
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object tbentrada: TTable
    BeforeEdit = tbentradaBeforeEdit
    AfterPost = tbentradaAfterPost
    AfterScroll = tbentradaAfterScroll
    OnPostError = tbentradaPostError
    DatabaseName = 'dbbalcao'
    IndexFieldNames = 'Nota'
    TableName = 'tbentrada.DB'
    Left = 680
    Top = 240
  end
  object tbitem: TTable
    BeforeEdit = tbitemBeforeEdit
    AfterScroll = tbitemAfterScroll
    OnNewRecord = tbitemNewRecord
    DatabaseName = 'dbbalcao'
    IndexName = 'ByLink'
    MasterFields = 'Entrada'
    MasterSource = dsentrada
    TableName = 'tbentradaItem.db'
    Left = 472
    Top = 264
  end
  object dsentrada: TDataSource
    DataSet = tbentrada
    Left = 680
    Top = 200
  end
  object dsitem: TDataSource
    DataSet = tbitem
    Left = 536
    Top = 264
  end
  object tbfornecedor: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'tbfornecedor.DB'
    Left = 246
    Top = 290
  end
  object tbproduto: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'tbproduto.DB'
    Left = 182
    Top = 290
  end
  object ActionList1: TActionList
    Left = 566
    Top = 306
    object totalizar: TAction
      Caption = 'totalizar'
      OnExecute = totalizarExecute
    end
    object preencher: TAction
      Caption = 'preencher'
      OnExecute = preencherExecute
    end
    object totalizar1: TAction
      Caption = 'totalizar1'
      OnExecute = totalizar1Execute
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
    object excluir: TAction
      Caption = 'excluir'
      OnExecute = excluirExecute
    end
    object campos: TAction
      Caption = 'campos'
      OnExecute = camposExecute
    end
    object conta: TAction
      Caption = 'conta'
      OnExecute = contaExecute
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
    object novograde: TAction
      Caption = 'novograde'
      ShortCut = 16429
      OnExecute = novogradeExecute
    end
    object preencherfornecedor: TAction
      Caption = 'preencherfornecedor'
      OnExecute = preencherfornecedorExecute
    end
    object fimagem: TAction
      Caption = 'fimagem'
      OnExecute = fimagemExecute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
  end
  object tbfiltro: TTable
    AfterScroll = tbfiltroAfterScroll
    DatabaseName = 'dbbalcao'
    TableName = 'tbentradaItem.DB'
    Left = 352
    Top = 320
  end
  object dsfiltro: TDataSource
    DataSet = tbfiltro
    Left = 392
    Top = 328
  end
  object tbfatura: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'Cond_Fatura.DB'
    Left = 318
    Top = 226
  end
  object dsfatura: TDataSource
    DataSet = tbfatura
    Left = 358
    Top = 226
  end
  object tbpagar: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'tbpagar.DB'
    Left = 422
    Top = 226
  end
end
