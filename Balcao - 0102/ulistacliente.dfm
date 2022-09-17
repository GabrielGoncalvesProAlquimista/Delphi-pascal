object flistacliente: Tflistacliente
  Left = 57
  Top = 11
  BorderStyle = bsDialog
  Caption = 'CLIENTES CADASTRADOS'
  ClientHeight = 465
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 478
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Digite o Nome Fantasia e tecle Entre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 4
      Top = 18
      Width = 481
      Height = 24
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 490
    Height = 416
    Align = alClient
    Color = 13553358
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
        FieldName = 'NomeFantasia'
        Title.Alignment = taCenter
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 15532031
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 262
        Visible = True
      end>
  end
  object Table1: TTable
    DatabaseName = 'dbvendas'
    IndexFieldNames = 'NomeFantasia'
    TableName = 'TbCliente.DB'
    Left = 112
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 184
    Top = 112
  end
end
