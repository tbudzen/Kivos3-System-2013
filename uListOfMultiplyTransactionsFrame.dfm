inherited ListOfMultiplyTransactionsFrame: TListOfMultiplyTransactionsFrame
  Width = 677
  Height = 558
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 677
  ExplicitHeight = 558
  object cxGrid1: TcxGrid
    Left = 16
    Top = 15
    Width = 645
    Height = 482
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      Styles.ContentEven = cxStyle1
      Styles.ContentOdd = cxStyle6
      Styles.Selection = cxStyle14
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnModifyMultiplyTransaction: TcxButton
    Left = 207
    Top = 511
    Width = 202
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Modify multiply transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyMultiplyTransactionClick
  end
  object btnAddMultiplyTransaction: TcxButton
    Left = 16
    Top = 511
    Width = 185
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Add multiply transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddMultiplyTransactionClick
  end
  object btnDeleteMultiplyTransaction: TcxButton
    Left = 415
    Top = 511
    Width = 202
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Delete multiply transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PgTable1: TPgTable
    TableName = 'tbl_users'
    Connection = frmDatabase.KivosConnection
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 584
    Top = 368
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 584
    Top = 424
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 336
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object TreeListStyleSheetDevExpress: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle6
      Styles.Inactive = cxStyle10
      Styles.Selection = cxStyle14
      Styles.BandBackground = cxStyle3
      Styles.BandHeader = cxStyle4
      Styles.ColumnHeader = cxStyle5
      Styles.ContentEven = cxStyle7
      Styles.ContentOdd = cxStyle8
      Styles.Footer = cxStyle9
      Styles.IncSearch = cxStyle11
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
end
