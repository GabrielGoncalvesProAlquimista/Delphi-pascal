object ffornecedor: Tffornecedor
  Left = 71
  Top = 34
  Width = 618
  Height = 544
  BorderIcons = [biSystemMenu]
  Caption = 'CADASTRO DE FORNECEDOR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = fmenu.PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 517
    Align = alClient
    BevelWidth = 2
    BorderWidth = 2
    Caption = 'Panel1'
    Color = clGray
    TabOrder = 0
    object ScrollBox: TScrollBox
      Left = 4
      Top = 55
      Width = 602
      Height = 458
      HorzScrollBar.Margin = 6
      HorzScrollBar.Range = 444
      VertScrollBar.Margin = 6
      VertScrollBar.Range = 160
      Align = alClient
      AutoScroll = False
      BorderStyle = bsNone
      Color = 13223608
      ParentColor = False
      TabOrder = 0
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 393
        Height = 458
        Align = alLeft
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object Bevel1: TBevel
          Left = 2
          Top = 33
          Width = 374
          Height = 80
        end
        object Bevel2: TBevel
          Left = 2
          Top = 117
          Width = 373
          Height = 115
        end
        object Bevel3: TBevel
          Left = 3
          Top = 236
          Width = 372
          Height = 84
        end
        object Bevel4: TBevel
          Left = 4
          Top = 325
          Width = 371
          Height = 75
        end
        object Label25: TLabel
          Left = 163
          Top = 36
          Width = 85
          Height = 13
          Cursor = crHandPoint
          Caption = 'Nome Fantasia'
          FocusControl = EditFornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label15Click
        end
        object Label24: TLabel
          Left = 102
          Top = 35
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
          OnClick = Label2Click
        end
        object Label23: TLabel
          Left = 9
          Top = 190
          Width = 26
          Height = 13
          Cursor = crHandPoint
          Caption = 'CGC'
          FocusControl = EditCGC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label4Click
        end
        object Label1: TLabel
          Left = 7
          Top = 36
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = EditData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 103
          Top = 36
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
          OnClick = Label2Click
        end
        object Label4: TLabel
          Left = 10
          Top = 191
          Width = 26
          Height = 13
          Cursor = crHandPoint
          Caption = 'CGC'
          FocusControl = EditCGC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label4Click
        end
        object Label3: TLabel
          Left = 7
          Top = 72
          Width = 54
          Height = 13
          Caption = 'Fornecedor'
          FocusControl = EditFornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 161
          Top = 191
          Width = 43
          Height = 13
          Caption = 'Inscri'#231#227'o'
          FocusControl = EditInscricao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 119
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
        object Label7: TLabel
          Left = 255
          Top = 119
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
        object Label8: TLabel
          Left = 9
          Top = 155
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
        object Label10: TLabel
          Left = 206
          Top = 155
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
        object Label11: TLabel
          Left = 10
          Top = 240
          Width = 30
          Height = 13
          Caption = 'Fone1'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 237
          Top = 156
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
        object Label12: TLabel
          Left = 256
          Top = 240
          Width = 46
          Height = 13
          Caption = 'Fone/Fax'
          FocusControl = EditFone_Fax
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 10
          Top = 279
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
        object Label15: TLabel
          Left = 164
          Top = 37
          Width = 85
          Height = 13
          Cursor = crHandPoint
          Caption = 'Nome Fantasia'
          FocusControl = EditFornecedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label15Click
        end
        object Label16: TLabel
          Left = 128
          Top = 240
          Width = 30
          Height = 13
          Caption = 'Fone2'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 9
          Top = 330
          Width = 37
          Height = 13
          Caption = 'Contato'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 91
          Top = 330
          Width = 28
          Height = 13
          Caption = 'Cargo'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 266
          Top = 330
          Width = 28
          Height = 13
          Caption = 'Cargo'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 177
          Top = 330
          Width = 37
          Height = 13
          Caption = 'Contato'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 9
          Top = 380
          Width = 56
          Height = 13
          Caption = 'Cond. Pgto.'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 153
          Top = 412
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 169
          Top = 380
          Width = 36
          Height = 13
          Caption = 'Transp.'
          FocusControl = EditFone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EditData: TDBEdit
          Left = 7
          Top = 51
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Data'
          DataSource = DSTabelaFornecedor
          TabOrder = 0
        end
        object EditCodigo: TDBEdit
          Left = 103
          Top = 51
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          Color = 14869218
          DataField = 'Codigo'
          DataSource = DSTabelaFornecedor
          TabOrder = 1
          OnEnter = EditCodigoEnter
          OnKeyDown = EditCodigoKeyDown
        end
        object EditCGC: TDBEdit
          Left = 9
          Top = 206
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CGC'
          DataSource = DSTabelaFornecedor
          TabOrder = 9
          OnExit = EditCGCExit
          OnKeyDown = EditCGCKeyDown
        end
        object EditFornecedor: TDBEdit
          Left = 7
          Top = 87
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fornecedor'
          DataSource = DSTabelaFornecedor
          TabOrder = 3
        end
        object EditInscricao: TDBEdit
          Left = 159
          Top = 206
          Width = 208
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Inscricao'
          DataSource = DSTabelaFornecedor
          TabOrder = 10
        end
        object EditEndereco: TDBEdit
          Left = 8
          Top = 134
          Width = 242
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Endereco'
          DataSource = DSTabelaFornecedor
          TabOrder = 4
        end
        object EditBairro: TDBEdit
          Left = 257
          Top = 134
          Width = 111
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro'
          DataSource = DSTabelaFornecedor
          TabOrder = 5
        end
        object EditCidade: TDBEdit
          Left = 9
          Top = 170
          Width = 192
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cidade'
          DataSource = DSTabelaFornecedor
          TabOrder = 6
        end
        object EditUF: TDBEdit
          Left = 206
          Top = 170
          Width = 25
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DSTabelaFornecedor
          TabOrder = 7
        end
        object EditFone: TDBEdit
          Left = 10
          Top = 255
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fone'
          DataSource = DSTabelaFornecedor
          TabOrder = 11
        end
        object EditCep: TDBEdit
          Left = 236
          Top = 171
          Width = 133
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cep'
          DataSource = DSTabelaFornecedor
          TabOrder = 8
        end
        object EditFone_Fax: TDBEdit
          Left = 256
          Top = 255
          Width = 110
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fone_Fax'
          DataSource = DSTabelaFornecedor
          TabOrder = 13
        end
        object EditEmail: TDBEdit
          Left = 10
          Top = 294
          Width = 354
          Height = 21
          DataField = 'Email'
          DataSource = DSTabelaFornecedor
          TabOrder = 14
        end
        object EditNomeFantasia: TDBEdit
          Left = 164
          Top = 51
          Width = 206
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fantasia'
          DataSource = DSTabelaFornecedor
          TabOrder = 2
          OnKeyDown = EditNomeFantasiaKeyDown
        end
        object DBEdit1: TDBEdit
          Left = 129
          Top = 255
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fone1'
          DataSource = DSTabelaFornecedor
          TabOrder = 12
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 348
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Contato1'
          DataSource = DSTabelaFornecedor
          TabOrder = 15
        end
        object DBEdit4: TDBEdit
          Left = 90
          Top = 348
          Width = 88
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cargo1'
          DataSource = DSTabelaFornecedor
          TabOrder = 16
        end
        object DBEdit5: TDBEdit
          Left = 176
          Top = 348
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Contato2'
          DataSource = DSTabelaFornecedor
          TabOrder = 17
        end
        object DBEdit6: TDBEdit
          Left = 265
          Top = 348
          Width = 98
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cargo2'
          DataSource = DSTabelaFornecedor
          TabOrder = 18
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 432
          Width = 389
          Height = 22
          Align = alBottom
          DataField = 'Obs'
          DataSource = DSTabelaFornecedor
          ScrollBars = ssVertical
          TabOrder = 21
        end
        object DBEdit7: TDBEdit
          Left = 211
          Top = 374
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Transportadora'
          DataSource = DSTabelaFornecedor
          TabOrder = 20
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 68
          Top = 375
          Width = 100
          Height = 21
          DataField = 'CondPgto'
          DataSource = DSTabelaFornecedor
          DropDownWidth = 150
          KeyField = 'Descricao'
          ListField = 'Descricao'
          ListSource = dsfatura
          TabOrder = 19
        end
      end
      object ScrollBox2: TScrollBox
        Left = 393
        Top = 0
        Width = 209
        Height = 458
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 37
          Width = 205
          Height = 417
          Align = alClient
          Color = 14869218
          DataSource = DSTabelaFornecedor
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
              FieldName = 'Fantasia'
              Width = 291
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 205
          Height = 37
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object Label14: TLabel
            Left = 32
            Top = 2
            Width = 116
            Height = 13
            Caption = 'Localizar Nome Fantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 0
            Top = 16
            Width = 201
            Height = 21
            Color = 14869218
            TabOrder = 0
            OnChange = Edit1Change
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 4
      Top = 4
      Width = 602
      Height = 51
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 1
      object ToolBar2: TToolBar
        Left = 2
        Top = 2
        Width = 598
        Height = 47
        Align = alClient
        AutoSize = True
        ButtonHeight = 41
        Caption = 'ToolBar1'
        TabOrder = 0
        object btnPrimeiro: TSpeedButton
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
        object btnVoltar: TSpeedButton
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
        object btnAvancar: TSpeedButton
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
        object btnUltimo: TSpeedButton
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
          OnClick = btnUltimoClick
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
        object btnnovo: TSpeedButton
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
          TabOrder = 6
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
        object Panel10: TPanel
          Left = 327
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 8
        end
        object Panel4: TPanel
          Left = 330
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 7
        end
        object btnimprimir: TSpeedButton
          Left = 333
          Top = 2
          Width = 52
          Height = 41
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
          Height = 41
          BevelInner = bvLowered
          TabOrder = 4
        end
        object SpeedButton23: TSpeedButton
          Left = 388
          Top = 2
          Width = 69
          Height = 41
          Caption = 'Gerar Client&e'
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
            007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
            7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
            99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton23Click
        end
        object Panel11: TPanel
          Left = 457
          Top = 2
          Width = 3
          Height = 41
          BevelInner = bvLowered
          TabOrder = 5
        end
        object SpeedButton1: TSpeedButton
          Left = 460
          Top = 2
          Width = 112
          Height = 41
          Caption = 'Produtos Comprados'
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton1Click
        end
      end
    end
  end
  object TabelaFornecedor: TTable
    AfterOpen = TabelaFornecedorAfterOpen
    BeforeEdit = TabelaFornecedorBeforeEdit
    AfterScroll = TabelaFornecedorAfterScroll
    OnPostError = TabelaFornecedorPostError
    DatabaseName = 'dbbalcao'
    TableName = 'TbFornecedor.db'
    Left = 473
    Top = 243
  end
  object DSTabelaFornecedor: TDataSource
    DataSet = TabelaFornecedor
    Left = 437
    Top = 195
  end
  object tbcliente: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'TbCliente.DB'
    Left = 499
    Top = 123
  end
  object ActionList1: TActionList
    Left = 420
    Top = 120
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
    object cliente: TAction
      Caption = 'cliente'
      ShortCut = 16454
      OnExecute = clienteExecute
    end
  end
  object dsfatura: TDataSource
    DataSet = tbfatura
    Left = 424
    Top = 312
  end
  object tbfatura: TTable
    DatabaseName = 'dbbalcao'
    TableName = 'Cond_Fatura.DB'
    Left = 424
    Top = 368
  end
end
