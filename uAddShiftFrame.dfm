inherited AddShiftFrame: TAddShiftFrame
  Width = 1158
  Height = 738
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 1158
  ExplicitHeight = 738
  object cxLabel76: TcxLabel
    Left = 11
    Top = 484
    AutoSize = False
    Caption = 'Amounts:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    Transparent = True
    Height = 19
    Width = 56
  end
  object cxGrid11: TcxGrid
    Left = 0
    Top = 47
    Width = 1158
    Height = 386
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGridDBTableView9: TcxGridDBTableView
      OnKeyDown = cxGridDBTableView9KeyDown
      Navigator.Visible = True
      DataController.DataSource = PgDataSource3
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView9amount
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxGridDBTableView9amount
        end
        item
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '### ### ### ### ##0.00'
          Kind = skSum
          FieldName = 'amount_chf'
          Column = cxGridDBTableView9amount_chf
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGridDBTableView9value_id: TcxGridDBColumn
        DataBinding.FieldName = 'value_id'
        Visible = False
      end
      object cxGridDBTableView9id_cd_sub_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'id_cd_sub_transaction'
        Visible = False
      end
      object cxGridDBTableView9id_cd_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'id_cd_transaction'
        Visible = False
      end
      object cxGridDBTableView9id_cd_category: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'id_cd_category'
        Visible = False
      end
      object cxGridDBTableView9category: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'category_name'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 152
      end
      object cxGridDBTableView9id_cd_value: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'id_cd_value'
        Visible = False
      end
      object cxGridDBTableView9id_cashdesk: TcxGridDBColumn
        DataBinding.FieldName = 'id_cashdesk'
        Visible = False
      end
      object cxGridDBTableView9ct_number: TcxGridDBColumn
        DataBinding.FieldName = 'ct_number'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGridDBTableView9nr: TcxGridDBColumn
        Caption = 'Nr'
        DataBinding.FieldName = 'value_nr'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnEditValueChanged = cxGridDBTableView9nrPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Width = 150
      end
      object cxGridDBTableView9value: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'value_name'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 157
      end
      object cxGridDBTableView9multiplier: TcxGridDBColumn
        Caption = 'Multiplier'
        DataBinding.FieldName = 'value_multiplier'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 159
      end
      object cxGridDBTableView9count: TcxGridDBColumn
        Caption = 'Count'
        DataBinding.FieldName = 'count'
        Visible = False
      end
      object cxGridDBTableView9amount_in: TcxGridDBColumn
        Caption = 'Amount in'
        DataBinding.FieldName = 'amount_in'
        Visible = False
      end
      object cxGridDBTableView9amount_out: TcxGridDBColumn
        Caption = 'Amount out'
        DataBinding.FieldName = 'amount_out'
        Visible = False
      end
      object cxGridDBTableView9amount: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'amount_base'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = cxStyle3
        Width = 157
      end
      object cxGridDBTableView9change_chf: TcxGridDBColumn
        Caption = 'Change CHF'
        DataBinding.FieldName = 'change_chf'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 159
      end
      object cxGridDBTableView9amount_chf: TcxGridDBColumn
        Caption = 'Amount CHF'
        DataBinding.FieldName = 'amount_chf'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = cxStyle3
        Width = 157
      end
    end
    object cxGridLevel9: TcxGridLevel
      GridView = cxGridDBTableView9
    end
  end
  object cxGrid12: TcxGrid
    Left = 0
    Top = 432
    Width = 1158
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 7
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGridDBTableView10: TcxGridDBTableView
      Navigator.Visible = True
      DataController.DataSource = PgDataSource4
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGridDBTableView10amount
        end
        item
          Kind = skSum
          Column = cxGridDBTableView10amount
        end>
      DataController.Summary.FooterSummaryItems.OnSummary = cxGridDBTableView10DataControllerSummaryFooterSummaryItemsSummary
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '### ### ### ### ##0.00'
          Kind = skSum
          FieldName = 'actual_amount'
          Column = cxGridDBTableView10amount
        end
        item
          Format = '### ### ### ### ##0.00'
          Kind = skSum
          FieldName = 'amount_expected'
          Column = cxGridDBTableView10amount_1
        end
        item
          Format = '### ### ### ### ##0.00'
          Kind = skSum
          FieldName = 'difference'
          Column = cxGridDBTableView10difference
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGridDBTableView10name: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'category_name'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 232
      end
      object cxGridDBTableView10currency_symbol: TcxGridDBColumn
        Caption = 'Curr.'
        DataBinding.FieldName = 'currency_symbol'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 84
      end
      object cxGridDBTableView10actual_amount_fc: TcxGridDBColumn
        Caption = 'Actual amount f.c.'
        DataBinding.FieldName = 'actual_amount_fc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 135
      end
      object cxGridDBTableView10amount: TcxGridDBColumn
        Caption = 'Actual amount CHF'
        DataBinding.FieldName = 'actual_amount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Styles.Content = cxStyle3
        Width = 135
      end
      object cxGridDBTableView10amount_expected_fc: TcxGridDBColumn
        Caption = 'Amount expected f.c.'
        DataBinding.FieldName = 'amount_expected_fc'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 135
      end
      object cxGridDBTableView10amount_1: TcxGridDBColumn
        Caption = 'Amount expected CHF'
        DataBinding.FieldName = 'amount_expected'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Styles.Content = cxStyle3
        Width = 135
      end
      object cxGridDBTableView10difference: TcxGridDBColumn
        Caption = 'Difference'
        DataBinding.FieldName = 'difference'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Styles.Content = cxStyle3
        Width = 152
      end
    end
    object cxGrid12Level1: TcxGridLevel
      GridView = cxGridDBTableView10
    end
  end
  object edTransactionNo: TcxTextEdit
    Left = 870
    Top = 18
    Anchors = [akTop, akRight]
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Properties.UseLeftAlignmentOnEditing = False
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'DevExpressStyle'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 2
    Width = 288
  end
  object cxLabel3: TcxLabel
    Left = 870
    Top = 1
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'Number:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Transparent = True
    Height = 19
    Width = 288
    AnchorX = 1014
  end
  object lbShiftName: TcxLabel
    Left = 0
    Top = 0
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Please wait ...'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsSingle
    Style.Color = 12314600
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.HotTrack = False
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    Properties.Alignment.Horz = taCenter
    Height = 41
    Width = 542
    AnchorX = 271
  end
  object btnConfirm: TcxButton
    Left = 0
    Top = 687
    Width = 179
    Height = 40
    Cursor = crHandPoint
    Spacing = 12
    Anchors = [akLeft, akBottom]
    Caption = 'Confirm'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    OptionsImage.ImageIndex = 7
    OptionsImage.Images = ImageList1
    OptionsImage.Spacing = 12
    TabOrder = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnConfirmClick
  end
  object btnCancel: TcxButton
    Left = 287
    Top = 694
    Width = 109
    Height = 27
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelClick
  end
  object edId: TcxTextEdit
    Left = 599
    Top = 20
    Enabled = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 1
    Visible = False
    Width = 32
  end
  object cxLabel72: TcxLabel
    Left = 575
    Top = 22
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Visible = False
    Height = 19
    Width = 18
  end
  object cxLabel_UserExpl: TcxLabel
    Left = 560
    Top = 676
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Caption = 'User explanation:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 29
    Width = 110
  end
  object mUserExplanation: TcxMemo
    Left = 563
    Top = 703
    Anchors = [akLeft, akRight, akBottom]
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 4
    Height = 32
    Width = 598
  end
  object btnBufferShift: TcxButton
    Left = 185
    Top = 694
    Width = 99
    Height = 27
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = 'Buffer shift'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnBufferShiftClick
  end
  object cxButton_Continous: TcxButton
    Left = 398
    Top = 694
    Width = 159
    Height = 27
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = 'Continous shift'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton_ContinousClick
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_difference_categories')
    Left = 558
    Top = 56
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 638
    Top = 56
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_difference_categories')
    Left = 558
    Top = 104
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 638
    Top = 104
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  c.id as value_id,'
      '  c.nr as value_nr, '
      '  v.multiplier as value_multiplier,'
      '  c.nr * v.multiplier as amount_base,'
      '  cer.buying as change_chf,'
      '  c.nr * v.multiplier * cer.buying as amount_chf,'
      '  cat.name as category_name,'
      '  v.name as value_name'
      'from'
      '  tbl_cd_cash_transactions_subt_categories_values as c,'
      '  tbl_values as v,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr'
      'where'
      '  0 = 1 and'
      '  c.id_cd_category = cat.id and'
      '  c.id_cd_value = v.id and'
      '  cer.valid_from <= now() and'
      '  cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and'
      '  v.id_currency = curr.id '
      'order by'
      '  v.sort_order asc')
    Left = 79
    Top = 248
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 168
    Top = 248
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 704
    Top = 56
  end
  object PgQuery4: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select t1.category_name, t2.currency_symbol, t1.amount_0 as actu' +
        'al_amount_fc, t1.amount_1 as actual_amount, t2.amount_0 as amoun' +
        't_expected_fc, t2.amount_1 as amount_expected, t1.amount_1 - t2.' +
        'amount_1 as difference from'
      '('
      'select'
      '  cat.name as category_name,  '
      '  sum(v.nr * v2.multiplier) as amount_0,'
      '  sum(v.nr * v2.multiplier * cer.buying) as amount_1'
      'from '
      '  tbl_cd_cash_transactions as t,'#9
      '  tbl_cd_cash_transactions_subt_categories_values as v'
      '  left join tbl_cd_values as v1 on v.id_cd_value = v1.id_value'
      '  left join tbl_values as v2 on v1.id_value = v2.id,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr,'
      '  ('
      '  select max(datetime) as m_datetime'
      '  from tbl_cd_cash_transactions'
      '  where type = 1) as m'
      'where '
      '  (t.datetime <= now() and t.datetime >= m.m_datetime) and'
      '  v.ct_number = t.ct_number and'
      '  v.id_cd_category = cat.id and'
      '  cer.valid_from <= now() and cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and v2.id_currency = curr.id '
      'group by '
      '  cat.name'
      ') as t1,'
      '('
      'select'
      '  cat.name as category_name,'
      '  curr.symbol as currency_symbol,'
      '  sum(v.nr * v2.multiplier) as amount_0, '
      '  sum(v.nr * v2.multiplier * cer.buying) as amount_1'
      'from '
      '  tbl_cd_cash_transactions as t,'#9
      '  tbl_cd_cash_transactions_subt_categories_values as v'
      '  left join tbl_cd_values as v1 on v.id_cd_value = v1.id_value'
      '  left join tbl_values as v2 on v1.id_value = v2.id,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr,'
      '  tbl_values as v0'
      'where '
      '  v.ct_number = t.ct_number and'
      '  v.id_cd_category = cat.id and'
      '  cer.valid_from <= now() and cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and v0.id_currency = curr.id '
      'group by '
      '  cat.name, curr.symbol'
      ') as t2'
      'where '
      '0 = 1 and'
      't1.category_name = t2.category_name')
    Left = 104
    Top = 448
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery4
    Left = 176
    Top = 448
  end
  object PgQuery5: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    Left = 344
    Top = 272
  end
  object GenericQuery: TPgQuery
    SQL.Strings = (
      'select * from tbl_cd')
    Left = 200
    Top = 336
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10944511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clDefault
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.Content = cxStyle2
      BuiltIn = True
    end
  end
  object PopupMenu: TPopupMenu
    Left = 456
    Top = 288
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 576
    object exporttogrid1: TMenuItem
      Caption = 'export to grid'
      OnClick = exporttogrid1Click
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 1008
    Top = 216
    Bitmap = {
      494C010108009400940020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084591000B57D0800B5790800B579
      0000B5790000B5790000B5790000B5790000B5790800B5790800B5790800B579
      0000B5790000B5790000B5790000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000040000003C
      210000713900008E4A00008A4A00008A4A00008A4A00008A4A00008E4A000071
      3900003C21000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B57D0800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000004A65D6004261D600293C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010080000713900008E4A00009A
      5A0000A26B0000AA730000AE730000AE730000AE730000AE730000AA730000A2
      6B00009A5A00008E4A0000713900001008000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CA2A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000029387B00EFFFFF00B5D3F7004A65D60008081800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000512900008E4A0000A2630000B27B0021BE
      940039CFA50052DBB5005ADBBD005ADBBD005ADBBD005ADBBD0052DBB50039CF
      A50021BE940000B27B0000A26300008E4A000051290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A2A500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000814290084A2E700F7FFFF00E7FFFF00637DDE00080818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007D420000965A0000AA730029C79C0052DBB50039DB
      B50018DBA50000D79C0000D7940000D7940000D7940000D7940000D79C0018DB
      A50039DBAD0052DBB50029C79C0000AA730000965A00007D4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000008A
      4A00008A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A29C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000005271DE00EFFFFF00E7FFFF00E7FFFF006382DE000008
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007D4200009E630000B27B004AD3AD0042DBB50000D79C0000D7
      9C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D7
      9C0000D79C0000D79C0042DBB5004AD3AD0000B27B00009E6300007D42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008A4A0000C3
      840000C38400008A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A29C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000003959D600E7FFFF00DEFFFF00DEFFFF00C6EBFF004265
      D6003955BD004261DE004261DE004261DE004261DE004261DE004265DE003959
      BD0029458C00101C390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007D4200009E630008B6840052DBB50021D7A50000D7940000D79C0000D7
      9C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D7
      9C0000D79C0000D79C0000D79C0021D7A50052DBB50008B68400009E6300007D
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008A4A0000BE840000DF
      A50000DFA50000BE8400008A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A29C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000638AE700DEFFFF00D6FFFF00D6FFFF00DEFFFF00BDE7
      FF00B5DFF700E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00BDDF
      FF009CC3F7007396E7004265DE00294594000004080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000051
      290000965A0000B27B0052DBB50018D7A50000D3940000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0018D7A50052DBB50000B27B000096
      5A00005129000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008A4A0000BE7B0000DF9C0000DB
      9C0000DB9C0000DF9C0000BE7B00008A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF009C9E9C00A59E
      9C00A59E9C00A59E9C00A59E9C00A5A29C00A5A29C00ADA6A500A5A29C00A5A2
      9C00A59E9C00A59E9C00A59E9C00000000000000000000000000000000000000
      0000000000000000000084AAEF00D6FFFF00D6FBFF00CEFBFF00D6FBFF00D6FF
      FF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00D6FF
      FF00D6FFFF00DEFFFF00CEF7FF0094B6EF004A71DE0021347300000000000000
      000000000000000000000000000000000000000000000000000000100800008E
      4A0000AA73004AD3AD0021D7A50000D3940000D39C0000D39C0000D39C0000D3
      940000D3940000D3940000D3940000D3940000D39C0000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D3940021D7A5004AD3AD0000AA
      7300008E4A000010080000000000000000000000000000000000000000000000
      0000000000000000000000000000008A4A0000BE840000DBA50000D79C0000D7
      9C0000D79C0000D79C0000DBA50000BE8400008A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFFF00A5A29C00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700000000000000000000000000000000000000
      0000000000003959C60094BAEF00D6FFFF00CEFBFF00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF00CEFBFF00D6FFFF00D6FFFF00D6FFFF00D6FFFF00CEFBFF00CEFB
      FF00CEFBFF00CEFBFF00CEFFFF00D6FFFF00C6F3FF006B8EE7004261C6000000
      00000000000000000000000000000000000000000000000000000071390000A2
      630029C79C0042DBB50000D3940000D39C0000D39C0000D39C0000D3940000CF
      8C00ADF3DE00FFFFFF00ADF3DE0000CF8C0000D3940000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D3940042DBB50029C7
      9C0000A263000071390000000000000000000000000000000000000000000000
      00000000000000000000008A4A0000BE840000D7A50000D79C0000D39C0000D3
      9C0000D39C0000D39C0000D79C0000D7A50000BE8400008A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFBF700FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBF700FFFFF700A59E9C00FFFFF700FFFB
      F700FFFBEF00FFFBEF00FFFBEF00000000000000000000000000000000000000
      0000425DC6008CB6EF00D6FFFF00CEFBFF00C6F7FF00C6F7FF00C6F7FF00C6F7
      FF00CEF7FF00CEFFFF0094BEFF005282F7005282F70094BEFF00CEFFFF00CEF7
      FF00C6F7FF00C6F7FF00C6F7FF00CEFBFF00CEFFFF00D6FFFF008CB6F700425D
      C600000000000000000000000000000000000000000000040000008E4A0000B2
      7B0052DBBD0000D39C0000D39C0000D39C0000D39C0000CF940000CF8C00A5F3
      DE00FFFFFF00FFFFFF00FFFFFF00A5F3DE0000CF8C0000CF940000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0052DB
      B50000B27B00008E4A0000040000000000000000000000000000000000000000
      000000000000008A4A0000BA840000D7A50000D39C0000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D7A50000BA8400008A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFBEF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFFF700A59E9400FFFFF700FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00000000000000000000000000000000004261
      C6009CC3F700D6FFFF00C6F7FF00C6F7FF00C6F7FF00C6F7FF00C6F7FF00C6F7
      FF00C6F7FF00CEFFFF00527DEF005A86F7005A86F700527DEF00C6F7FF00C6F7
      FF00C6F7FF00C6F7FF00C6F7FF00C6F7FF00C6F7FF00C6F7FF00D6FFFF009CC3
      F7004261C60000000000000000000000000000000000003C2100009A5A0021BE
      940039DBB50000D3940000D39C0000D39C0000CF940000CB8C00A5F3DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5F3DE0000CB8C0000CF940000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0039DB
      AD0021BE9400009A5A00003C2100000000000000000000000000000000000000
      0000008A4A0000BA840000D3A50000D39C0000CF9C0000CF9C0000CF9C0000CF
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000D39C0000D3A50000BA8400008A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFBEF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFFBEF00FFFFEF00A59E9400FFFFEF00FFFB
      EF00FFF7EF00FFF7EF00FFF7EF0000000000000000000000000021387300739A
      EF00D6FFFF00C6F7FF00BDF7FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3
      FF00C6F7FF00CEFFFF004A79EF005A86EF005A86EF005279EF00BDF7FF00C6F7
      FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF7FF00C6F7FF00D6FF
      FF00739AEF00213873000000000000000000000000000071390000A26B0039CF
      A50018D7A50000D39C0000D39C0000CF940000CB9400A5EFDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EFDE0000CB8C0000CF
      940000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0018D7
      A50039CFA50000A26B000071390000000000000000000000000000000000008A
      4A0000B6840000D3A50000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CB
      9C0000CB9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000D3A50000B6
      8400008A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFFBEF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFFEF00A59E9400FFFFEF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF000000000000000000000408005275E700CEFB
      FF00C6F7FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3
      FF00BDF3FF00C6F7FF008CBAF7005279EF005279EF008CBAF700C6F7FF00BDF3
      FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00C6F7
      FF00CEFBFF005275E700000408000000000000000000008E4A0000AA73005ADB
      BD0000D39C0000CF9C0000CF9C0000CF9400ADF3DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EFDE0000CB
      8C0000CF940000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000D3
      9C0052DBB50000AA7300008E4A00000000000000000000000000008A4A0000B6
      840000CFA50000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0021E7
      B50021E7B50000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CF
      A50000B68400008A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000845D3100BD864200000000000000000000000000000000000000
      000000000000000000000000000000000000B57D0800FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFEF00FFFFEF00FFFFF700A5A29400FFFFF700FFFF
      EF00FFFFEF00FFFFEF00FFFFEF0000000000000000002945840084AEF700CEFB
      FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3
      FF00BDF3FF00BDF3FF00C6FBFF00CEFFFF00CEFFFF00C6FBFF00BDF3FF00BDF3
      FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3FF00BDF3
      FF00CEFBFF0084AEF700294584000000000000000000008A4A0000AA730063E3
      C60000CF940000CF9C0000CF9C0000CB9400EFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5EFDE0000C78400A5EFDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EF
      DE0000CB8C0000CF940000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A000000000000000000008A4A0000B6840000CF
      A50000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0029EBB5000082
      42000082420029EBB50000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CFA50000B68400008A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5824200FFCB8400B58242000000000000000000000000000000
      000084591000B5821000B57D1000B57D0800B5790800B5750000AD710000AD71
      0000B5750000AD863900A5A29C00A59E9400A59E9400ADA29400A59E9400A59E
      9400A59A9400A59A9400A59A940000000000000000004265CE00B5E7FF00C6F7
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EF
      FF00B5EFFF00B5F3FF009CCFFF004A71E7004A71E7009CD7FF00B5F3FF00B5EF
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EF
      FF00C6F7FF00B5E7FF004265CE000000000000000000008A4A0000B27B0063E7
      C60000CF940000CF9C0000CF9C0000CB940018D7A500FFFFFF00FFFFFF00ADEF
      DE0000CB8C0000CB940000CB8C00A5EFDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5EFDE0000CB8C0000CB940000CF9C0000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A000000000000000000008A4A0031F3C60000CB
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0031EFBD00008642000000
      0000000000000086420031EFBD0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000CB9C0000CFA50000B68400008A42000000000000000000000000000000
      0000000000000000000000000000000000000000000084593100BD864200B582
      4200B5824200B57D4200EFBE7300EFBE7300B582420000000000000000000000
      0000B5821000FFEBD600F7DFC600F7DFC600F7DFC600F7DFC600F7DFBD00F7DF
      BD00FFE7D600B5750000FFFFF700FFFFEF00FFFFEF00A59E9400FFFFEF00FFFF
      E700FFFBE700FFFBE700FFFBE70000000000000000004A75E700D6FFFF00B5F3
      FF00ADEFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EF
      FF00B5EFFF00B5F3FF0084B2F7004A71E7004A75E7009CD3FF00B5F3FF00B5EF
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00ADEF
      FF00B5F3FF00D6FFFF004A75E7000000000000000000008A4A0010B684006BEB
      CE0000CB940000CF9C0000CF9C0000CF940000CB94008CEBD600B5F3E70000CB
      940000CB940000CF9C0000CB940000CB8C00A5EFDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5EFDE0000CB8C0000CB940000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A000000000000000000000000000086420039EF
      C60000C79C0000C79C0000C79C0000C79C0039EFC60000864200000000000000
      000000000000000000000086420039EFC60000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000CBA50000B28400008A420000000000000000000000
      00000000000000000000000000000000000000000000BD864200EFBE7B00E7B6
      6B00E7B66B00E7B66B00E7B26B00E7B26B00EFB66B00B5824200000000000000
      0000B57D0800F7E7CE00EFD3A500EFCFA500EFD3A500EFD3A500EFCFA500EFD3
      A500F7E7CE00AD750000FFFFF700FFF7E700FFFBE700A59A8C00FFFBE700FFF7
      E700FFF7DE00FFF7DE00FFF7DE0000000000000000004A75E700CEFFFF00B5EF
      FF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEB
      FF00ADEBFF00ADEFFF009CD7FF004A71E7005275E700638AE700ADF3FF00B5F3
      FF00ADEFFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEB
      FF00B5EFFF00CEFFFF004A75E7000000000000000000008A4A0018BE8C006BEF
      CE0000CB940000CF9C0000CF9C0000CF9C0000CB940000CB940000CB940000CB
      940000CF9C0000CF9C0000CF9C0000CB940000C78C00A5EFDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5EFDE0000C7940000CB940000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A00000000000000000000000000000000000086
      420042EFC60000C39C0000C39C0042EFC6000086420000000000000000000000
      00000000000000000000000000000086420042EFC60000C39C0000C39C0000C3
      9C0000C39C0000C39C0000C79C0000C7A50000B28400008A4200000000000000
      00000000000000000000000000000000000000000000B5824200EFC38C00DEAA
      5A00DEAA5A00DEAA5A00DEAA5A00DEAA5A00DEAA5A00EFC78C00BD8242000000
      0000B57D0800F7E7CE00EFC79400EFC79400EFC79400EFC79400EFC79400EFC7
      9400F7E7CE00AD710000FFFFEF00FFF7E700FFFBE700A59A8C00FFFBE700FFF7
      DE00FFF3DE00FFF3DE00FFF3DE0000000000000000004A75E700CEFFFF00ADEF
      FF00A5EBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEB
      FF00ADEBFF00ADEBFF00B5F3FF005A82E7004A71E7004A71E7005A86E7009CDF
      FF00ADEFFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00ADEBFF00A5EB
      FF00ADEFFF00CEFFFF004A75E7000000000000000000008A4A0029BE94006BEF
      D60000CF9C0000CB940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C78C00A5EFDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ADEFDE0000CB940000CB9C0000CB9C0000CF
      9C0052DBB50000AA7300008E4A00000000000000000000000000000000000000
      0000008642004AF3CE004AF3CE00008642000000000000000000000000000000
      000000000000000000000000000000000000008642004AF3CE0000C39C0000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C7A50000B28400008A42000000
      00000000000000000000000000000000000000000000B5824200EFCB9C00D69E
      4A00D69E5200D69E5200D69E5200D6A25200D69E5200EFCF9C00BD8242000000
      0000B57D0800F7E7D600E7BE8400E7BE8400E7BE8400E7BE8400E7BE8400E7BE
      8400F7E7CE00AD710000FFFFEF00FFF7DE00FFFBE700A59A8C00FFFBE700FFF3
      DE00FFF3DE00FFF3DE00FFF3DE0000000000000000004A79EF00D6FFFF00ADEF
      FF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EB
      FF00A5EBFF00A5EBFF00A5EFFF00A5EBFF005A82E7004A6DDE004A6DDE004A6D
      DE009CDBFF00A5EFFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EB
      FF00ADEFFF00D6FFFF004A79EF0000000000000000000071390021B6840063E7
      C60021D7AD0000CB940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C78C00A5EF
      DE00FFFFFF00FFFFFF00FFFFFF00EFFBFF0000C7940000CB9C0000CB9C0018D3
      A50039CFA50000A26B0000713900000000000000000000000000000000000000
      000000000000008A4200008A4200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008642005AF3CE0000BE
      9C0000BE9C0000BE9C0000BE9C0000BE9C0000C39C0000C3A50000AE8400008A
      42000000000000000000000000000000000000000000BD824200EFD7B500EFD3
      AD00EFD3AD00EFD3AD00DEBA8C00CE964200EFD7B500B5824200000000000000
      0000B57D0800F7EBD600DEB26B00DEB26B00E7B27300E7B27300DEB26B00DEB2
      6B00F7E7CE00AD750000FFFFEF00FFF7DE00FFFBDE00A59A8C00FFFBDE00FFF3
      DE00FFF3DE00FFF3DE00FFF3DE0000000000000000004A6DCE00BDE7FF00B5EF
      FF009CE7FF00A5E7FF00A5E7FF00A5E7FF00A5E7FF00A5E7FF00A5E7FF00A5EB
      FF00A5EBFF00A5EBFF00A5EBFF00A5EBFF00A5EBFF005A8AE7004A69DE004A69
      DE005A86E700A5EFFF00A5E7FF00A5E7FF00A5E7FF00A5E7FF00A5E7FF009CE7
      FF00BDF3FF00BDE7FF004A6DCE000000000000000000003C210018A673005ADF
      BD004AE7C60000C7940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C7
      8C00ADEFDE00FFFFFF00FFFFFF0018CFA50000CB940000CB9C0000CB940039D7
      B50021BE9400009A5A00003C2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000086420063F3
      D60000BA9C0000BE9C0000BE9C0000BE9C0000BE9C0000BE9C0000C3A50000AE
      8400008A420000000000000000000000000000000000845D2900BD824200B582
      3900B5823900B57D3900EFD7B500EFD7B500B582390000000000000000000000
      0000B5821000FFEBDE00F7EBD600F7E7D600F7E7D600F7E7CE00F7E7CE00F7E7
      CE00FFEBD600B5750000FFFFEF00FFFBDE00FFFBDE00A59E8C00FFFBDE00FFF7
      DE00FFF7DE00FFF7DE00FFF7DE00000000000000000031498C008CB2F700CEF7
      FF009CE7FF009CE7FF009CE7FF009CE7FF009CE7FF009CE7FF00A5EBFF008CCB
      F7007BAEEF0084C3F700A5EBFF009CEBFF00A5EBFF00ADF7FF005279DE004A69
      DE004261DE00A5F3FF009CE7FF009CE7FF009CE7FF009CE7FF009CE7FF009CE7
      FF00CEF7FF008CB2F70031498C00000000000000000000040000008E4A005ADB
      BD0073F7DE0000CB9C0000C7940000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000C7
      940000C79400B5F3E7008CE7D60000C7940000CB940000CB9C0000CB9C0052DB
      B50000B27B00008E4A0000040000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000086
      42006BF3DE0000BA9C0000BA9C0000BA9C0000BA9C0000BA9C0000BE9C0000BE
      A50000AE8400008A420000000000000000000000000000000000000000000000
      000000000000BD824200EFD7B500B58239000000000000000000000000000000
      0000845D1000B5821000B57D1000B57D0800B5790800B5750000AD750000AD75
      0000B5750000AD863100A59E8C00A59A8C00A59A8C00AD9E8C00A59A8C00A59A
      8400A59A8400A59A8400A59A84000000000000000000000408005A86EF00CEF7
      FF00B5EFFF0094E3FF009CE3FF009CE3FF009CE3FF009CE7FF009CEFFF004259
      D6004261D6004A6DDE009CEBFF009CEBFF009CEBFF00A5F7FF005A7DDE004A69
      D600425DD600A5EFFF009CE7FF009CE3FF009CE3FF009CE3FF0094E3FF00B5EF
      FF00CEF7FF005A86EF00000408000000000000000000000000000071390039BE
      940073EFD6005AEFCE0000C7940000C7940000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000C7940000C7940000C7940000C7940000CB9C0000C7940042D7B50029C7
      9C0000A263000071390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086420073F3DE0000B69C0000BA9C0000BA9C0000BA9C0000BA9C0000BA
      9C0000BAA50000AA8400008E4A00000000000000000000000000000000000000
      000000000000845D3100BD864200000000000000000000000000000000000000
      000000000000000000000000000000000000B57D0800FFFFFF00FFFBE700FFFB
      E700FFFBE700FFFBDE00FFF7DE00FFF7DE00FFFBDE00A59E8C00FFFBDE00FFF7
      D600FFF7D600FFF7D600FFF7D60000000000000000000000000029417B007BA6
      F700D6FBFF00A5EBFF0094E3FF0094E3FF0094E3FF0094E3FF009CEBFF005A7D
      DE004261D6004261D6005A82DE008CCFFF008CCFFF00638EE7004261D6004261
      D6004A69D6009CEBFF0094E7FF0094E3FF0094E3FF0094E3FF00A5EBFF00D6FB
      FF007BA6F70029417B000000000000000000000000000000000000100800008E
      4A0073E3C6007BFBDE0029DBB50000C7940000C7940000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C7940021D3A5004AD3AD0000AA
      7300008E4A000010080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008642007BF7E70000B69C0000B69C0000B69C0000B69C0000B6
      9C0000B69C007BFBE700008A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFF3D600FFEF
      D600FFF3D600FFF3D600FFEFD600FFF3D600FFF7D600A5968400FFF7D600FFF3
      D600FFEFD600FFEFD600FFEFD600000000000000000000000000000000004A75
      D6009CC7FF00D6F7FF00A5E7FF008CDFFF008CE3FF0094E3FF0094E7FF0084D3
      FF004261D600425DD600425DD600425DD600425DD600425DD600425DD6004261
      D6008CD3FF0094E7FF0094E3FF008CE3FF008CDFFF00A5E7FF00D6F7FF009CC7
      FF004A75D6000000000000000000000000000000000000000000000000000051
      290021A66B0094F3DE007BFFE70021D7AD0000C3940000C7940000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C7940018CFA50052DBB50000B27B000096
      5A00005129000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000086420084F7E70000B29C0000B29C0000B29C0000B2
      9C0084F7E7000086420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00FFEFD600FFF7D600A5968400FFF7D600FFEF
      D600FFEFCE00FFEFCE00FFEFCE00000000000000000000000000000000000000
      00004A71D60094BEFF00D6FBFF00BDEFFF008CDFFF008CDFFF008CDFFF008CE7
      FF008CDBFF00638EE7004255CE004259CE004259CE004255CE005A86DE0084CF
      FF0094E7FF008CDFFF008CDFFF008CDFFF00BDEFFF00D6FBFF0094BEFF004A71
      D600000000000000000000000000000000000000000000000000000000000000
      00000079390052C79C009CFBE7007BFFDE0029DBB50000C3940000C7940000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C7940021CFA50052DBBD0008B68400009E6300007D
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008642008CF7EF0000B29C0000B29C008CF7
      EF00008642000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFF7D600A5968400FFF7D600FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00000000000000000000000000000000000000
      0000000000004A75DE007BA6F700C6EFFF00D6F7FF00ADEBFF008CDFFF0084DF
      FF008CE3FF008CE7FF008CEBFF008CEBFF008CEBFF008CEBFF008CE7FF008CE3
      FF0084DFFF008CDFFF00ADEBFF00D6F7FF00C6EFFF00739EF7004A79DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007539005ACBA500B5FFF70084FFE7005AEFCE0000C79C0000C3
      940000C3940000C3940000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      940000C3940000C79C0042D7B5004AD7B50000B27B00009E6300007D42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000086420094FBEF0094FBEF000086
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5790800FFFFFF00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00FFEFCE00FFF3D6009C967B00FFF3D600FFEF
      CE00FFEFCE00FFEFCE00FFEFCE00000000000000000000000000000000000000
      0000000000000000000029457B005A8EF70094BEFF00CEEFFF00DEFBFF00C6F3
      FF00ADEBFF009CE7FF0094E3FF0094E3FF0094E3FF0094E3FF009CE7FF00ADEB
      FF00C6F3FF00DEFBFF00CEEFFF0094BEFF005A8EF70029457B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000079390031AE7B00C6FFF7009CFFEF007BFFE70052EB
      C60021D7AD0000C79C0000BE940000C3940000C3940000C3940000C79C0021D3
      AD0042DFBD005AE3C60029C79C0000AA730000965A00007D4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008A4200008A42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B57D0800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000004080039599C005286F7007BAAF700A5CB
      FF00BDDFFF00DEFFFF00DEFFFF00DEFFFF00DEFFFF00DEFFFF00DEFFFF00BDDF
      FF00A5CBFF007BAAF7005286F70039599C000004080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000512900008E4A0073D7B500ADFFEF0094FB
      E70084FBDE007BFBDE007BFBDE0073F7DE0073F3D60073F3D6006BEFCE0052DF
      BD0031CBA50008B6840000A26300008E4A000051290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084591000B57D0800B5790800B579
      0800B5790800B5790800B5790800B5790800B5790800B5790800B5790800B579
      0800B5790800B5790800B5790800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000182442003959
      9C004A79D6005286F7005286F7005286F7005286F7005286F7005286F7004A79
      D60039599C001824420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000100800006D3100008E4A0039B6
      8C005ACFAD0073E3C6006BDFC60063DBBD0052D3B50042CBA50031C39C0010AE
      7B00089E6300008E4A0000713900001008000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000400000038
      1800006D3900008642000086420000864200008A4200008A4200008A42000071
      3900003C21000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000613100008E
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001C100000653100008A4A00008A4A00008A4A00008A4A0000653100001C
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059310000C78400008A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010344A0021699C0021699C0021699C0010344A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD7D1800B57D0800B57D0800B5790800B5790800B5790800B5790800B579
      0800B5790800B5790800B5790800B5790800B5790800B5790800B5790800B579
      0800B5790800B5790800B5790800B5790800B5790800B57D0800B57D0800AD7D
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000004D
      29000092520000B67B0000CF940000D3940000D3940000CF940000B67B000092
      5200005129000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000059290000BE840000E3A500008A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000004
      000010456300216D9C00398EB5005AAED6005AB2D6005AAED600398EB500216D
      9C00104563000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57D0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B57D
      08000000000000000000000000000000000000000000AD791800B57D0800B579
      0800B5790000B5790000B5790000B5790000B5790000B5790800B5790800B579
      0800B5790000B5790000B5790000B5790800BD7D0800C67D08004A8631000096
      5A0000CB8C0000CF8C0000CB8C0000C7840000C7840000CB8C0000CF8C0000CB
      8C00009652000051290000000000000000000000000000000000000000000000
      00000000000000000000000000000059290000BA840000DBA50000DBA5000082
      420000864200008A4200008A4200008A4200008A4200008A4200008A4200008A
      4200008A4A0000864200005D3100002410000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000C1000104563002971
      A5004296BD005AAED60052AAD60052AACE0063AED60052AACE0052AAD6005AAE
      D6004296BD002971A50010456300000C10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7AD00E7D7B500E7D7B500E7D7B500E7D7B500E7D7
      B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7
      B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7B500E7D7AD00FFFFFF00B579
      08000000000000000000000000000000000000000000B57D0800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6F3F700008E4A0000CB
      8C0000CB8C0000C78C0000C38400FFFFFF00FFFFFF0000C3840000C78C0000CB
      8C0000CB8C0000925200001C0800000000000000000000000000000000000000
      000000000000000000000059290000BA840000D7A50000D39C0000D39C0000DB
      A50000DBA50000DBA50000DBA50000DBA50000DBA50000DBA50000DBA50000D3
      A50000D7A50000C38C0000AA7300008E4A0000864A0000241000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000014180018557B002979A5004296BD0052AA
      D60052AACE0052A6CE0052A6CE0052A6CE0063AED60052A6CE0052A6CE0052A6
      CE0052AACE0052AAD6004296BD002979A50018557B0000141800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7B500E7D7B500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500E7D7B500E7D7B500FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6C3A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFC7B50042AE840000AE6B0000CB
      8C0000C7840000C3840000BE7B00FFFFFF00FFFFFF0000BE7B0000C3840000C7
      840000CB8C0000B2730000653100000000000000000000000000000000000000
      000000000000005D310000B6840000D39C0000CF9C0000CB9C0000CB9C0000CF
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CB
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000AE7300008A4200006939000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008243100185D8C003182AD004A9AC60052AACE0052A6CE0052A6
      CE0052A2CE0052A2CE0052A2CE004AA2CE006BAED6004AA2CE0052A2CE0052A2
      CE0052A2CE0052A6CE0052A6CE0052AACE004A9AC6003182AD00185D8C000824
      3100000000000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7B500EFDBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500E7D7B500FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00D6BE
      A500D6BEA500D6BEA500D6BEA500D6BEA500D6BEA500D6BEA500DEC3A500D6BE
      A500D6BEA500D6BEA500D6BEA500DEC3A500F7CBB5000082390000C3840000C3
      840000BE7B0000BE730000BA6B00FFFFFF00FFFFFF0000BA6B0000BE730000BE
      7B0000C3840000C78400008A4A00000000000000000000000000000000000000
      000000000000008A4A0029DBBD0000CBA50000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CFA50000C39400008E4A00007D
      4200000000000000000000000000000000000000000000000000000000000828
      3900216994003182AD004A9EC60052A6CE0052A2CE0052A2CE004AA2CE004AA2
      CE004AA2CE004AA2CE004AA2CE004AA2C6006BB2D6004AA2C6004AA2CE004AA2
      CE004AA2CE004AA2CE004AA2CE0052A2CE0052A2CE0052A6CE004A9EC6003182
      AD00216994000828390000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7B500E7DBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500E7DBB500E7D7B500FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BEA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7C7B5000082390010CF940000BE
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000BE7B0018CF9400008A4A00000000000000000000000000000000000000
      000000000000005D310000B2840063DFC60000C39C0000C39C0000C39C0000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C3
      9C0000C39C0000C39C0000C79C0000C79C0000C79C0000CBA50000C39400008E
      4A00005D3100000000000000000000000000000000000000000000000000216D
      9C004292BD0052A2CE004AA2CE004A9ECE004A9EC6004A9EC6004A9EC6004A9E
      C6004A9EC6004A9EC6004A9EC6004A9EC60073B2D6004A9EC6004A9EC6004A9E
      C6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9ECE004AA2CE0052A2
      CE004292BD00216D9C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7
      AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7
      AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00E7D7AD00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BE9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7C7AD000082390031D3A50000BA
      7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000BA730039D3A500008A4A00000000000000000000000000000000000000
      000000000000000000000059290000AE7B0063DFC60000BE940094E7D6004AE7
      D60052EBD60052EBD60052EBD60052EBD60052EBD6007BE3D6007BE3D6007BE7
      D60073E3CE004AD7BD0000C79C0000C39C0000C39C0000C79C0000C7A50000BE
      9400008A42000024100000000000000000000000000000000000000000002169
      9C005AAACE004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9E
      C6004A9EC6004A9EC6004A9EC6004A9AC6007BB6D6004A9AC6004A9EC6004A9E
      C6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9E
      C6005AAACE0021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFB
      F700FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFB
      F700FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFBF700FFFFFF00B579
      08000000000000000000000000000000000000000000B5790000FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFFF00D6BA9C00FFFF
      FF00FFFFF700FFFFF700FFFFF700FFFFFF00EFC7AD00008239006BDBB50000BA
      7B0000BA730000B6730000B26B00FFFFFF00FFFFFF0000B26B0000B6730000BA
      730000BA7B006BDFBD00008A4200000000000000000000000000000000000000
      00000000000000000000000000000059290000AA7B005ADBC60084E3D6000082
      3900008642000086420000864200008642000086420000864200008A4A00109E
      630021B284006BDBC60073E3CE0021CBAD0000BE9C0000C39C0000C39C0000C7
      A50000AA7300008A420000000000000000000000000000000000000000002169
      9C005AAACE004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9A
      C6004A9AC6004A9AC6004A9AC600429AC6007BB6D600429AC6004A9AC6004A9A
      C6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9A
      C6005AAACE0021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6BE9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFC3AD0042AE7B0052C39C0029CB
      940000BA7B0000BA7B0000B66B00FFFFFF00FFFFFF0000B66B0000BA7B0000BA
      7B0029CB940063C7A50000653100000000000000000000000000000000000000
      0000000000000000000000000000000000000059290000AA7B007BE3DE00008A
      4200000000000000000000000000000000000000000000000000001C10000018
      0800004D2900008A4A004AC39C0084E3D60029CBAD0000BE9C0000BE9C0000C3
      9C0000C39C00008E4A00001C0800000000000000000000000000000000002169
      9C0063AACE00429AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9A
      C6004A9AC6004A9AC600429AC6004296C60084BAD6004296C600429AC6004A9A
      C6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC6004A9AC600429A
      C60063AACE0021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3
      E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3
      E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00D6BA
      9C00D6BA9C00D6BA9C00D6BA9C00D6BA9C00D6BA9C00D6BE9C00DEBEA500D6BE
      9C00D6BA9C00D6BA9C00D6BA9C00DEBE9C00E7C3A500ADB28C00008E4A0084E3
      C60018C38C0000B6730000B26B00FFFFFF00FFFFFF0000B26B0000B6730018C7
      8C008CE3C60008965200001C0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059290000AA8400008E
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000000C0800007539004AC39C0084E3D60008BEA50000BA9C0000BA
      9C0000BEA50000A27300005D3100000000000000000000000000000000002169
      9C006BAAD6004296C6004296C6004296C6004296C6004296C6004296C6004296
      C6004296C6004296C6004296C6004292BD0084BAD6004292BD004296C6004296
      C6004296C6004296C6004296C6004296C6004296C6004296C6004296C6004296
      C6006BAAD60021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3
      E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3
      E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700F7F3E700FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFFF00D6BE9C00FFFF
      FF00FFFFF700FFFFF700FFFFF700FFFFFF00DEBE9C00FFFFFF004AB284000092
      520094E3C6005AD7AD0008BE7B0000B26B0000B26B0008BE7B005AD7AD0094E3
      CE00089A5A000051290000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000613100008E
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000040000008A420073DBC6005AD3C60000B69C0000B6
      9C0000BA9C0000AE8C0000864200000000000000000000000000000000002169
      9C006BAED6004292C6004292C6004292C6004292C6004292C6004292C6004292
      C6004292C6004292C6004292C6003992BD008CBEDE003992BD004292C6004292
      C6004292C6004292C6004292C6004292C6004292C6004292C6004292C6004292
      C6006BAED60021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFFF700D6BA9400FFFF
      F700FFFBEF00FFFBEF00FFFBEF00FFFFF700D6BA9C00FFFFF700FFFFFF0063B6
      8C00008A420052BE94008CDFC6009CE7CE009CE7CE008CDFC60052BE9400008E
      5200528629000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000051290029B28C008CE7DE007BDFD6007BDF
      D6007BDFD60084E3DE00008A4A00000000000000000000000000000000002169
      9C0073AED600398EBD004292BD004292BD004292BD004292BD004292BD004292
      BD004292BD004292BD004292BD00398EBD0094BEDE00398EBD004292BD004292
      BD004292BD004292BD004292BD004292BD004292BD004292BD004292BD00398E
      BD0073AED60021699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFFEF00D6BA9400FFFF
      EF00FFFBEF00FFFBEF00FFFBEF00FFFFEF00D6BA9400FFFFF700FFFBEF00FFFF
      F700CEE3CE0039AA7300007D3100007D3100007D3100007D310039AA7300CEF3
      EF00CE7D08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000201000008A4A00008A4200008A4200008A
      4200008A4200008A420000613100000000000000000000000000000000001869
      9C007BB2D600398EBD00428EBD00428EBD00428EBD00428EBD00428EBD00428E
      BD00428EBD00428EBD00428EBD00398ABD009CC3DE00398ABD00428EBD00428E
      BD00428EBD00428EBD00428EBD00428EBD00428EBD00428EBD00428EBD00398E
      BD007BB2D60018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EFDE00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFB
      EF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFBEF00FFFFF700D6BA9400FFFF
      F700FFFBEF00FFFBEF00FFFBEF00FFFFF700D6BA9400FFFFF700FFFFEF00FFFF
      EF00FFFFF700FFFFFF00EFC3A500FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFF
      FF00BD7D08000000000000000000000000000000000000613100008A4A000086
      4200008642000086420000864200008A4A000020100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C007BB2D600398ABD00398EBD00398EBD00398EBD00398EBD00398EBD00398E
      BD00398EBD00398EBD00398ABD00398ABD009CC7DE00398ABD00398ABD00398E
      BD00398EBD00398EBD00398EBD00398EBD00398EBD00398EBD00398EBD00398A
      BD007BB2D60018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00D6B6
      8C00D6B69400D6B69400D6B69400D6B69400D6B69400D6BA9400DEBA9C00D6BA
      9400D6B69400D6B69400D6B69400D6BA9400DEBA9C00D6BA9400D6B69400D6B6
      9400D6B69400DEBA9400DEBE9C00DEBA9400DEBA9400DEB69400D6B69400FFFF
      FF00B579080000000000000000000000000000000000008A4A0010EFAD0000E7
      A50000E3A50000E39C0094FBDE0029BE8C00004D290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C0084B6D6003986BD00398ABD00398ABD00398ABD00398ABD00398ABD00398A
      BD00398ABD00398ABD00398ABD003186B500ADCBDE003186B500398ABD00398A
      BD00398ABD00398ABD00398ABD00398ABD00398ABD00398ABD00398ABD003986
      BD0084B6D60018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFFB
      E700FFFBE700FFFBE700FFFBE700FFFBE700FFFBEF00FFFFEF00D6BA9400FFFF
      EF00FFFBEF00FFFBE700FFFBEF00FFFFEF00D6BA9400FFFFEF00FFFBEF00FFFB
      E700FFFBEF00FFFFEF00D6BA9400FFFFEF00FFFBEF00FFFBE700FFFBE700FFFF
      FF00B5790800000000000000000000000000000000000086420021D39C0010E3
      A50000DF9C0000DB940052EBBD006BE7BD00008A4A0000040000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A000061310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C008CBADE003986BD00398ABD00398ABD00398ABD00398ABD00398ABD00398A
      BD00398ABD00398ABD004292BD0052A2CE00429AC6004A96C600428ABD00398A
      BD00398ABD00398ABD00398ABD00398ABD00398ABD00398ABD00398ABD003986
      BD008CBADE0018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EB
      D600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600F7EBD600FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFFBE700D6B69400FFFB
      E700FFF7E700FFF7E700FFF7E700FFFBE700D6B69400FFFBE700FFF7E700FFF7
      E700FFF7E700FFFBE700D6B69400FFFBE700FFF7E700FFF7E700FFF7E700FFFF
      FF00B5790800000000000000000000000000000000000059310021B67B0031EB
      B50000DB940000DB940008DF9C0063EFC60039CB940000753900000C08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008A4A0000C7840000593100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C0094BEDE003186BD00398ABD00398ABD00398ABD00398ABD003986BD00398A
      BD00529EC6006BAED6006BB2D6005AAACE0052A6CE005AAACE0063AED60063A6
      CE005296C600398ABD003986BD00398ABD00398ABD00398ABD00398ABD003186
      BD0094BEDE0018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7
      CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00F7E7
      CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00EFE7CE00EFE7CE00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFF7
      DE00FFF3DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFFBE700D6B68C00FFFB
      E700FFF7DE00FFF7DE00FFF7DE00FFFBE700D6B68C00FFFBE700FFF7DE00FFF7
      DE00FFF7DE00FFFBE700D6B68C00FFFBE700FFF7DE00FFF3DE00FFF7DE00FFFF
      FF00B57908000000000000000000000000000000000000180800008E520052EB
      BD0018DFA50000DB940000DB940018DFA5004AEBBD0029C79400008E4A00004D
      290000180800001C100000000000000000000000000000000000000000000000
      0000008A4A0000E3A50000BE8400005929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C009CC3DE003186BD00398ABD00398ABD003986BD00428ABD005A9EC60073B6
      D6006BB2D6005AA6CE004AA2CE004AA2CE004AA2CE004AA2CE004AA2CE005AAA
      CE006BB2D60073B2D60063A2CE00428EBD003986BD00398ABD00398ABD003186
      BD009CC3DE0018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFE3CE00EFE7CE00EFE7CE00EFE7CE00EFE7CE00EFE7
      CE00EFE7CE00EFE7CE00EFE7CE00EFE7CE00EFE7CE00EFE7CE00EFE7CE00EFE3
      CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFF7
      DE00FFF7DE00FFF7E700FFF7E700FFF7E700FFF7E700FFFBE700D6B68C00FFFB
      E700FFF7E700FFF7E700FFF7E700FFFBE700D6B68C00FFFBE700FFF7E700FFF7
      E700FFF7E700FFFBE700D6B68C00FFFBE700FFF7E700FFF7DE00FFF7DE00FFFF
      FF00B579080000000000000000000000000000000000000000000086420031BE
      8C0063EBC60000D79C0000D39C0000D39C0010D7A50039E3B50031DBAD0010B2
      7B00089E6300088E4A00008A4200008A4200008A4200008A4200008A42000086
      42000082420000DBA50000DBA50000BA84000059290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C009CC7DE003186B5003186BD004A8EBD006BA6C60084BED6007BBAD6005AAA
      CE004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9EC6004A9E
      C6004A9EC6005AA6CE006BB2D60084BED6006BA6CE004A92BD003186BD003186
      B5009CC7DE0018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFE3C600EFE3C600EFE3CE00EFE3CE00EFE3CE00EFE3
      CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00EFE3CE00EFE3C600F7EF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B579
      08000000000000000000000000000000000000000000B5790800FFFFFF00D6B2
      8400D6B28C00D6B28C00D6B28C00D6B28C00D6B68C00D6B68C00D6BA9400D6B6
      8C00D6B68C00D6B28C00D6B68C00D6B68C00D6BA9400D6B68C00D6B68C00D6B2
      8C00D6B68C00D6B68C00D6BA9400D6B68C00D6B68C00D6B28C00D6B28400FFFF
      FF00B5790800000000000000000000000000000000000000000000241000008A
      4A0063DBBD0063E7C60000CF9C0000CB940000CF9C0000CF9C0018D7A50021DB
      AD0021DBAD0029E3B50000DBA50000DBA50000DBA50000DBA50000DBA50000DB
      A50000D7A50000D39C0000D39C0000D7A50000BA840000592900000000000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C00B5D3E7004A8EB5007BAECE008CC3DE0073B6D6004292BD00398AB500529A
      BD0063A6CE005AA6CE004A9EC6004A9AC6004A9AC6004A9AC6004A9AC6004A9A
      C6004A9AC6004A9AC6004A9AC6004A9EC60073B6D6008CC3DE007BAECE004A8E
      BD00B5D3E70018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFE3C600EFE3C600EFE3C600EFE3C600EFE3C600EFE3
      C600EFE3C600EFE3C600EFE3C600EFE3C600EFE3C600EFE3C600EFDFC600FFFF
      FF00CEAA6300AD6D0000AD710000AD710000AD6D0000AD6D0000FFFFFF00B57D
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFF3
      DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFFBE700D6B68C00FFFB
      E700FFF7DE00FFF7DE00FFF7DE00FFFBE700D6B68C00FFFBE700FFF7DE00FFF7
      DE00FFF7DE00FFFBE700D6B68C00FFFBE700FFF7DE00FFF7DE00FFF3DE00FFFF
      FF00B57908000000000000000000000000000000000000000000000000000059
      310010965A008CE3CE0073E7CE0010CFA50000C79C0000C79C0000C79C0000C7
      9C0000C79C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CF9C0000D39C0000B68400005D31000000
      0000000000000000000000000000000000000000000000000000000000001869
      9C0073A6C6009CCBE70073B2D6004A9AC6004296C6004A9AC6004A9AC600398E
      BD003986B5005296BD0073AECE0063AACE004A9EC6004296C6004296C6004A96
      C6004A9AC6004A9AC6004A9AC6004296C6004296C6004A9AC60073B2D6009CCB
      E70073A6C60018699C0000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFDFBD00EFE3C600EFE3C600EFE3C600EFE3C600EFE3
      C600EFE3C600EFE3C600EFE3C600EFE3C600EFE3C600EFE3C600EFDFBD00FFFF
      FF00AD6D0000FFFFFF00FFFFFF00FFF7EF00F7EFDE00FFFFFF00EFDBBD007B55
      08000000000000000000000000000000000000000000B5790800FFFFFF00FFF3
      D600FFF3D600FFF3D600FFF3D600FFF3D600FFF3D600FFF7DE00D6B28400FFF7
      DE00FFF3D600FFF3D600FFF3D600FFF7DE00D6B28400FFF7DE00FFF3D600FFF3
      D600FFF3D600FFF7DE00D6B28400FFF7DE00FFF3D600FFF3D600FFF3D600FFFF
      FF00B57908000000000000000000000000000000000000000000000000000000
      0000007D420010965A007BDBC6008CE7DE0042D7BD0000C39C0000C3940000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C3
      9C0000C39C0000CB9C0000CB9C0000CB9C0000CBA50029DBBD00008A4A000000
      0000000000000000000000000000000000000000000000000000000000002165
      9400297DAD00398EBD00429AC6004296C6004296C6004296C6004296C6004296
      C6004296C600398EBD003182AD004A92BD0073AECE0073B2D600529EC6004296
      C6004296C6004296C6004296C6004296C6004296C6004296C600429AC600398E
      BD00297DAD001859840000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDF
      BD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00FFFF
      FF00AD710000FFFFFF00F7EFDE00F7E7CE00FFFFFF00EFDBB500735108000000
      00000000000000000000000000000000000000000000B5790800FFFFFF00FFF3
      D600FFEFD600FFF3D600FFF3D600FFF3D600FFF3D600FFF7D600D6B28400FFF7
      D600FFF3D600FFF3D600FFF3D600FFF7D600D6B28400FFF7D600FFF3D600FFF3
      D600FFF3D600FFF7D600D6B28400FFF7D600FFF3D600FFEFD600FFF3D600FFFF
      FF00B57908000000000000000000000000000000000000000000000000000000
      00000000000000653100008E4A0042BA94008CE3D6008CE7DE005AD7C60039CF
      B50018C7A50018C7AD0000C7A50000C7A50000C7A50000C7A50000C7A50000C7
      A50000C7A50000C39C0000C39C0000C39C0063DFC60000B28400005D31000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000824310018618C002975A5003986B5004296C6004296C6004296C6004296
      C6004292C6004296C6004296C600398ABD00317DAD00428AB50073A6C60084BA
      D60063A6CE003992BD004292C6004296C6004296C6003986B5002975A5001861
      8C00082431000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00EFDBBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDF
      BD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDFBD00EFDBBD00FFFF
      FF00AD710000FFF7EF00F7E7CE00FFFFFF00EFD7B50073510000000000000000
      00000000000000000000000000000000000000000000B5790800FFFFFF00FFF3
      D600FFF3D600FFF3D600FFF3D600FFF3D600FFF3D600FFF7DE00D6B68400FFF7
      DE00FFF3D600FFF3D600FFF3D600FFF7DE00D6B68400FFF7DE00FFF3D600FFF3
      D600FFF3D600FFF7DE00D6B68400FFF7DE00FFF3D600FFF3D600FFF3D600FFFF
      FF00B57908000000000000000000000000000000000000000000000000000000
      000000000000000000000024100000864200008E4A0039B284006BCFBD009CE7
      E7009CE7E7009CE7E7004AE3D60052E3D60052E3D60052E3D60052E3D60052E3
      D6004AE3D60094E7D60000BE940063DFC60000AE7B0000592900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000014180010456300216D9C00317DAD00428EBD004292
      C6004292C6004292BD004292BD004292BD004292BD00398AB500317DAD003982
      AD006BA2C60094BEDE006BAACE00317DAD00216D9C0010456300001418000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7DBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500E7DBB500FFFF
      FF00AD6D0000F7EFDE00FFFFFF00EFD7B5007351000000000000000000000000
      00000000000000000000000000000000000000000000B5790800FFFFFF00DEB2
      7B00E7B67B00E7B67B00E7B67B00E7B67B00E7B68400E7B68400E7BA8400E7B6
      8400E7B68400E7B67B00E7B68400E7B68400E7BA8400E7B68400E7B68400E7B6
      7B00E7B68400E7B68400E7BA8400E7B68400E7B68400E7B67B00DEB27B00FFFF
      FF00B57908000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000002410000059290000824200008A
      4200008642000086420000864200008642000086420000864200008642000086
      42000082390084E3D6005ADBC60000AA7B000059290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010384A00216994002979
      A5003986B5004292C6004292BD00428EBD00428EBD004292BD004292C600398A
      BD002975A5002171A5002165940010384A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5790800FFFFFF00E7D7B500E7D7B500EFDBB500EFDBB500EFDBB500EFDB
      B500EFDBB500EFDBB500EFDBB500EFDBB500EFDBB500E7D7B500E7D7B500FFFF
      FF00AD6D0000FFFFFF00EFDBB500735100000000000000000000000000000000
      00000000000000000000000000000000000000000000B5790800FFFFFF004AC7
      FF0052CBFF005ACBFF005ACBFF005ACBFF0052CBFF0052CBFF00EFBA7B0052CB
      FF0052CBFF005ACBFF0052CBFF0052CBFF00EFBA7B0052CBFF0052CBFF005ACB
      FF0052CBFF0052CBFF00EFBA7B0052CBFF0052CBFF0052CBFF004AC7FF00FFFF
      FF00B57908000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008A42007BE3DE0000AA7B00005929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000081C
      290018597B0021719C00317DAD00428EBD00428EBD00428EBD00317DAD002171
      A50018597B00081C290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57D0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFDBBD0073510800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B57D0800FFFFFF004AC3
      FF0052C7FF0052C7FF0052C7FF0052C7FF0052C7FF004AC7FF00EFB67B004AC7
      FF0052C7FF0052C7FF0052C7FF004AC7FF00EFB67B004AC7FF0052C7FF0052C7
      FF0052C7FF004AC7FF00EFB67B004AC7FF0052C7FF0052C7FF004AC3FF00FFFF
      FF00B57D08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A0000AA840000592900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004000010415A00216D9C00216D9C00216D9C0010415A000004
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084591000B57D0800B5790800B5790800B5790800B5790800B5790800B579
      0800B5790800B5790800B5790800B5790800B5790800B5790800B5790800B579
      0800B57D08007B55080000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B57D0800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B57D08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A000061310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084591000B57D0800B57D
      0800B5790000B5790000B5790000B5790000B5790000B5790800B5790800B579
      0800B5790000B5790000B5790000B5790800B5790800B5790800B5790000B579
      0000B5790000B5790800B5790800B5790800B5790000B5790000B57D0800B57D
      080084591000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
