unit uChipsAmountChange;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseDialog, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxLabel;

type
  TChipsAmountChangeForm = class(TfrmBaseDialog)
    lbl_1: TcxLabel;
    cb_1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edt_description: TcxTextEdit;
    edt_1: TcxCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChipsAmountChangeForm: TChipsAmountChangeForm;

implementation

{$R *.dfm}

end.
