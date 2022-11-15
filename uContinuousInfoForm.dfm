object ContinuousInfoForm: TContinuousInfoForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Continuous balance'
  ClientHeight = 697
  ClientWidth = 927
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    927
    697)
  PixelsPerInch = 96
  TextHeight = 15
  object btnOK: TcxButton
    Left = 767
    Top = 656
    Width = 152
    Height = 33
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ModalResult = 1
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnOKClick
  end
  object cxGrid11: TcxGrid
    Left = 8
    Top = 8
    Width = 911
    Height = 393
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Foggy'
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
          Format = '### ### ### ### ##0.00'
          Kind = skSum
          FieldName = 'amount_chf'
          Column = cxGridDBTableView9amount_chf
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.GoToNextCellOnEnter = True
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
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '### ### ### ### ##0.00'
        Properties.OnEditValueChanged = cxGridDBTableView9nrPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
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
        Width = 157
      end
    end
    object cxGridLevel9: TcxGridLevel
      GridView = cxGridDBTableView9
    end
  end
  object cxGrid12: TcxGrid
    Left = 8
    Top = 400
    Width = 911
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'Foggy'
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
        Width = 152
      end
    end
    object cxGrid12Level1: TcxGridLevel
      GridView = cxGridDBTableView10
    end
  end
  object CTNr: TcxTextEdit
    Left = 8
    Top = 618
    TabOrder = 3
    Text = 'CTNr'
    Visible = False
    Width = 217
  end
  object cxButton_Save: TcxButton
    Left = 609
    Top = 656
    Width = 152
    Height = 33
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ModalResult = 1
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton_SaveClick
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery4
    Left = 160
    Top = 328
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
    Left = 88
    Top = 328
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
      '  v.name as value_name,'
      
        '  c.id_cd_value, c.count, cat.id as id_cd_category, curr.symbol ' +
        'as currency_symbol,'
      '  c.id_transaction'
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
    Left = 63
    Top = 128
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 152
    Top = 128
  end
end
