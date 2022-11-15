inherited ChipsBalanceReportFrame: TChipsBalanceReportFrame
  Width = 926
  Height = 573
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 926
  ExplicitHeight = 573
  object lbStartDate: TLabel
    Left = 16
    Top = 19
    Width = 65
    Height = 20
    Caption = 'Start date'
  end
  object lbEndDate: TLabel
    Left = 216
    Top = 19
    Width = 59
    Height = 20
    Caption = 'End date'
  end
  object Label1: TLabel
    Left = 504
    Top = 19
    Width = 150
    Height = 20
    Caption = 'Alarm on difference of'
  end
  object d1: TcxDateEdit
    Left = 87
    Top = 16
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 0
    Width = 112
  end
  object d2: TcxDateEdit
    Left = 281
    Top = 16
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.UseLeftAlignmentOnEditing = False
    TabOrder = 1
    Width = 112
  end
  object btnRefresh: TcxButton
    Left = 408
    Top = 16
    Width = 81
    Height = 28
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = btnRefreshClick
  end
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 16
    Top = 50
    Width = 897
    Height = 497
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = ds_balance
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Groups = <>
    OptionsView.ColumnFields = False
    OptionsView.DataFields = False
    OptionsView.FilterFields = False
    OptionsView.RowFields = False
    OptionsView.RowGrandTotals = False
    ParentFont = False
    Styles.OnGetContentStyle = cxDBPivotGrid1StylesGetContentStyle
    TabOrder = 6
    object col_gaming_date: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = 'Gaming date'
      DataBinding.FieldName = 'gaming_date'
      Visible = True
      Width = 80
      UniqueName = 'Gaming date'
    end
    object col_category_name: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = 'Category'
      DataBinding.FieldName = 'category_name'
      TotalsVisibility = tvNone
      Visible = True
      Width = 50
      UniqueName = 'Category'
    end
    object col_value_multiplier: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = 'Value'
      DataBinding.FieldName = 'value_multiplier'
      SortOrder = soDescending
      TotalsVisibility = tvNone
      Visible = True
      Width = 50
      UniqueName = 'Value'
    end
    object col_difference: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = 'Diference'
      DataBinding.FieldName = 'd_diff'
      SummaryType = stCustom
      Visible = True
      Width = 50
      OnCalculateCustomSummary = col_differenceCalculateCustomSummary
      UniqueName = 'Diference'
    end
    object col_value_name: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 2
      DataBinding.FieldName = 'value_name'
      Visible = True
      Width = 50
      UniqueName = 'value_name'
    end
    object col_total_2: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      IsCaptionAssigned = True
      Caption = 'Diff. Zum Vortag'
      DataBinding.FieldName = 'd_diff'
      DataVisibility = dvGrandTotalCells
      SummaryType = stCustom
      Visible = True
      Width = 100
      OnCalculateCustomSummary = col_differenceCalculateCustomSummary
      UniqueName = 'col_total_2'
    end
    object col_total_3: TcxDBPivotGridField
      Area = faData
      AreaIndex = 2
      IsCaptionAssigned = True
      Caption = 'Alarm'
      DataBinding.FieldName = 'd_diff'
      DataVisibility = dvGrandTotalCells
      SummaryType = stCustom
      Visible = True
      Width = 100
      OnCalculateCustomSummary = col_differenceCalculateCustomSummary
      UniqueName = 'col_total_3'
    end
  end
  object btn_excel: TcxButton
    Left = 784
    Top = 16
    Width = 129
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Export to Excel'
    TabOrder = 5
    OnClick = btn_excelClick
  end
  object btn_Print: TcxButton
    Left = 706
    Top = 16
    Width = 72
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Print'
    TabOrder = 4
    OnClick = btn_PrintClick
  end
  object edt_diff_alarm: TcxCalcEdit
    Left = 660
    Top = 16
    EditValue = 2000
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 77
  end
  object q_balance: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select cbv.id_tbl_chip_balances_values, cbv.d_diff, c.name categ' +
        'ory_name,  v.multiplier value_multiplier, '
      '       cbv.gaming_date, v.name value_name'
      ''
      'from tbl_chip_balances_values cbv'
      'left join tbl_categories c on c.id=cbv.id_category'
      'left join tbl_values v on v.id=cbv.id_value'
      ''
      
        'where cbv.gaming_date between :d1 and :d2 and v.is_system_value=' +
        '0')
    Left = 680
    Top = 120
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
  object ds_balance: TPgDataSource
    DataSet = q_balance
    Left = 720
    Top = 120
  end
  object dlg_save_1: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel fiels|*.xls|All files|*.*'
    Left = 640
    Top = 120
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    Left = 688
    Top = 192
  end
end
