inherited ChipShiftSelectForm: TChipShiftSelectForm
  Caption = 'Select another shift'
  Font.Charset = EASTEUROPE_CHARSET
  Font.Height = -15
  Font.Name = 'Segoe UI'
  PixelsPerInch = 96
  TextHeight = 20
  inherited btnOK: TcxButton
    TabOrder = 1
  end
  inherited btnCancel: TcxButton
    TabOrder = 2
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 16
    Width = 617
    Height = 241
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_shifts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      object cxGrid1DBTableView1datetime: TcxGridDBColumn
        Caption = 'Shift time'
        DataBinding.FieldName = 'datetime'
        Width = 200
      end
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = 'Shift name'
        DataBinding.FieldName = 'name'
        Width = 200
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object q_shifts: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tct.id, tct.datetime, tctt.name'
      ''
      'from  tbl_cd_cash_transactions tct '
      
        'left join tbl_cd_cash_transactions_types tctt on tctt.id=tct.typ' +
        'e'
      ''
      
        'where tct.gaming_date=:gdate and  tct.id_cashdesk=:id_cashdesk a' +
        'nd tct.id<>:id and tctt.is_shift=1')
    Left = 320
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gdate'
      end
      item
        DataType = ftUnknown
        Name = 'id_cashdesk'
      end
      item
        DataType = ftUnknown
        Name = 'id'
      end>
  end
  object ds_shifts: TPgDataSource
    DataSet = q_shifts
    Left = 360
    Top = 64
  end
end
