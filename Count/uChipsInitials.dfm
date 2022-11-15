inherited ChipsInitialsFrame: TChipsInitialsFrame
  Width = 710
  Height = 529
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 710
  ExplicitHeight = 529
  object cxGrid1: TcxGrid
    Left = 16
    Top = 16
    Width = 673
    Height = 449
    Anchors = [akLeft, akTop, akBottom]
    PopupMenu = PopupMenu
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_btl_chipbalances
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1chipcategory: TcxGridDBColumn
        Caption = 'Chip Category'
        DataBinding.FieldName = 'chipcategory'
        Options.Editing = False
        Width = 150
      end
      object cxGrid1DBTableView1chipvalue: TcxGridDBColumn
        Caption = 'Chip Value'
        DataBinding.FieldName = 'chipvalue'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1initial_amount: TcxGridDBColumn
        Caption = 'Initial amount'
        DataBinding.FieldName = 'initial_amount'
        Width = 120
      end
      object cxGrid1DBTableView1present_amount: TcxGridDBColumn
        Caption = 'Present amount'
        DataBinding.FieldName = 'present_amount'
        Options.Editing = False
        Width = 120
      end
      object col_locked: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'locked_txt'
        Options.Editing = False
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btn_Lock: TcxButton
    Left = 556
    Top = 480
    Width = 133
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Lock values'
    TabOrder = 3
    OnClick = btn_LockClick
  end
  object btn_Add: TcxButton
    Left = 16
    Top = 480
    Width = 161
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Add / remove chips'
    TabOrder = 1
    OnClick = btn_AddClick
  end
  object btn_history: TcxButton
    Left = 192
    Top = 480
    Width = 137
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Changes history'
    TabOrder = 2
    OnClick = btn_historyClick
  end
  object q_tbl_chip_balances: TPgQuery
    UpdatingTable = 'tbl_chip_balances'
    SQLInsert.Strings = (
      'select fn_set_chip_balance_initial('
      ':id_category,'
      ':id_value,'
      ':initial_amount)')
    SQLUpdate.Strings = (
      'select fn_set_chip_balance_initial('
      ':id_category,'
      ':id_value,'
      ':initial_amount)')
    SQLRefresh.Strings = (
      'SELECT initial_amount, present_amount FROM tbl_chip_balances'
      'WHERE'
      '  id_category = :id_category AND id_value = :id_value')
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select tc.name ChipCategory, tv.name ChipValue, tc.id id_categor' +
        'y, tv.id id_value, '
      'cast(tc.id as varchar) || cast(tv.id as varchar) tmp_id,'
      '  tcb.initial_amount, tcb.present_amount,'
      '  case'
      '    when tcb.locked=true then '#39'Locked'#39
      '    else null'
      '  end locked_txt'
      ''
      'from  tbl_categories tc '
      'left join tbl_values tv on tv.id_category=tc.id'
      
        'left join tbl_chip_balances tcb on tcb.id_category=tc.id and tcb' +
        '.id_value=tv.id'
      ''
      
        'where tc.used_in_chip_balance=1 and tv.id_currency=3 and tv.is_s' +
        'ystem_value=0'
      'order by tv.sort_order')
    FetchAll = False
    Options.StrictUpdate = False
    BeforeEdit = q_tbl_chip_balancesBeforeEdit
    AfterPost = q_tbl_chip_balancesAfterPost
    Left = 560
    Top = 88
  end
  object ds_btl_chipbalances: TPgDataSource
    DataSet = q_tbl_chip_balances
    Left = 592
    Top = 88
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd where 0=1')
    Left = 560
    Top = 152
  end
  object PopupMenu: TPopupMenu
    Left = 312
    Top = 200
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
end
