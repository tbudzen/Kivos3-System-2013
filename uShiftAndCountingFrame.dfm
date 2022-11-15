inherited ShiftAndCountingFrame: TShiftAndCountingFrame
  Width = 1171
  Height = 597
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 1171
  ExplicitHeight = 597
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1171
    Height = 41
    Align = alTop
    TabOrder = 0
    object lbPeriodFrom: TLabel
      Left = 20
      Top = 14
      Width = 63
      Height = 15
      Caption = 'Period from'
    end
    object lbPeriodTo: TLabel
      Left = 264
      Top = 14
      Width = 48
      Height = 15
      Caption = 'Period to'
    end
    object ePeriodFrom: TcxDateEdit
      Left = 84
      Top = 11
      Properties.AssignedValues.DisplayFormat = True
      Properties.InputKind = ikMask
      Properties.Kind = ckDateTime
      TabOrder = 0
      Width = 160
    end
    object ePeriodTo: TcxDateEdit
      Left = 332
      Top = 11
      Properties.Kind = ckDateTime
      TabOrder = 1
      Width = 160
    end
    object btnRefresh: TcxButton
      Left = 508
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = btnRefreshClick
    end
  end
  object GridShifts: TcxGrid
    AlignWithMargins = True
    Left = 1
    Top = 41
    Width = 730
    Height = 555
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 1
    Align = alLeft
    TabOrder = 1
    object gViewShifts: TcxGridDBBandedTableView
      DataController.DataSource = dsvShifts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '# ##0.00'
          Kind = skSum
          Column = gViewShiftsDiff
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Shifts and counting'
        end>
      object gViewShiftscd_name: TcxGridDBBandedColumn
        Caption = 'Cashdesk'
        DataBinding.FieldName = 'cd_name'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gViewShiftsgaming_date: TcxGridDBBandedColumn
        Caption = 'Gaming date'
        DataBinding.FieldName = 'gaming_date'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gViewShiftsCT_Number: TcxGridDBBandedColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'operation'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gViewShiftsuser: TcxGridDBBandedColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 160
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gViewShiftsDiff: TcxGridDBBandedColumn
        Caption = 'Difference'
        DataBinding.FieldName = 'difference'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gViewShiftsDescription: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'explanation_supervisor'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gViewShiftsCompletedDate: TcxGridDBBandedColumn
        Caption = 'Completed'
        DataBinding.FieldName = 'datetime'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gViewShiftsColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'operation'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gViewShiftsColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object gLevelShifts: TcxGridLevel
      GridView = gViewShifts
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 731
    Top = 41
    Width = 8
    Height = 556
    HotZoneClassName = 'TcxSimpleStyle'
    MinSize = 200
    ResizeUpdate = True
    Control = GridShifts
  end
  object pnRight: TPanel
    Left = 739
    Top = 41
    Width = 432
    Height = 556
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnRight'
    TabOrder = 3
    object cxDBMemo1: TcxDBMemo
      Left = 0
      Top = 0
      Align = alTop
      DataBinding.DataField = 'explanation_supervisor'
      DataBinding.DataSource = dsvShifts
      TabOrder = 0
      Height = 64
      Width = 432
    end
    object GridValues: TcxGrid
      Left = 0
      Top = 64
      Width = 432
      Height = 357
      Align = alTop
      TabOrder = 1
      object gViewValues: TcxGridDBBandedTableView
        DataController.DataSource = dsvValues
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '# ##0.00'
            Kind = skSum
            Column = gViewValuesAmount
          end
          item
            Format = '# ##0.00'
            Kind = skSum
            Column = gViewValuesamount_chf
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Values for counting'
          end>
        object gViewValuescategory_name: TcxGridDBBandedColumn
          Caption = 'Category'
          DataBinding.FieldName = 'category_name'
          HeaderAlignmentHorz = taCenter
          MinWidth = 120
          Options.Editing = False
          Options.Focusing = False
          Options.IncSearch = False
          Options.CellMerging = True
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.VertSizing = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gViewValuesvalue_name: TcxGridDBBandedColumn
          Caption = 'Name'
          DataBinding.FieldName = 'value_name'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gViewValuesnr: TcxGridDBBandedColumn
          Caption = 'Nr'
          DataBinding.FieldName = 'nr'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gViewValuesmultiplier: TcxGridDBBandedColumn
          Caption = 'Multiplier'
          DataBinding.FieldName = 'multiplier'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gViewValuesAmount: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'amount'
          FooterAlignmentHorz = taRightJustify
          GroupSummaryAlignment = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gViewValuescurrency_symbol: TcxGridDBBandedColumn
          Caption = 'Curr.'
          DataBinding.FieldName = 'currency_symbol'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 42
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gViewValuesexchange_rate: TcxGridDBBandedColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'exchange_rate'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 42
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gViewValuesamount_chf: TcxGridDBBandedColumn
          Caption = 'Amount CHF'
          DataBinding.FieldName = 'amount_chf'
          FooterAlignmentHorz = taRightJustify
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object gLevelValues: TcxGridLevel
        GridView = gViewValues
      end
    end
    object GridAmounts: TcxGrid
      Left = 0
      Top = 421
      Width = 432
      Height = 135
      Align = alClient
      TabOrder = 2
      object gViewAmounts: TcxGridDBBandedTableView
        DataController.DataSource = dsvAmounts
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
        object gViewAmountscategory_name: TcxGridDBBandedColumn
          Caption = 'Category'
          DataBinding.FieldName = 'category_name'
          HeaderAlignmentHorz = taCenter
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gViewAmountsamount_foreign: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'amount_foreign'
          HeaderAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gViewAmountscurrency_symbol: TcxGridDBBandedColumn
          Caption = 'Curr.'
          DataBinding.FieldName = 'currency_symbol'
          HeaderAlignmentHorz = taCenter
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gViewAmountsexchange_rate: TcxGridDBBandedColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'exchange_rate'
          HeaderAlignmentHorz = taCenter
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gViewAmountsamount_base: TcxGridDBBandedColumn
          Caption = 'Amount CHF'
          DataBinding.FieldName = 'amount_base'
          HeaderAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object gLevelAmounts: TcxGridLevel
        GridView = gViewAmounts
      end
    end
  end
  object vShifts: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select  cdt.id as id'
      '      , 0 as id_cd_transaction'
      '      , cd.cd_name'
      '      , cdt.base_ct_Number '
      '      , cdt.ct_number  '
      '      , cdt.difference '
      '      , cdt.DateTime '
      '      , cdt.Gaming_date '
      
        '      ,cast( (case when substr(cdt.ct_number,1,2)='#39'OP'#39' then '#39'Ope' +
        'n'#39' '
      '              when substr(cdt.ct_number,1,2)='#39'CL'#39' then '#39'Close'#39
      
        '              when substr(cdt.ct_number,1,2)='#39'IN'#39' then '#39'Info'#39'  e' +
        'nd) as Varchar(20)) as operation '
      '      , us.first_name ||'#39' '#39'|| us.last_name as user_name'
      '      , cdt.explanation_supervisor'
      '     from tbl_cd_cash_transactions cdt '
      '     left join tbl_cd cd on cd.id=cdt.id_cashDesk '
      '     left join tbl_users us on cdt.id_user=us.id '
      '     where   cdt.type in (1,3,5,6,7,8,9) '
      '        and cdt.datetime between :d1 and :d2 '
      '    group by cdt.id,cd.cd_name ,us.first_name,us.last_name')
    AfterOpen = vShiftsAfterOpen
    Left = 368
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
      end
      item
        DataType = ftUnknown
        Name = 'd2'
      end>
  end
  object vValues: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select   c.*'
      '      ,  c.id_cd_transaction c_id_cd_transaction'
      '      ,   v.multiplier'
      '      ,   c.nr * v.multiplier as amount_base'
      '      ,   c.exchange_rate as change_chf'
      '      ,   c.nr * v.multiplier * c.exchange_rate as amount_chf'
      '      ,   cat.name as category'
      '      ,   v.name as value_name'
      
        '      ,   (select ord from tbl_transactions_values cdv where c.i' +
        'd_cd_value = cdv.id_value and cdv.id_transaction=c.id_cd_transac' +
        'tion) ord'
      '      ,   (case when c.direction = 1 then c.amount_in'
      '                when c.direction = 2 then c.amount_out'
      '                end) amount  '
      '    from   tbl_cd_cash_transactions_subt_categories_values as c '
      '         left join tbl_values as v on  c.id_cd_value = v.id '
      
        '         left join tbl_categories as cat  on  c.id_cd_category =' +
        ' cat.id '
      
        '         left join tbl_cd_cash_transactions_subt as cd on cd.id=' +
        'c.id_cd_sub_transaction '
      
        '         left join tbl_transactions_values cdv on c.id_cd_value ' +
        '= cdv.id_value and cdv.id_transaction=c.id_cd_transaction'
      '     where c.id_cd_transaction = :id '
      '         order by cdv.ord asc')
    MasterSource = dsvShifts
    AfterOpen = vValuesAfterOpen
    Left = 512
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 2797
      end>
  end
  object vAmounts: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select'
      '  category_name,'
      '  currency_symbol,'
      '  exchange_rate,'
      '  sum(multiplier * nr_0) as amount_foreign,'
      '  sum(multiplier * nr_0 * exchange_rate) as amount_base'
      'from'
      '('
      '    select'
      '     s0.direction,'
      '     s0.category_name,'
      '     s0.currency_symbol,'
      '     s0.exchange_rate,'
      '     s0.multiplier,'
      '     sum(s0.nr) as nr_0'
      'from'
      '(   select'
      '      v.direction, '
      '      v.category_name,'
      '      v.currency_symbol,'
      '      v.exchange_rate,'
      '      v.multiplier,'
      '      sum(v.nr) as nr'
      '    from '
      '      tbl_cd_cash_transactions as t'
      '      left join tbl_cd_cash_transactions_subt as subt'
      ' on subt.ct_number = t.ct_number'
      '      left join tbl_cd_cash_transactions_subt_categories as c'
      
        ' on c.ct_number = subt.ct_number and c.id_cd_transaction = subt.' +
        'id_cd_transaction'
      
        '      left join tbl_cd_cash_transactions_subt_categories_values ' +
        'as v'
      
        ' on v.ct_number = c.ct_number and v.id_cd_transaction = c.id_cd_' +
        'transaction and v.id_cd_category = c.id_cd_category'
      
        '      left join tbl_cd_cash_transactions_types as ct on t.type =' +
        ' ct.type'
      '    where '
      '      '
      '      t.id_cd_transaction = :id '
      '      --and t.datetime > last_shift_date(29)'
      '      --and t.id_cashdesk = 29'
      '      --and ct.goes_into_amount_expected = '#39'1'#39
      '      --and t.confirmed = 1 '
      '    group by '
      '      v.direction,'
      '      v.category_name,'
      '      v.currency_symbol,'
      '      v.exchange_rate,'
      '      v.multiplier'
      ')'
      'as s0'
      'group by'
      '     direction,'
      '     category_name,'
      '     currency_symbol,'
      '     exchange_rate,'
      '     multiplier'
      ')'
      'as s1'
      'group by'
      '  category_name,'
      '  currency_symbol,'
      '  exchange_rate')
    MasterSource = dsvShifts
    AfterOpen = vAmountsAfterOpen
    Left = 644
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 2797
      end>
  end
  object dsvShifts: TPgDataSource
    AutoEdit = False
    DataSet = vShifts
    Left = 400
    Top = 52
  end
  object dsvValues: TPgDataSource
    AutoEdit = False
    DataSet = vValues
    Left = 556
    Top = 52
  end
  object dsvAmounts: TPgDataSource
    AutoEdit = False
    DataSet = vAmounts
    Left = 704
    Top = 60
  end
end
