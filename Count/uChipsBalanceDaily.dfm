inherited ChipsBalanceDailyFrame: TChipsBalanceDailyFrame
  Width = 821
  Height = 498
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 821
  ExplicitHeight = 498
  object cxGrid2: TcxGrid
    Left = 480
    Top = 46
    Width = 313
    Height = 403
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_in_balance
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
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
  object q_cd_in_balance: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    Active = True
    Left = 408
    Top = 16
  end
  object ds_cd_in_balance: TPgDataSource
    DataSet = q_cd_in_balance
    Left = 424
    Top = 32
  end
end
