inherited ChipsAmuntChangesHistoryFrame: TChipsAmuntChangesHistoryFrame
  Width = 830
  Height = 514
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 830
  ExplicitHeight = 514
  object cxGrid1: TcxGrid
    Left = 16
    Top = 16
    Width = 793
    Height = 481
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = PopupMenu
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_history
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      object cxGrid1DBTableView1datetime: TcxGridDBColumn
        Caption = 'Date and time'
        DataBinding.FieldName = 'datetime'
        Width = 150
      end
      object cxGrid1DBTableView1typ: TcxGridDBColumn
        Caption = 'Change type'
        DataBinding.FieldName = 'typ'
        Width = 150
      end
      object cxGrid1DBTableView1amount: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'amount'
        Width = 100
      end
      object cxGrid1DBTableView1description: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'description'
        Width = 300
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object q_history: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select * from tbl_chip_amount_changes where id_category=:id_cate' +
        'gory and id_value=:id_value'
      'order by datetime desc')
    ReadOnly = True
    Left = 280
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_category'
      end
      item
        DataType = ftUnknown
        Name = 'id_value'
      end>
  end
  object ds_history: TPgDataSource
    DataSet = q_history
    Left = 320
    Top = 24
  end
  object PopupMenu: TPopupMenu
    Left = 136
    Top = 104
    object exportstoexcel1: TMenuItem
      Caption = 'exports to excel'
      OnClick = exportstoexcel1Click
    end
  end
end
