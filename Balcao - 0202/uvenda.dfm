object fvenda: Tfvenda
  Left = 202
  Top = 37
  BorderStyle = bsDialog
  ClientHeight = 488
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 28
    Top = -1
    Width = 451
    Height = 489
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsNone
    Color = 14869218
    DataSource = fmenu.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'C'#243'digo'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 14216429
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 14216429
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vendido'
        Title.Alignment = taCenter
        Title.Color = 8421440
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 14216429
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ListBox1: TListBox
    Left = -1
    Top = 14
    Width = 28
    Height = 474
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      '1'#186
      '2'#186
      '3'#186
      '4'#186
      '5'#186
      '6'#186
      '7'#186
      '8'#186
      '9'#186
      '10'#186
      '11'#186
      '12'#186
      '13'#186
      '14'#186
      '15'#186
      '16'#186
      '17'#186
      '18'#186
      '19'#186
      '20'#186)
    ParentFont = False
    TabOrder = 1
  end
end
