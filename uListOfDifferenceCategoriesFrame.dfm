inherited ListOfDifferenceCategoriesFrame: TListOfDifferenceCategoriesFrame
  Width = 674
  Height = 559
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 674
  ExplicitHeight = 559
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 674
    Height = 497
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Visible = True
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle6
      Styles.Selection = cxStyle14
      object cxGrid1DBTableView1id: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'id'
        Visible = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'name'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 221
      end
      object cxGrid1DBTableView1description: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'description'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 237
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnModifyDifferenceCategory: TcxButton
    Left = 199
    Top = 509
    Width = 194
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyDifferenceCategoryClick
  end
  object btnAddDifferenceCategory: TcxButton
    Left = 16
    Top = 509
    Width = 177
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Add'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddDifferenceCategoryClick
  end
  object btnDeleteDifferenceCategory: TcxButton
    Left = 399
    Top = 509
    Width = 194
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnDeleteDifferenceCategoryClick
  end
  object PgTable1: TPgTable
    TableName = 'tbl_difference_categories'
    Connection = frmDatabase.KivosConnection
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Active = True
    Left = 584
    Top = 368
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 584
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 336
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object TreeListStyleSheetDevExpress: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle6
      Styles.Inactive = cxStyle10
      Styles.Selection = cxStyle14
      Styles.BandBackground = cxStyle3
      Styles.BandHeader = cxStyle4
      Styles.ColumnHeader = cxStyle5
      Styles.ContentEven = cxStyle7
      Styles.ContentOdd = cxStyle8
      Styles.Footer = cxStyle9
      Styles.IncSearch = cxStyle11
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 304
    Top = 168
  end
  object PopupMenu: TPopupMenu
    Left = 352
    Top = 256
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
end
