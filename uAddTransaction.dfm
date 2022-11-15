inherited uAddTransactionFrame: TuAddTransactionFrame
  Width = 645
  Height = 463
  DoubleBuffered = True
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentDoubleBuffered = False
  ParentFont = False
  ExplicitWidth = 645
  ExplicitHeight = 463
  object cxPageControl1: TcxPageControl
    AlignWithMargins = True
    Left = 15
    Top = 176
    Width = 615
    Height = 272
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    TabOrder = 0
    Properties.ActivePage = cxTabSheet4
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradientClientArea, pcoRedrawOnResize]
    Properties.ShowFrame = True
    Properties.Style = 10
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    ExplicitTop = 177
    ClientRectBottom = 271
    ClientRectLeft = 1
    ClientRectRight = 614
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = ' Basic '
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 280
      ExplicitHeight = 161
      object cxTextEdit1: TcxTextEdit
        Left = 136
        Top = -216
        TabOrder = 0
        Text = 'cxTextEdit1'
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 80
        Top = -168
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 145
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 280
      ExplicitHeight = 161
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 280
      ExplicitHeight = 161
    end
    object cxTabSheet4: TcxTabSheet
      Caption = ' Values '
      ImageIndex = 3
      ExplicitLeft = -1
      ExplicitTop = 35
      ExplicitWidth = 527
      ExplicitHeight = 237
    end
  end
  object cxTextEdit2: TcxTextEdit
    Left = 96
    Top = 16
    TabOrder = 1
    Text = 'cxTextEdit2'
    Width = 177
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 16
    AutoSize = False
    Caption = 'Order:'
    Transparent = True
    Height = 19
    Width = 74
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 45
    AutoSize = False
    Caption = 'Name:'
    Transparent = True
    Height = 19
    Width = 74
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 74
    AutoSize = False
    Caption = 'Currency:'
    Transparent = True
    Height = 19
    Width = 74
  end
  object cxTextEdit3: TcxTextEdit
    Left = 96
    Top = 45
    TabOrder = 5
    Text = 'cxTextEdit2'
    Width = 177
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox
    Left = 96
    Top = 74
    Properties.ListColumns = <>
    TabOrder = 6
    Width = 113
  end
  object cxLabel4: TcxLabel
    Left = 17
    Top = 111
    AutoSize = False
    Caption = 'From account:'
    Transparent = True
    Height = 19
    Width = 89
  end
  object cxDBLookupComboBox3: TcxDBLookupComboBox
    Left = 17
    Top = 136
    Properties.ListColumns = <>
    TabOrder = 8
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 153
    Top = 111
    AutoSize = False
    Caption = 'Transfer account:'
    Transparent = True
    Height = 19
    Width = 105
  end
  object cxDBLookupComboBox4: TcxDBLookupComboBox
    Left = 153
    Top = 136
    Properties.ListColumns = <>
    TabOrder = 10
    Width = 121
  end
  object cxLabel6: TcxLabel
    Left = 289
    Top = 111
    AutoSize = False
    Caption = 'To account:'
    Transparent = True
    Height = 19
    Width = 105
  end
  object cxDBLookupComboBox5: TcxDBLookupComboBox
    Left = 289
    Top = 136
    Properties.ListColumns = <>
    TabOrder = 12
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 433
    Top = 17
    Width = 198
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Add transaction'
    TabOrder = 13
    ExplicitLeft = 432
  end
  object cxButton2: TcxButton
    Left = 433
    Top = 79
    Width = 197
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    TabOrder = 14
    ExplicitLeft = 432
  end
  object cxButton3: TcxButton
    Left = 433
    Top = 48
    Width = 198
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Modify transaction'
    TabOrder = 15
    ExplicitLeft = 432
  end
end
