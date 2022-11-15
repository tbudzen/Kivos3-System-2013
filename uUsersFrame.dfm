inherited UsersFrame: TUsersFrame
  Width = 726
  Height = 568
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 726
  ExplicitHeight = 568
  object UsersGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 497
    Height = 568
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
    object UsersGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = PgDataSource1
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.NavigatorHints = True
      OptionsData.Appending = True
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clBackground
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle11
      Styles.Selection = cxStyle14
      object UsersGridDBTableView1user_name: TcxGridDBColumn
        DataBinding.FieldName = 'user_name'
      end
      object UsersGridDBTableView1first_name: TcxGridDBColumn
        DataBinding.FieldName = 'first_name'
      end
      object UsersGridDBTableView1last_name: TcxGridDBColumn
        DataBinding.FieldName = 'last_name'
      end
      object UsersGridDBTableView1password: TcxGridDBColumn
        DataBinding.FieldName = 'password'
      end
      object UsersGridDBTableView1has_to_change_password: TcxGridDBColumn
        DataBinding.FieldName = 'has_to_change_password'
      end
      object UsersGridDBTableView1windows_authentication: TcxGridDBColumn
        DataBinding.FieldName = 'windows_authentication'
      end
    end
    object UsersGridLevel1: TcxGridLevel
      GridView = UsersGridDBTableView1
    end
  end
  object btnAddUser: TcxButton
    Left = 573
    Top = 15
    Width = 137
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Add user'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddUserClick
  end
  object btnModifyUser: TcxButton
    Left = 573
    Top = 54
    Width = 137
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Modify user'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyUserClick
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 272
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
  object Sys_Users_DataSource: TDataSource
    DataSet = Sys_Users_Dataset
    Left = 552
    Top = 184
  end
  object Sys_Users_Dataset: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 552
    Top = 128
  end
  object DataSetProvider: TDataSetProvider
    DataSet = frmDatabase.GenericSQLTable
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 72
  end
  object PgConnection1: TPgConnection
    Username = 'postgres'
    Password = 'test'
    Server = 'localhost'
    Connected = False
    LoginPrompt = False
    Database = 'kivos_30'
    Options.UseUnicode = True
    SSLOptions.Mode = smPrefer
    Left = 600
    Top = 312
  end
  object PgTable1: TPgTable
    TableName = 'tbl_users'
    Connection = PgConnection1
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Active = True
    Left = 600
    Top = 368
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 600
    Top = 424
  end
end
