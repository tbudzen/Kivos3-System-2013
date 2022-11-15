inherited ListOfUserGroupsObjectsFrame: TListOfUserGroupsObjectsFrame
  Width = 607
  Height = 468
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 607
  ExplicitHeight = 468
  object btnAddUser: TcxButton
    Left = 417
    Top = 15
    Width = 174
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Add user to group'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddUserClick
  end
  object btnModifyUser: TcxButton
    Left = 417
    Top = 54
    Width = 174
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Modify user in group'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyUserClick
  end
  object btnDeleteUser: TcxButton
    Left = 417
    Top = 93
    Width = 174
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Delete user from group'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 15
    Width = 385
    Height = 434
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle6
      Styles.Selection = cxStyle14
      object cxGrid1DBTableView1user_name: TcxGridDBColumn
        Caption = 'User name'
        DataBinding.FieldName = 'user_name'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 128
      end
      object cxGrid1DBTableView1group_name: TcxGridDBColumn
        Caption = 'Group name'
        DataBinding.FieldName = 'group_name'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 135
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object PgConnection1: TPgConnection
    Username = 'postgres'
    Password = 'test'
    Server = 'localhost'
    Connected = false
    LoginPrompt = False
    Database = 'kivos_30'
    Options.UseUnicode = True
    SSLOptions.Mode = smPrefer
    Left = 496
    Top = 208
  end
  object PgTable1: TPgTable
    TableName = 'tbl_users_access_groups'
    Connection = PgConnection1
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Active = True
    Left = 448
    Top = 272
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 496
    Top = 320
  end
  object PgQuery1: TPgQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select'
      '  ug.id_user,'
      '  ug.id_group,'
      '  u.user_name,'
      '  g.group_name'
      'from'
      '  tbl_users_access_groups as ug,'
      '  tbl_users as u,'
      '  tbl_access_groups as g'
      'where'
      '  u.id = ug.id_user and'
      '  g.id = ug.id_group')
    Active = True
    Left = 544
    Top = 264
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 384
    Top = 224
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
end
