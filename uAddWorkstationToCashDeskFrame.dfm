inherited AddWorkstationToCashDeskFrame: TAddWorkstationToCashDeskFrame
  Width = 813
  Height = 379
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 813
  ExplicitHeight = 379
  object lbValueName: TcxLabel
    Left = 16
    Top = 24
    AutoSize = False
    Caption = 'Workstation:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 86
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 57
    AutoSize = False
    Caption = 'Cash desk:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 86
  end
  object edId: TcxTextEdit
    Left = 388
    Top = 24
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
    TabOrder = 5
    Visible = False
    Width = 21
  end
  object cxLabel2: TcxLabel
    Left = 368
    Top = 24
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
    Width = 25
  end
  object edWorkstationDescription: TcxMemo
    Left = 116
    Top = 90
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
    TabOrder = 2
    Height = 89
    Width = 237
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 91
    AutoSize = False
    Caption = 'Description:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 89
  end
  object cbWorkstation: TcxDBLookupComboBox
    Left = 116
    Top = 22
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        MinWidth = 50
        Width = 125
        FieldName = 'name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
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
    Width = 237
  end
  object cbCashDesk: TcxDBLookupComboBox
    Left = 116
    Top = 56
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource2
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        FieldName = 'cd_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource3
    Properties.PopupAlignment = taCenter
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
    Width = 237
  end
  object Panel1: TPanel
    Left = 415
    Top = 3
    Width = 338
    Height = 65
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 8
    DesignSize = (
      338
      65)
    object btnCancel: TcxButton
      Left = 11
      Top = 24
      Width = 135
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnCancelClick
      ExplicitLeft = 3
    end
    object btnModifyWorkstationToCashDesk: TcxButton
      Left = 152
      Top = 24
      Width = 182
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'Modify'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnModifyWorkstationToCashDeskClick
      ExplicitLeft = 144
    end
    object btnAddWorkstationToCashdesk: TcxButton
      Left = 152
      Top = 24
      Width = 182
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'Add'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnAddWorkstationToCashdeskClick
      ExplicitLeft = 144
    end
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 456
    Top = 160
  end
  object PgTable1: TPgTable
    TableName = 'tbl_workstations'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 432
    Top = 40
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 496
    Top = 40
  end
  object PgTable4: TPgTable
    TableName = 'tbl_workstations'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 560
    Top = 40
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 624
    Top = 40
  end
  object PgTable2: TPgTable
    TableName = 'tbl_cd'
    OrderFields = 'cd_name'
    Connection = frmDatabase.KivosConnection
    Left = 432
    Top = 88
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 496
    Top = 88
  end
  object PgTable3: TPgTable
    TableName = 'tbl_cd'
    OrderFields = 'cd_name'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 560
    Top = 88
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 624
    Top = 88
  end
end
