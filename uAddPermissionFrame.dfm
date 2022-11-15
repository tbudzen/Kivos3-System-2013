inherited AddPermissionFrame: TAddPermissionFrame
  Width = 595
  Height = 477
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 595
  ExplicitHeight = 477
  object btnAddPermission: TcxButton
    Left = 440
    Top = 428
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add permission'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnCancel: TcxButton
    Left = 297
    Top = 428
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnModifyPermission: TcxButton
    Left = 440
    Top = 389
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify permission'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edGroupName: TcxTextEdit
    Left = 171
    Top = 17
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 255
  end
  object cxLabel2: TcxLabel
    Left = 12
    Top = 18
    AutoSize = False
    Caption = 'Group name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 504
    Top = 192
  end
end
