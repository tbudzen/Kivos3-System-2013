inherited ListOfCashTransactionsCashDesksFrame: TListOfCashTransactionsCashDesksFrame
  Width = 661
  Height = 474
  ExplicitWidth = 661
  ExplicitHeight = 474
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 661
    Height = 417
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnAddCashTransaction: TcxButton
    Left = 16
    Top = 431
    Width = 137
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Add cash transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddCashTransactionClick
  end
  object btnModifyCashTransaction: TcxButton
    Left = 159
    Top = 431
    Width = 154
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Modify cash transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyCashTransactionClick
  end
  object btnDeleteCashTransaction: TcxButton
    Left = 319
    Top = 431
    Width = 146
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Delete cash transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnDeleteCashTransactionClick
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_transactions')
    Active = True
    Left = 480
    Top = 176
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 552
    Top = 176
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 552
    Top = 112
  end
end
