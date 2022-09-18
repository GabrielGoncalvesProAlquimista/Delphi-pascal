object fvendedor: Tfvendedor
  Left = 78
  Top = 41
  Width = 559
  Height = 491
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Vendedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox: TScrollBox
    Left = 0
    Top = 0
    Width = 551
    Height = 464
    HorzScrollBar.Margin = 6
    HorzScrollBar.Range = 444
    VertScrollBar.Margin = 6
    VertScrollBar.Range = 160
    Align = alClient
    AutoScroll = False
    BorderStyle = bsNone
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 0
      Top = 50
      Width = 386
      Height = 414
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object Bevel3: TBevel
        Left = 16
        Top = 310
        Width = 355
        Height = 95
      end
      object Bevel2: TBevel
        Left = 16
        Top = 115
        Width = 355
        Height = 185
      end
      object Bevel1: TBevel
        Left = 16
        Top = 8
        Width = 355
        Height = 98
      end
      object Label19: TLabel
        Left = 20
        Top = 61
        Width = 33
        Height = 13
        Cursor = crHandPoint
        Caption = 'Nome'
        FocusControl = EditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 21
        Top = 16
        Width = 40
        Height = 13
        Cursor = crHandPoint
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label1Click
      end
      object Label17: TLabel
        Left = 92
        Top = 16
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Caption = 'Apelido'
        FocusControl = EditEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label18Click
      end
      object Label1: TLabel
        Left = 22
        Top = 17
        Width = 40
        Height = 13
        Cursor = crHandPoint
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label1Click
      end
      object Label2: TLabel
        Left = 21
        Top = 62
        Width = 33
        Height = 13
        Cursor = crHandPoint
        Caption = 'Nome'
        FocusControl = EditNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label2Click
      end
      object Label3: TLabel
        Left = 22
        Top = 122
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = EditEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 22
        Top = 167
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = EditBairro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 193
        Top = 167
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = EditCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 22
        Top = 211
        Width = 19
        Height = 13
        Caption = 'Cep'
        FocusControl = EditCep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 174
        Top = 211
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = EditUF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 205
        Top = 211
        Width = 33
        Height = 13
        Caption = 'Fone 1'
        FocusControl = EditFone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 22
        Top = 357
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = EditEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 21
        Top = 314
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o 1'
        FocusControl = EditEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 204
        Top = 314
        Width = 54
        Height = 13
        Caption = 'Comiss'#227'o 2'
        FocusControl = EditEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 22
        Top = 254
        Width = 33
        Height = 13
        Caption = 'Fone 2'
        FocusControl = EditEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 200
        Top = 254
        Width = 41
        Height = 13
        Caption = 'Celular 1'
        FocusControl = EditEmail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 93
        Top = 17
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Caption = 'Apelido'
        FocusControl = EditEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = Label18Click
      end
      object EditCodigo: TDBEdit
        Left = 22
        Top = 32
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        Color = 14869218
        DataField = 'Codigo'
        DataSource = DSTabelaVendedor
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = EditCodigoKeyDown
      end
      object EditNome: TDBEdit
        Left = 92
        Top = 32
        Width = 274
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Apel'
        DataSource = DSTabelaVendedor
        TabOrder = 1
        OnKeyDown = EditNomeKeyDown
      end
      object EditEndereco: TDBEdit
        Left = 24
        Top = 137
        Width = 342
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Endereco'
        DataSource = DSTabelaVendedor
        TabOrder = 3
      end
      object EditBairro: TDBEdit
        Left = 22
        Top = 182
        Width = 165
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Bairro'
        DataSource = DSTabelaVendedor
        TabOrder = 4
      end
      object EditCidade: TDBEdit
        Left = 193
        Top = 182
        Width = 172
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Cidade'
        DataSource = DSTabelaVendedor
        TabOrder = 5
      end
      object EditCep: TDBEdit
        Left = 22
        Top = 226
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Cep'
        DataSource = DSTabelaVendedor
        TabOrder = 6
      end
      object EditUF: TDBEdit
        Left = 175
        Top = 226
        Width = 25
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DSTabelaVendedor
        TabOrder = 7
      end
      object EditFone: TDBEdit
        Left = 207
        Top = 226
        Width = 158
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Fone'
        DataSource = DSTabelaVendedor
        TabOrder = 8
      end
      object EditEmail: TDBEdit
        Left = 22
        Top = 372
        Width = 342
        Height = 21
        DataField = 'Email'
        DataSource = DSTabelaVendedor
        TabOrder = 13
      end
      object EditComissao: TDBEdit
        Left = 21
        Top = 329
        Width = 173
        Height = 21
        DataField = 'Comissao'
        DataSource = DSTabelaVendedor
        TabOrder = 11
      end
      object EditComissaoX: TDBEdit
        Left = 200
        Top = 329
        Width = 163
        Height = 21
        DataField = 'ComissaoX'
        DataSource = DSTabelaVendedor
        TabOrder = 12
      end
      object DBEdit4: TDBEdit
        Left = 21
        Top = 268
        Width = 172
        Height = 21
        DataField = 'Fone1'
        DataSource = DSTabelaVendedor
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 200
        Top = 268
        Width = 163
        Height = 21
        DataField = 'Celular'
        DataSource = DSTabelaVendedor
        TabOrder = 10
      end
      object DBEdit2: TDBEdit
        Left = 22
        Top = 76
        Width = 344
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = DSTabelaVendedor
        TabOrder = 2
        OnKeyDown = DBEdit2KeyDown
      end
    end
    object ScrollBox2: TScrollBox
      Left = 386
      Top = 50
      Width = 165
      Height = 414
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 39
        Width = 161
        Height = 371
        Align = alClient
        Color = 14869218
        DataSource = DSTabelaVendedor
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Apel'
            Width = 207
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 161
        Height = 39
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 38
          Top = 2
          Width = 91
          Height = 13
          Caption = 'Localizar Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = -1
          Top = 17
          Width = 160
          Height = 21
          Color = 14869218
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit1Change
        end
      end
    end
    object TPanel
      Left = 0
      Top = 0
      Width = 551
      Height = 50
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      object ToolBar2: TToolBar
        Left = 2
        Top = 2
        Width = 547
        Height = 45
        AutoSize = True
        ButtonHeight = 41
        Caption = 'ToolBar1'
        TabOrder = 0
        object btnprimeiro: TSpeedButton
          Left = 0
          Top = 2
          Width = 30
          Height = 41
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
          OnClick = btnprimeiroClick
        end
        object btnvoltar: TSpeedButton
          Left = 30
          Top = 2
          Width = 30
          Height = 41
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
        object btnavancar: TSpeedButton
          Left = 60
          Top = 2
          Width = 30
          Height = 41
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
          OnClick = btnavancarClick
        end
        object btnultimo: TSpeedButton
          Left = 90
          Top = 2
          Width = 30
          Height = 41
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
          OnClick = btnultimoClick
        end
        object Panel6: TPanel
          Left = 120
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 3
        end
        object Panel7: TPanel
          Left = 123
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 0
        end
        object SpeedButton6: TSpeedButton
          Left = 126
          Top = 2
          Width = 49
          Height = 41
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
          OnClick = btnNovoClick
        end
        object Panel5: TPanel
          Left = 175
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 2
        end
        object btngravar: TSpeedButton
          Left = 178
          Top = 2
          Width = 49
          Height = 41
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
          OnClick = btnGravarClick
        end
        object Panel8: TPanel
          Left = 227
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 1
        end
        object btncancelar: TSpeedButton
          Left = 230
          Top = 2
          Width = 49
          Height = 41
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
          Height = 41
          BevelInner = bvLowered
          TabOrder = 4
        end
        object SpeedButton21: TSpeedButton
          Left = 282
          Top = 2
          Width = 45
          Height = 41
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
      end
    end
  end
  object TabelaVendedor: TTable
    AfterOpen = TabelaVendedorAfterOpen
    BeforeEdit = TabelaVendedorBeforeEdit
    AfterScroll = TabelaVendedorAfterScroll
    OnPostError = TabelaVendedorPostError
    DatabaseName = 'DBVendas'
    TableName = 'tbVendedor.db'
    Left = 427
    Top = 179
  end
  object DSTabelaVendedor: TDataSource
    DataSet = TabelaVendedor
    Left = 472
    Top = 128
  end
  object ActionList1: TActionList
    Left = 292
    Top = 200
    object novo: TAction
      Caption = 'novo'
      ShortCut = 45
      OnExecute = novoExecute
    end
    object voltar: TAction
      Caption = 'voltar'
      ShortCut = 33
      OnExecute = voltarExecute
    end
    object avancar: TAction
      Caption = 'avancar'
      ShortCut = 34
      OnExecute = avancarExecute
    end
    object foco: TAction
      Caption = 'foco'
      ShortCut = 113
      OnExecute = focoExecute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
  end
end
