inherited AddUserGroupFrame: TAddUserGroupFrame
  Width = 644
  Height = 400
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 644
  ExplicitHeight = 400
  object cxLabel2: TcxLabel
    Left = 16
    Top = 15
    AutoSize = False
    Caption = 'User:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 73
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 49
    AutoSize = False
    Caption = 'Group:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 73
  end
  object btnAddUserGroup: TcxButton
    Left = 467
    Top = 351
    Width = 161
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddUserGroupClick
  end
  object btnCancel: TcxButton
    Left = 326
    Top = 351
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnModifyUserGroup: TcxButton
    Left = 467
    Top = 351
    Width = 161
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyUserGroupClick
  end
  object edId: TcxTextEdit
    Left = 326
    Top = 16
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 7
    Visible = False
    Width = 34
  end
  object cxLabel1: TcxLabel
    Left = 303
    Top = 16
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
    Height = 28
    Width = 17
  end
  object cbUser: TcxDBLookupComboBox
    Left = 87
    Top = 15
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        FieldName = 'user_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource2
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
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
    Width = 185
  end
  object cbGroup: TcxDBLookupComboBox
    Left = 87
    Top = 49
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource3
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        FieldName = 'group_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
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
    TabOrder = 1
    Width = 185
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 464
    Top = 40
  end
  object PgTable1: TPgTable
    TableName = 'tbl_users'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 400
    Top = 40
  end
  object PgTable2: TPgTable
    TableName = 'tbl_users'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 528
    Top = 40
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 592
    Top = 40
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 464
    Top = 96
  end
  object PgTable3: TPgTable
    TableName = 'tbl_access_groups'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 400
    Top = 96
  end
  object PgTable4: TPgTable
    TableName = 'tbl_access_groups'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 528
    Top = 96
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 592
    Top = 96
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 424
    Top = 184
  end
end
