object frmBaseDialog: TfrmBaseDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 310
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    648
    310)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel: TBevel
    Left = 0
    Top = 271
    Width = 648
    Height = 39
    Align = alBottom
    Shape = bsTopLine
  end
  object btnOK: TcxButton
    Left = 445
    Top = 278
    Width = 100
    Height = 28
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TcxButton
    Left = 544
    Top = 278
    Width = 100
    Height = 28
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
end
