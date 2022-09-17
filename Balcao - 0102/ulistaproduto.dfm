object flistaproduto: Tflistaproduto
  Left = 107
  Top = 7
  BorderStyle = bsDialog
  Caption = 'PRODUTOS CADASTRADOS'
  ClientHeight = 545
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 71
    Width = 625
    Height = 474
    Align = alClient
    Color = 13553358
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
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
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Title.Caption = 'Nome'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRUNITARIO'
        Title.Caption = 'Vr. Unit.'
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
        FieldName = 'VrVenda'
        Title.Caption = 'Vr. Venda'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRVENDA'
        Title.Caption = 'Revenda'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Image1: TDBImage
    Left = 144
    Top = 176
    Width = 305
    Height = 249
    Hint = 'Clique e tecle + ou - para zoom '
    Color = 14869218
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Visible = False
    OnKeyDown = Image1KeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 71
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 42
      Width = 513
      Height = 26
    end
    object Bevel1: TBevel
      Left = 526
      Top = 4
      Width = 95
      Height = 63
    end
    object Label1: TLabel
      Left = 93
      Top = 3
      Width = 33
      Height = 13
      Alignment = taCenter
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 310
      Top = 3
      Width = 58
      Height = 13
      Alignment = taCenter
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 529
      Top = 26
      Width = 91
      Height = 19
      Caption = '&Limpar'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 529
      Top = 6
      Width = 91
      Height = 19
      Caption = '&Inserir (INS)'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 529
      Top = 46
      Width = 91
      Height = 19
      Caption = 'Consumidores'
      Flat = True
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 10
      Top = 3
      Width = 35
      Height = 13
      Alignment = taCenter
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 49
      Width = 100
      Height = 13
      Alignment = taCenter
      Caption = 'Aproximadamente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object combonome: TComboBox
      Left = 92
      Top = 16
      Width = 215
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = combonomeChange
      OnDropDown = combonomeDropDown
    end
    object combomodelo: TComboBox
      Left = 312
      Top = 16
      Width = 209
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = combomodeloChange
      OnDropDown = combomodeloDropDown
    end
    object combogrupo: TComboBox
      Left = 7
      Top = 16
      Width = 80
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = combogrupoChange
    end
    object Edit1: TEdit
      Left = 117
      Top = 45
      Width = 399
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 184
    Top = 200
  end
  object ActionList1: TActionList
    Left = 296
    Top = 296
    object inserir: TAction
      Caption = 'inserir'
      ShortCut = 45
      OnExecute = inserirExecute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object filtrar: TAction
      Caption = 'filtrar'
      OnExecute = filtrarExecute
    end
    object foco: TAction
      Caption = 'foco'
      ShortCut = 113
      OnExecute = focoExecute
    end
    object fimagem: TAction
      Caption = 'fimagem'
      OnExecute = fimagemExecute
    end
    object cmodelo: TAction
      Caption = 'cmodelo'
      OnExecute = cmodeloExecute
    end
    object combos: TAction
      Caption = 'combos'
      OnExecute = combosExecute
    end
    object cnome: TAction
      Caption = 'cnome'
      OnExecute = cnomeExecute
    end
  end
  object Query1: TQuery
    DatabaseName = 'dbbalcao'
    SQL.Strings = (
      'select distinct produto from tbproduto order by produto')
    Left = 280
    Top = 136
  end
  object Table1: TTable
    AfterScroll = Table1AfterScroll
    DatabaseName = 'dbbalcao'
    IndexFieldNames = 'PRODUTO;DESCRICAO'
    TableName = 'TbProduto.DB'
    Left = 88
    Top = 184
  end
end
