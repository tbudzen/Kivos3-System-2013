inherited ListOfTransactionsFrame: TListOfTransactionsFrame
  Width = 1057
  Height = 541
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 1057
  ExplicitHeight = 541
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1057
    Height = 473
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Visible = True
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGrid1DBTableView1sort_order: TcxGridDBColumn
        Caption = 'Order'
        DataBinding.FieldName = 'sort_order'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 49
      end
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'name'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 188
      end
      object cxGrid1DBTableView1id_currency: TcxGridDBColumn
        Caption = 'Currency id'
        DataBinding.FieldName = 'id_currency'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1symbol: TcxGridDBColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'symbol'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 28
      end
      object cxGrid1DBTableView1use_current_cashdesk_account_instead_of_from: TcxGridDBColumn
        Caption = 'Cca ?'
        DataBinding.FieldName = 'use_current_cashdesk_account_instead_of_from'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 35
      end
      object cxGrid1DBTableView1account_id_from: TcxGridDBColumn
        Caption = 'From'
        DataBinding.FieldName = 'account_id_from'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 42
      end
      object cxGrid1DBTableView1use_current_cashdesk_account_instead_of_to: TcxGridDBColumn
        Caption = 'Cca ?'
        DataBinding.FieldName = 'use_current_cashdesk_account_instead_of_to'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 39
      end
      object cxGrid1DBTableView1account_id_to: TcxGridDBColumn
        Caption = 'To'
        DataBinding.FieldName = 'account_id_to'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 44
      end
      object cxGrid1DBTableView1id_category: TcxGridDBColumn
        Caption = 'Category id'
        DataBinding.FieldName = 'id_category'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1name_1: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'name_1'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 95
      end
      object cxGrid1DBTableView1direction: TcxGridDBColumn
        Caption = 'Direction'
        DataBinding.FieldName = 'direction'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1min_value: TcxGridDBColumn
        DataBinding.FieldName = 'min_value'
        Visible = False
      end
      object cxGrid1DBTableView1max_value: TcxGridDBColumn
        DataBinding.FieldName = 'max_value'
        Visible = False
      end
      object cxGrid1DBTableView1is_visible: TcxGridDBColumn
        DataBinding.FieldName = 'is_visible'
        Visible = False
      end
      object cxGrid1DBTableView1is_for_change: TcxGridDBColumn
        DataBinding.FieldName = 'is_for_change'
        Visible = False
      end
      object cxGrid1DBTableView1is_close_open: TcxGridDBColumn
        DataBinding.FieldName = 'is_close_open'
        Visible = False
      end
      object cxGrid1DBTableView1is_money_laundry: TcxGridDBColumn
        DataBinding.FieldName = 'is_money_laundry'
        Visible = False
      end
      object cxGrid1DBTableView1is_multiple_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'is_multiple_transaction'
        Visible = False
      end
      object cxGrid1DBTableView1is_multiple_accounts_manual: TcxGridDBColumn
        DataBinding.FieldName = 'is_multiple_accounts_manual'
        Visible = False
      end
      object cxGrid1DBTableView1is_multiple_accounts_fixed: TcxGridDBColumn
        DataBinding.FieldName = 'is_multiple_accounts_fixed'
        Visible = False
      end
      object cxGrid1DBTableView1is_live_games_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'is_live_games_transaction'
        Visible = False
      end
      object cxGrid1DBTableView1print_direct: TcxGridDBColumn
        DataBinding.FieldName = 'print_direct'
        Visible = False
      end
      object cxGrid1DBTableView1how_many_copies: TcxGridDBColumn
        DataBinding.FieldName = 'how_many_copies'
        Visible = False
      end
      object cxGrid1DBTableView1id_report: TcxGridDBColumn
        DataBinding.FieldName = 'id_report'
        Visible = False
      end
      object cxGrid1DBTableView1in_description: TcxGridDBColumn
        DataBinding.FieldName = 'in_description'
        Visible = False
      end
      object cxGrid1DBTableView1out_description: TcxGridDBColumn
        DataBinding.FieldName = 'out_description'
        Visible = False
      end
      object cxGrid1DBTableView1needs_confirmation: TcxGridDBColumn
        DataBinding.FieldName = 'needs_confirmation'
        Visible = False
      end
      object cxGrid1DBTableView1cashier_can_confirm: TcxGridDBColumn
        DataBinding.FieldName = 'cashier_can_confirm'
        Visible = False
      end
      object cxGrid1DBTableView1needs_authorisation_before_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'needs_authorisation_before_transaction'
        Visible = False
      end
      object cxGrid1DBTableView1confirmation_min_value: TcxGridDBColumn
        DataBinding.FieldName = 'confirmation_min_value'
        Visible = False
      end
      object cxGrid1DBTableView1confirmation_message: TcxGridDBColumn
        DataBinding.FieldName = 'confirmation_message'
        Visible = False
      end
      object cxGrid1DBTableView1surveillance_send: TcxGridDBColumn
        DataBinding.FieldName = 'surveillance_send'
        Visible = False
      end
      object cxGrid1DBTableView1surveillance_min_value: TcxGridDBColumn
        DataBinding.FieldName = 'surveillance_min_value'
        Visible = False
      end
      object cxGrid1DBTableView1money_laundry_export_file: TcxGridDBColumn
        DataBinding.FieldName = 'money_laundry_export_file'
        Visible = False
      end
      object cxGrid1DBTableView1money_laundry_min_value: TcxGridDBColumn
        DataBinding.FieldName = 'money_laundry_min_value'
        Visible = False
      end
      object cxGrid1DBTableView1live_games_account_id_fill_from: TcxGridDBColumn
        DataBinding.FieldName = 'live_games_account_id_fill_from'
        Visible = False
      end
      object cxGrid1DBTableView1live_games_account_id_credit_to: TcxGridDBColumn
        DataBinding.FieldName = 'live_games_account_id_credit_to'
        Visible = False
      end
      object cxGrid1DBTableView1name_2: TcxGridDBColumn
        Caption = 'Direction'
        DataBinding.FieldName = 'name_2'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 54
      end
      object cxGrid1DBTableView1use_in_transfer: TcxGridDBColumn
        DataBinding.FieldName = 'use_in_transfer'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 40
      end
      object cxGrid1DBTableView_MainTransactionGD: TcxGridDBColumn
        DataBinding.FieldName = 'main_transaction_gd'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 43
      end
      object cxGrid1DBTableView_Acount_From_GD: TcxGridDBColumn
        DataBinding.FieldName = 'account_from_gd'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 43
      end
      object cxGrid1DBTableView_Acount_to_GD: TcxGridDBColumn
        DataBinding.FieldName = 'account_to_gd'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 40
      end
      object cxGrid1DBTableView1Column_allow_Change_GD: TcxGridDBColumn
        DataBinding.FieldName = 'allow_change_gd'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 42
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnAddTransaction: TcxButton
    Left = 16
    Top = 491
    Width = 145
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = 'Add'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddTransactionClick
  end
  object btnModifyTransaction: TcxButton
    Left = 167
    Top = 491
    Width = 145
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyTransactionClick
  end
  object btnDeleteTransaction: TcxButton
    Left = 318
    Top = 491
    Width = 145
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = 'Delete'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnDeleteTransactionClick
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select t.*, curr.symbol, cat.name, d.name '
      
        'from tbl_transactions as t, tbl_currencies as curr, tbl_categori' +
        'es as cat, tbl_directions as d'
      
        'where t.id_currency = curr.id and t.id_category = cat.id and t.d' +
        'irection = d.id')
    Active = True
    Left = 472
    Top = 128
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 408
    Top = 128
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 536
    Top = 128
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
  object PopupMenu: TPopupMenu
    Left = 856
    Top = 216
    object Ekxporttoexcel1: TMenuItem
      Caption = 'Ekxport to excel'
      OnClick = Ekxporttoexcel1Click
    end
  end
end
