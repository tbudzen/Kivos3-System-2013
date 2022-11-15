inherited CdCountFunctionsSpecFrame: TCdCountFunctionsSpecFrame
  Width = 1017
  Height = 625
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 1017
  ExplicitHeight = 625
  object lbl_gdate: TcxLabel
    Left = 16
    Top = 24
    Caption = 'Select gaming date'
  end
  object edt_gdate: TcxDateEdit
    Left = 160
    Top = 23
    Properties.ShowTime = False
    TabOrder = 1
    Width = 121
  end
  object btn_refr: TcxButton
    Left = 296
    Top = 22
    Width = 89
    Height = 30
    Caption = 'Refresh'
    TabOrder = 2
    OnClick = btn_refrClick
  end
  object btn_recreate: TcxButton
    Left = 16
    Top = 582
    Width = 145
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Recreate table'
    TabOrder = 3
    OnClick = btn_recreateClick
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 64
    Width = 481
    Height = 512
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_drop_count
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = col_drops_c
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'HH:mm'
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1cd_name: TcxGridDBColumn
        Caption = 'Table name'
        DataBinding.FieldName = 'cd_name'
        Width = 150
      end
      object cxGrid1DBTableView1finished: TcxGridDBColumn
        Caption = 'Finished'
        DataBinding.FieldName = 'finished'
        Width = 70
      end
      object col_drops_c: TcxGridDBColumn
        Caption = 'Drop'
        DataBinding.FieldName = 'value_drop'
        Width = 110
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 167
    Top = 582
    Width = 145
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = '"Un-Finish" record'
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object cxButton1: TcxButton
    Left = 520
    Top = 582
    Width = 145
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Recreate table'
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxGrid2: TcxGrid
    Left = 520
    Top = 64
    Width = 481
    Height = 512
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 7
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_tips_count
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBColumn3
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'HH:mm'
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Table name'
        DataBinding.FieldName = 'cd_name'
        Width = 150
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Finished'
        DataBinding.FieldName = 'finished'
        Width = 70
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Tips'
        DataBinding.FieldName = 'value_drop'
        Width = 110
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 671
    Top = 582
    Width = 145
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = '"Un-Finish" record'
    TabOrder = 8
    OnClick = cxButton2Click
  end
  object q_cd_drop_count: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tcc.*, tgt.*'
      'from tbl_cd_count tcc'
      'left join tbl_cd tc on tc.id=tcc.id_cd'
      'left join tbl_game_type tgt on tgt.id_tbl_game_type=tc.is_a'
      'where tcc.gaming_date=:gaming_date and tcc.type='#39'D'#39
      'order by tcc.cd_name')
    ReadOnly = True
    Left = 224
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gaming_date'
      end>
  end
  object ds_cd_drop_count: TPgDataSource
    DataSet = q_cd_drop_count
    Left = 352
    Top = 160
  end
  object q_cd_tips_count: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * '
      'from tbl_cd_count '
      'where gaming_date=:gaming_date and type='#39'T'#39
      'order by cd_name')
    ReadOnly = True
    Left = 576
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gaming_date'
      end>
  end
  object ds_cd_tips_count: TPgDataSource
    DataSet = q_cd_tips_count
    Left = 616
    Top = 272
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_cd where 0=1')
    Left = 280
    Top = 288
  end
end
