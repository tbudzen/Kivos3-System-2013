inherited ChipsBalanceConfigFrame: TChipsBalanceConfigFrame
  Width = 803
  Height = 466
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 803
  ExplicitHeight = 466
  object cxGrid1: TcxGrid
    Left = 16
    Top = 46
    Width = 313
    Height = 403
    Anchors = [akLeft, akTop, akBottom]
    PopupMenu = PopupMenuLeft
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1cd_name: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'cd_name'
        Width = 100
      end
      object cxGrid1DBTableView1description: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'description'
        Width = 170
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object lbl_1: TcxLabel
    Left = 16
    Top = 16
    Caption = 'Cashdeck and tables list'
  end
  object btn_add1: TcxButton
    Left = 360
    Top = 104
    Width = 97
    Height = 33
    Caption = 'Add >'
    TabOrder = 3
    OnClick = btn_add1Click
  end
  object btn_add_all: TcxButton
    Left = 360
    Top = 152
    Width = 97
    Height = 33
    Caption = 'All >>'
    TabOrder = 4
    OnClick = btn_add_allClick
  end
  object btn_remove: TcxButton
    Left = 360
    Top = 200
    Width = 97
    Height = 33
    Caption = '< Remove'
    TabOrder = 6
    OnClick = btn_removeClick
  end
  object cxGrid2: TcxGrid
    Left = 487
    Top = 46
    Width = 313
    Height = 403
    Anchors = [akLeft, akTop, akBottom]
    PopupMenu = PopupMenuRigth
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_in_balance
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'cd_name'
        Width = 100
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'description'
        Width = 170
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxLabel1: TcxLabel
    Left = 487
    Top = 16
    Caption = 'Cashdeck and tables list for chips balance'
  end
  object q_cd: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd '
      'where used_in_chip_balance = 0'
      'order by cd_name')
    Left = 344
    Top = 264
  end
  object ds_cd: TPgDataSource
    DataSet = q_cd
    Left = 344
    Top = 320
  end
  object q_cd_in_balance: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd '
      'where used_in_chip_balance = 1'
      'order by cd_name')
    Left = 424
    Top = 264
  end
  object ds_cd_in_balance: TPgDataSource
    DataSet = q_cd_in_balance
    Left = 424
    Top = 320
  end
  object PopupMenuLeft: TPopupMenu
    Left = 144
    Top = 120
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenuRigth: TPopupMenu
    Left = 584
    Top = 104
    object exporttoexcel2: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel2Click
    end
  end
end
