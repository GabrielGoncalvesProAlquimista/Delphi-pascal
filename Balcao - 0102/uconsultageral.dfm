object fconsultageral: Tfconsultageral
  Left = 6
  Top = 148
  Width = 808
  Height = 580
  Caption = 'CONSULTA GERAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 65
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 5
      Top = 6
      Width = 268
      Height = 54
    end
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 162
      Height = 13
      Caption = 'Escolha aqui a consulta desejada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 289
      Top = 6
      Width = 252
      Height = 55
    end
    object Label2: TLabel
      Left = 298
      Top = 13
      Width = 233
      Height = 13
      Alignment = taCenter
      Caption = 'Digite um per'#237'odo ou deixe em branco para todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 560
      Top = 16
      Width = 57
      Height = 33
      Caption = 'Atualizar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 624
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Limpar Data'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object ComboBoxEx1: TComboBoxEx
      Left = 9
      Top = 30
      Width = 252
      Height = 25
      ItemsEx.CaseSensitive = False
      ItemsEx.SortType = stNone
      ItemsEx = <
        item
          Caption = 'PEDIDO CLIENTE'
          SelectedImageIndex = 6
        end
        item
          Caption = 'PEDIDO FORNECEDOR'
          SelectedImageIndex = 4
        end
        item
          Caption = 'ENTRADA DE MESCADORIA'
          SelectedImageIndex = 5
        end>
      StyleEx = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Text = 'ESCOLHA UMA OP'#199#195'O AQUI'
      OnClick = ComboBoxEx1Click
      Images = fmenu.ImageList1
      DropDownCount = 20
    end
    object MaskEdit1: TMaskEdit
      Left = 320
      Top = 32
      Width = 74
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnKeyDown = MaskEdit1KeyDown
    end
    object MaskEdit2: TMaskEdit
      Left = 424
      Top = 32
      Width = 74
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnKeyDown = MaskEdit2KeyDown
    end
  end
  object OKStart: TDecisionPivot
    Left = 0
    Top = 65
    Width = 800
    Height = 41
    ButtonAutoSize = True
    DecisionSource = DecisionSource1
    GroupLayout = xtHorizontal
    Groups = [xtRows, xtColumns, xtSummaries]
    ButtonSpacing = 0
    ButtonWidth = 64
    ButtonHeight = 24
    GroupSpacing = 10
    BorderWidth = 0
    BorderStyle = bsNone
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Color = 8421440
    ParentFont = False
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 106
    Width = 800
    Height = 447
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Dados'
      object DecisionGrid1: TDecisionGrid
        Left = 0
        Top = 0
        Width = 792
        Height = 419
        DefaultColWidth = 150
        DefaultRowHeight = 20
        CaptionColor = clActiveCaption
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clCaptionText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        DataColor = clInfoBk
        DataSumColor = clNone
        DataFont.Charset = DEFAULT_CHARSET
        DataFont.Color = clWindowText
        DataFont.Height = -11
        DataFont.Name = 'MS Sans Serif'
        DataFont.Style = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        LabelColor = clBtnFace
        LabelSumColor = clInactiveCaption
        DecisionSource = DecisionSource1
        Dimensions = <
          item
            FieldName = 'Fantasia'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'Nome'
            Color = clNone
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'Contar'
            Color = clNone
            Format = '00'
            Alignment = taCenter
            Subtotals = True
          end
          item
            FieldName = 'Somar'
            Color = clNone
            Format = '###,##0.00'
            Alignment = taCenter
            Subtotals = True
          end>
        Totals = True
        ShowCubeEditor = False
        Align = alClient
        Color = clBtnFace
        GridLineWidth = 1
        GridLineColor = clWindowText
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Gr'#225'fico'
      ImageIndex = 1
      object DecisionGraph1: TDecisionGraph
        Left = 0
        Top = 0
        Width = 792
        Height = 419
        DecisionSource = DecisionSource1
        Title.Text.Strings = (
          'TDecisionGraph')
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Query1: TDecisionQuery
    DatabaseName = 'dbvendas'
    SQL.Strings = (
      'SELECT Fantasia, Nome, COUNT( Qtd ) Contar, SUM( Total ) Somar'
      'FROM "tbpedidoitem.DB"'
      'GROUP BY Fantasia, Nome')
    Left = 192
    Top = 160
  end
  object DecisionCube1: TDecisionCube
    DataSet = Query1
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'Fantasia'
        BaseName = '"tbpedidoitem.DB".Fantasia'
        Name = 'Fantasia'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 4
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'Nome'
        BaseName = '"tbpedidoitem.DB".Nome'
        Name = 'Nome'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = 22
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftInteger
        Fieldname = 'Contar'
        BaseName = '"tbpedidoitem.DB".Qtd'
        Name = 'Contar'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFloat
        Fieldname = 'Somar'
        BaseName = '"tbpedidoitem.DB".Total'
        Name = 'Somar'
        DerivedFrom = -1
        DimensionType = dimSum
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = False
    MaxDimensions = 5
    MaxSummaries = 10
    MaxCells = 0
    Left = 368
    Top = 296
  end
  object DecisionSource1: TDecisionSource
    DecisionCube = DecisionCube1
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 272
    Top = 184
    DimensionCount = 2
    SummaryCount = 2
    CurrentSummary = 0
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      2
      0
      1
      0
      0
      1
      0
      1
      0
      0)
  end
end
