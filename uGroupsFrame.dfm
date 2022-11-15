inherited GroupsFrame: TGroupsFrame
  Width = 727
  Height = 561
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 727
  ExplicitHeight = 561
  object lbMainHeader: TLabel
    Left = 16
    Top = 3
    Width = 487
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Groups frame'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5131854
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 409
  end
  object GroupsGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 575
    Height = 561
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object GroupsGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = Sys_Groups_DataSource
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.NavigatorHints = True
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clBackground
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle11
      object GroupsGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object GroupsGridDBTableView1roles: TcxGridDBColumn
        DataBinding.FieldName = 'roles'
      end
      object GroupsGridDBTableView1list_id: TcxGridDBColumn
        DataBinding.FieldName = 'list_id'
      end
      object GroupsGridDBTableView1section: TcxGridDBColumn
        DataBinding.FieldName = 'section'
      end
      object GroupsGridDBTableView1form: TcxGridDBColumn
        DataBinding.FieldName = 'form'
      end
      object GroupsGridDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
      object GroupsGridDBTableView1description: TcxGridDBColumn
        DataBinding.FieldName = 'description'
      end
      object GroupsGridDBTableView1pscreen: TcxGridDBColumn
        DataBinding.FieldName = 'pscreen'
      end
      object GroupsGridDBTableView1imagenr: TcxGridDBColumn
        DataBinding.FieldName = 'imagenr'
      end
      object GroupsGridDBTableView1myorder: TcxGridDBColumn
        DataBinding.FieldName = 'myorder'
      end
      object GroupsGridDBTableView1kind: TcxGridDBColumn
        DataBinding.FieldName = 'kind'
      end
      object GroupsGridDBTableView1expanded: TcxGridDBColumn
        DataBinding.FieldName = 'expanded'
      end
      object GroupsGridDBTableView1active: TcxGridDBColumn
        DataBinding.FieldName = 'active'
      end
      object GroupsGridDBTableView1openform: TcxGridDBColumn
        DataBinding.FieldName = 'openform'
      end
      object GroupsGridDBTableView1puser_modify: TcxGridDBColumn
        DataBinding.FieldName = 'puser_modify'
      end
      object GroupsGridDBTableView1user_name_modify: TcxGridDBColumn
        DataBinding.FieldName = 'user_name_modify'
      end
      object GroupsGridDBTableView1date_modify: TcxGridDBColumn
        DataBinding.FieldName = 'date_modify'
      end
      object GroupsGridDBTableView1visible: TcxGridDBColumn
        DataBinding.FieldName = 'visible'
      end
    end
    object GroupsGridLevel1: TcxGridLevel
      GridView = GroupsGridDBTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 552
    Top = 368
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
      Color = 14215166
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
      Color = 12937777
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
  object Sys_Groups_DataSource: TDataSource
    DataSet = Sys_Groups_Dataset
    Left = 632
    Top = 192
  end
  object Sys_Groups_Dataset: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 632
    Top = 136
  end
  object DataSetProvider: TDataSetProvider
    DataSet = frmDatabase.GenericSQLTable
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 80
  end
end
