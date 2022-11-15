inherited CountModuleFrame: TCountModuleFrame
  Width = 918
  Height = 738
  ExplicitWidth = 918
  ExplicitHeight = 738
  object cxLabel76: TcxLabel
    Left = 384
    Top = 372
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
    Width = 65
  end
  object cxLabel75: TcxLabel
    Left = 384
    Top = 66
    AutoSize = False
    Caption = 'Values:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
    Height = 17
    Width = 56
  end
  object cxGrid11: TcxGrid
    Left = 384
    Top = 89
    Width = 521
    Height = 277
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGridDBTableView9: TcxGridDBTableView
      DataController.DataSource = PgDataSource3
      DataController.KeyFieldNames = 'id'
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
          Kind = skSum
          Column = cxGridDBTableView9amount
        end
        item
          Kind = skSum
          Column = cxGridDBTableView9amount_chf
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGridDBTableView9id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
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
      end
      object cxGridDBTableView9id_cd_value: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'id_cd_value'
        Visible = False
      end
      object cxGridDBTableView9value: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'value_name'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGridDBTableView9id_cashdesk: TcxGridDBColumn
        DataBinding.FieldName = 'id_cashdesk'
        Visible = False
      end
      object cxGridDBTableView9ct_number: TcxGridDBColumn
        DataBinding.FieldName = 'ct_number'
        Visible = False
      end
      object cxGridDBTableView9nr: TcxGridDBColumn
        Caption = 'Nr'
        DataBinding.FieldName = 'value_nr'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnEditValueChanged = cxGridDBTableView9nrPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGridDBTableView9multiplier: TcxGridDBColumn
        Caption = 'Multiplier'
        DataBinding.FieldName = 'value_multiplier'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
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
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGridDBTableView9change_chf: TcxGridDBColumn
        Caption = 'Change CHF'
        DataBinding.FieldName = 'change_chf'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object cxGridDBTableView9amount_chf: TcxGridDBColumn
        Caption = 'Amount CHF'
        DataBinding.FieldName = 'amount_chf'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
    end
    object cxGridLevel9: TcxGridLevel
      GridView = cxGridDBTableView9
    end
  end
  object cxGrid12: TcxGrid
    Left = 384
    Top = 397
    Width = 521
    Height = 284
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGridDBTableView10: TcxGridDBTableView
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
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView10amount
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'amount_expected'
          Column = cxGridDBTableView10amount_1
        end
        item
          Format = '0.00'
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
        Width = 179
      end
      object cxGridDBTableView10amount: TcxGridDBColumn
        Caption = 'Actual amount'
        DataBinding.FieldName = 'actual_amount'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 149
      end
      object cxGridDBTableView10amount_1: TcxGridDBColumn
        Caption = 'Amount expected'
        DataBinding.FieldName = 'amount_expected'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 127
      end
      object cxGridDBTableView10difference: TcxGridDBColumn
        Caption = 'Difference'
        DataBinding.FieldName = 'difference'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '0.00'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 149
      end
    end
    object cxGridLevel10: TcxGridLevel
      GridView = cxGridDBTableView10
    end
  end
  object btnConfirm: TcxButton
    Left = 11
    Top = 695
    Width = 179
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 'Confirm'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnConfirmClick
  end
  object btnCancel: TcxButton
    Left = 196
    Top = 695
    Width = 109
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelClick
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
      '  c.id,'
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
      '  c.id_cd_category = cat.id and'
      '  c.id_cd_value = v.id and'
      '  cer.valid_from <= now() and'
      '  cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and'
      '  v.id_currency = curr.id '
      'order by'
      '  v.sort_order asc')
    Active = True
    Left = 80
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
      
        'select t1.category_name, t1.amount_1 as actual_amount, t2.amount' +
        '_1 as amount_expected, t1.amount_1 - t2.amount_1 as difference f' +
        'rom'
      '('
      'select'
      '  cat.name as category_name, '
      '  sum(v.nr * v2.multiplier) as amount_1'
      'from '
      '  tbl_cd_cash_transactions as t,'#9
      '  tbl_cd_cash_transactions_subt_categories_values as v'
      '  left join tbl_cd_values as v1 on v.id_cd_value = v1.id_value'
      '  left join tbl_values as v2 on v1.id_value = v2.id,'
      '  tbl_categories as cat,'
      '  ('
      '  select max(datetime) as m_datetime'
      '  from tbl_cd_cash_transactions'
      '  where type = 1) as m'
      'where '
      '  (t.datetime <= now() and t.datetime >= m.m_datetime) and'
      '  v.ct_number = t.ct_number and'
      '  v.id_cd_category = cat.id'
      'group by '
      '  cat.name'
      ') as t1,'
      '('
      'select'
      '  cat.name as category_name, '
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
      '  cat.name'
      ') as t2'
      'where t1.category_name = t2.category_name')
    Active = True
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
end
