inherited ListOfShiftsFrame: TListOfShiftsFrame
  Width = 731
  Height = 575
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 731
  ExplicitHeight = 575
  object lbCashier2: TcxLabel
    Left = 277
    Top = 33
    AutoSize = False
    Caption = ' Cashier:'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsSingle
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = ''
    Properties.Alignment.Vert = taVCenter
    Visible = False
    Height = 19
    Width = 162
    AnchorY = 43
  end
  object lbLoginTime2: TcxLabel
    Left = 445
    Top = 33
    AutoSize = False
    Caption = ' Login time:'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsSingle
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clDefault
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = ''
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = ''
    Properties.Alignment.Vert = taVCenter
    Visible = False
    Height = 19
    Width = 215
    AnchorY = 43
  end
  object cxGrid10: TcxGrid
    Left = 0
    Top = 48
    Width = 731
    Height = 513
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu_Trans
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGrid10DBTableView1: TcxGridDBTableView
      Navigator.Visible = True
      DataController.DataSource = PgDataSource11
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 28
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGrid10DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGrid10DBTableView1id_cashdesk: TcxGridDBColumn
        DataBinding.FieldName = 'id_cashdesk'
        Visible = False
      end
      object cxGrid10DBTableView1id_cd_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'id_cd_transaction'
        Visible = False
      end
      object cxGrid10DBTableView1datetime: TcxGridDBColumn
        Caption = 'Datetime'
        DataBinding.FieldName = 'datetime'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soDescending
        Width = 130
      end
      object cxGrid10DBTableView1name: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'name'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 87
      end
      object cxGrid10DBTableView1ct_number: TcxGridDBColumn
        Caption = 'Number'
        DataBinding.FieldName = 'ct_number'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 133
      end
      object cxGrid10DBTableView1user_name: TcxGridDBColumn
        Caption = 'Cashier'
        DataBinding.FieldName = 'user_name'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 101
      end
      object cxGrid10DBTableView1id_user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'id_user'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 85
      end
      object cxGrid10DBTableView1account_id: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'account_id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 75
      end
      object cxGrid10DBTableView1confirmed: TcxGridDBColumn
        DataBinding.FieldName = 'confirmed'
        Visible = False
      end
      object cxGrid10DBTableView1confirmation_id_user: TcxGridDBColumn
        DataBinding.FieldName = 'confirmation_id_user'
        Visible = False
      end
      object cxGrid10DBTableView1account_id_debit: TcxGridDBColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'account_id_debit'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 75
      end
      object cxGrid10DBTableView1account_id_credit: TcxGridDBColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'account_id_credit'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 74
      end
      object cxGrid10DBTableView1multiple: TcxGridDBColumn
        DataBinding.FieldName = 'multiple'
        Visible = False
      end
      object cxGrid10DBTableView1transaction: TcxGridDBColumn
        DataBinding.FieldName = 'transaction'
        Visible = False
      end
      object cxGrid10DBTableView1difference: TcxGridDBColumn
        Caption = 'Difference'
        DataBinding.FieldName = 'difference'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
    end
    object cxGrid10Level1: TcxGridLevel
      GridView = cxGrid10DBTableView1
    end
  end
  object cxLabel9: TcxLabel
    Left = -2
    Top = 3
    AutoSize = False
    Caption = 'Select cashdesk:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 39
    Width = 180
  end
  object cbCashdesk: TcxDBLookupComboBox
    Left = 176
    Top = 3
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource8
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
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
    Properties.ListSource = PgDataSource9
    Properties.ReadOnly = False
    Properties.OnEditValueChanged = cbCashdeskPropertiesEditValueChanged
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'DevExpressStyle'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 4
    Width = 281
  end
  object cxButton2: TcxButton
    Left = 561
    Top = 2
    Width = 170
    Height = 40
    Anchors = [akTop, akRight]
    Caption = 'Delete shift'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = cxButton2Click
  end
  object PgQuery10: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  types.name, '
      '  t.*, '
      '  u.user_name'
      'from '
      '  tbl_cd_cash_transactions as t, '
      '  tbl_cd_cash_transactions_types as types,'
      '  tbl_users as u'
      'where '
      
        '  (t.type in (select type from tbl_cd_cash_transactions_types wh' +
        'ere is_shift = 1)) and '
      '  t.type = types.type and '
      '  t.id_user = u.id')
    Active = True
    Left = 448
    Top = 16
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgQuery10
    Left = 520
    Top = 16
  end
  object PgDataSource8: TPgDataSource
    DataSet = PgQuery6
    Left = 344
  end
  object PgQuery6: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select id, cd_name, id_workstation, description, account_id'
      'from tbl_cd')
    Active = True
    Left = 280
  end
  object PgQuery7: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    Active = True
    Left = 280
    Top = 48
  end
  object PgDataSource9: TPgDataSource
    DataSet = PgQuery7
    Left = 320
    Top = 48
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions_types')
    Active = True
    Left = 576
    Top = 16
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions_types')
    Active = True
    Left = 680
    Top = 16
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 112
    Top = 56
  end
  object PopupMenu_Trans: TPopupMenu
    Left = 576
    Top = 160
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
end
