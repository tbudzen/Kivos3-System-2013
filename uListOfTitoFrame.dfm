inherited ListOfTitoFrame: TListOfTitoFrame
  Width = 824
  Height = 540
  ExplicitWidth = 824
  ExplicitHeight = 540
  object cxGrid1: TcxGrid
    Left = 3
    Top = 3
    Width = 818
    Height = 492
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 801
    ExplicitHeight = 374
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1selected: TcxGridDBColumn
        DataBinding.FieldName = 'selected'
        PropertiesClassName = 'TcxCheckBoxProperties'
      end
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1generated: TcxGridDBColumn
        DataBinding.FieldName = 'generated'
      end
      object cxGrid1DBTableView1tr_type: TcxGridDBColumn
        DataBinding.FieldName = 'tr_type'
      end
      object cxGrid1DBTableView1tr_number: TcxGridDBColumn
        DataBinding.FieldName = 'tr_number'
      end
      object cxGrid1DBTableView1tr_ipaddr: TcxGridDBColumn
        DataBinding.FieldName = 'tr_ipaddr'
      end
      object cxGrid1DBTableView1tr_value: TcxGridDBColumn
        DataBinding.FieldName = 'tr_value'
      end
      object cxGrid1DBTableView1int_tr_id: TcxGridDBColumn
        DataBinding.FieldName = 'int_tr_id'
      end
      object cxGrid1DBTableView1tr_location: TcxGridDBColumn
        DataBinding.FieldName = 'tr_location'
      end
      object cxGrid1DBTableView1tr_name: TcxGridDBColumn
        DataBinding.FieldName = 'tr_name'
        Width = 146
      end
      object cxGrid1DBTableView1int_cd_id: TcxGridDBColumn
        DataBinding.FieldName = 'int_cd_id'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 3
    Top = 501
    Width = 158
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'Get TITO data'
    TabOrder = 1
    OnClick = cxButton1Click
    ExplicitTop = 383
  end
  object cxButton2: TcxButton
    Left = 167
    Top = 501
    Width = 158
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = cxButton2Click
    ExplicitTop = 383
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from cd_ext_transactions')
    Active = True
    Left = 136
    Top = 72
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 56
    Top = 72
  end
end
