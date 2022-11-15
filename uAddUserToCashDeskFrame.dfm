inherited AddUserToCashDeskFrame: TAddUserToCashDeskFrame
  Width = 699
  Height = 481
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 699
  ExplicitHeight = 481
  object cxLabel3: TcxLabel
    Left = 16
    Top = 19
    AutoSize = False
    Caption = 'Cash desk:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 30
    Width = 105
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 79
    AutoSize = False
    Caption = 'List of users in selected cash desk'
    ParentFont = False
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Properties.Alignment.Horz = taLeftJustify
    Height = 19
    Width = 303
  end
  object cxLabel2: TcxLabel
    Left = 374
    Top = 79
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'List of all users'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taLeftJustify
    Height = 19
    Width = 307
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 104
    Width = 289
    Height = 357
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu_USers
    TabOrder = 4
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = PgDataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        MinWidth = 0
        Width = 0
      end
      object cxGrid1DBTableView1user_name: TcxGridDBColumn
        Caption = 'User name'
        DataBinding.FieldName = 'user_name'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 300
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 374
    Top = 104
    Width = 307
    Height = 357
    Anchors = [akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu_AllUsers
    TabOrder = 5
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        MinWidth = 0
        Width = 0
      end
      object cxGridDBTableView1user_name: TcxGridDBColumn
        Caption = 'User name'
        DataBinding.FieldName = 'user_name'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 300
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 317
    Top = 104
    Width = 43
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '<<'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 317
    Top = 135
    Width = 43
    Height = 26
    Anchors = [akTop, akRight]
    Caption = '>>'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = cxButton2Click
  end
  object cbCashDesk: TcxDBLookupComboBox
    Left = 105
    Top = 17
    AutoSize = False
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource3
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        FieldName = 'cd_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
    Properties.OnEditValueChanged = cbCashDeskPropertiesEditValueChanged
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.Shadow = False
    Style.TextStyle = []
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 0
    Height = 28
    Width = 200
  end
  object PgTable1: TPgTable
    TableName = 'tbl_users'
    Connection = frmDatabase.KivosConnection
    Left = 168
    Top = 264
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 232
    Top = 264
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery1
    Left = 512
    Top = 48
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 416
    Top = 3
  end
  object PgTable3: TPgTable
    TableName = 'tbl_cd'
    Connection = frmDatabase.KivosConnection
    Left = 360
    Top = 3
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 520
    Top = 3
  end
  object PgTable4: TPgTable
    TableName = 'tbl_cd'
    Connection = frmDatabase.KivosConnection
    Left = 472
    Top = 3
  end
  object PgQuery1: TPgQuery
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'SELECT cd_u.*, u.user_name '
      'FROM tbl_cd_users as cd_u, tbl_users as u '
      'WHERE cd_u.id_user = u.id AND id_cashdesk = 4')
    Left = 448
    Top = 48
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 40
    Top = 240
  end
  object PopupMenu_USers: TPopupMenu
    Left = 216
    Top = 176
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_AllUsers: TPopupMenu
    Left = 520
    Top = 184
    object Exporttoexcel2: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel2Click
    end
  end
end
