inherited ChipsSelectShiftFrame: TChipsSelectShiftFrame
  Width = 868
  Height = 538
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 868
  ExplicitHeight = 538
  object lbl_gdate: TcxLabel
    Left = 16
    Top = 24
    Caption = 'Select gaming date'
  end
  object edt_gdate: TcxDateEdit
    Left = 160
    Top = 23
    Properties.ShowTime = False
    TabOrder = 2
    Width = 121
  end
  object btn_refr: TcxButton
    Left = 296
    Top = 22
    Width = 89
    Height = 30
    Caption = 'Refresh'
    TabOrder = 0
    OnClick = btn_refrClick
  end
  object btn_recreate: TcxButton
    Left = 400
    Top = 22
    Width = 145
    Height = 30
    Caption = 'Recreate balance'
    TabOrder = 1
    OnClick = btn_recreateClick
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 64
    Width = 833
    Height = 417
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_tbl_chip_shifts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'HH:mm'
      OptionsCustomize.ColumnsQuickCustomization = True
      object cxGrid1DBTableView1cd_name: TcxGridDBColumn
        Caption = 'Cashdesk name'
        DataBinding.FieldName = 'cd_name'
        Width = 150
      end
      object cxGrid1DBTableView1datetime: TcxGridDBColumn
        Caption = 'Time'
        DataBinding.FieldName = 'datetime'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 180
      end
      object cxGrid1DBTableView1name_shift: TcxGridDBColumn
        Caption = 'Shift name'
        DataBinding.FieldName = 'name_shift'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 200
      end
      object cxGrid1DBTableView1cnt: TcxGridDBColumn
        Caption = 'Nr of shifts for gaming day'
        DataBinding.FieldName = 'cnt'
        Width = 200
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 640
    Top = 494
    Width = 209
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'View chip balance report'
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 16
    Top = 494
    Width = 209
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Change shift for cashdesk'
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object q_tbl_chip_shifts: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select * from tbl_chip_shifts where gaming_date=:gaming_date ord' +
        'er by cd_name')
    ReadOnly = True
    Left = 616
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gaming_date'
      end>
  end
  object ds_tbl_chip_shifts: TPgDataSource
    DataSet = q_tbl_chip_shifts
    Left = 656
    Top = 8
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd where 0=1')
    Left = 752
    Top = 8
  end
end
