inherited CdCountInputForm: TCdCountInputForm
  Caption = 'Count'
  ClientHeight = 653
  ClientWidth = 448
  Font.Charset = EASTEUROPE_CHARSET
  Font.Height = -15
  Font.Name = 'Segoe UI'
  OnShow = FormShow
  ExplicitWidth = 454
  ExplicitHeight = 681
  PixelsPerInch = 96
  TextHeight = 20
  inherited Bevel: TBevel
    Top = 614
    Width = 448
    ExplicitTop = 614
    ExplicitWidth = 448
  end
  inherited btnOK: TcxButton
    Left = 245
    Top = 621
    TabOrder = 1
    ExplicitLeft = 245
    ExplicitTop = 621
  end
  inherited btnCancel: TcxButton
    Left = 344
    Top = 621
    TabOrder = 4
    ExplicitLeft = 344
    ExplicitTop = 621
  end
  object lbl_1: TcxLabel
    Left = 16
    Top = 50
    Caption = 'lbl_1'
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 80
    Width = 417
    Height = 519
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_count_value
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'val'
          Column = col_count
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1name: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'name'
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1value_name: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'value_name'
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1multiplier: TcxGridDBColumn
        Caption = 'Multiplier'
        DataBinding.FieldName = 'multiplier'
        Options.Editing = False
        Width = 80
      end
      object col_count: TcxGridDBColumn
        Caption = 'Count'
        Width = 80
      end
      object col_val: TcxGridDBColumn
        DataBinding.FieldName = 'val'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object lbl_2: TcxLabel
    Left = 16
    Top = 8
    Caption = 'lbl_1'
    ParentFont = False
    Style.Font.Charset = EASTEUROPE_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object q_cd_count_value: TPgQuery
    KeyFields = 'id_tbl_cd_count_value'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select v.*, (cnt_operator * v.multiplier)val, c.name'
      'from tbl_cd_count_value v'
      'left join tbl_categories c on c.id=v.id_category'
      'left join tbl_values tv on tv.id=v.id_value'
      'order by tv.sort_order desc')
    Options.StrictUpdate = False
    UpdateObject = PgUpdateSQL1
    AfterPost = q_cd_count_valueAfterPost
    Left = 88
    Top = 304
  end
  object ds_cd_count_value: TPgDataSource
    DataSet = q_cd_count_value
    Left = 128
    Top = 304
  end
  object PgUpdateSQL1: TPgUpdateSQL
    Left = 88
    Top = 360
  end
end
