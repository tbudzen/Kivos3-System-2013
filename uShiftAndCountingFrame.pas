unit uShiftAndCountingFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Data.DB, MemDS, DBAccess, PgAccess, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, System.StrUtils, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, cxNavigator, Vcl.Menus, cxButtons,
  cxMemo, cxDBEdit, cxSplitter;

type
  TShiftAndCountingFrame = class(TBaseFrame)
    vShifts: TPgQuery;
    vValues: TPgQuery;
    vAmounts: TPgQuery;
    pnTop: TPanel;
    gLevelShifts: TcxGridLevel;
    GridShifts: TcxGrid;
    gViewShifts: TcxGridDBBandedTableView;
    dsvShifts: TPgDataSource;
    dsvValues: TPgDataSource;
    dsvAmounts: TPgDataSource;
    gViewShiftscd_name: TcxGridDBBandedColumn;
    gViewShiftsgaming_date: TcxGridDBBandedColumn;
    gViewShiftsuser: TcxGridDBBandedColumn;
    ePeriodFrom: TcxDateEdit;
    lbPeriodFrom: TLabel;
    lbPeriodTo: TLabel;
    ePeriodTo: TcxDateEdit;
    btnRefresh: TcxButton;
    gViewShiftsCT_Number: TcxGridDBBandedColumn;
    gViewShiftsDiff: TcxGridDBBandedColumn;
    gViewShiftsDescription: TcxGridDBBandedColumn;
    gViewShiftsCompletedDate: TcxGridDBBandedColumn;
    cxSplitter1: TcxSplitter;
    pnRight: TPanel;
    cxDBMemo1: TcxDBMemo;
    GridValues: TcxGrid;
    gViewValues: TcxGridDBBandedTableView;
    gViewValuescategory_name: TcxGridDBBandedColumn;
    gViewValuesvalue_name: TcxGridDBBandedColumn;
    gViewValuesnr: TcxGridDBBandedColumn;
    gViewValuesmultiplier: TcxGridDBBandedColumn;
    gViewValuesAmount: TcxGridDBBandedColumn;
    gViewValuescurrency_symbol: TcxGridDBBandedColumn;
    gViewValuesexchange_rate: TcxGridDBBandedColumn;
    gViewValuesamount_chf: TcxGridDBBandedColumn;
    gLevelValues: TcxGridLevel;
    GridAmounts: TcxGrid;
    gViewAmounts: TcxGridDBBandedTableView;
    gViewAmountscategory_name: TcxGridDBBandedColumn;
    gViewAmountsamount_foreign: TcxGridDBBandedColumn;
    gViewAmountscurrency_symbol: TcxGridDBBandedColumn;
    gViewAmountsexchange_rate: TcxGridDBBandedColumn;
    gViewAmountsamount_base: TcxGridDBBandedColumn;
    gLevelAmounts: TcxGridLevel;
    gViewShiftsColumn1: TcxGridDBBandedColumn;
    gViewShiftsColumn2: TcxGridDBBandedColumn;
    procedure btnRefreshClick(Sender: TObject);
    procedure vShiftsAfterOpen(DataSet: TDataSet);
    procedure vValuesAfterOpen(DataSet: TDataSet);
    procedure vAmountsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  ShiftAndCountingFrame: TShiftAndCountingFrame;

implementation

uses
  uFrmDatabase;

{$R *.dfm}

{ TBaseFrame2 }

constructor TShiftAndCountingFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
 ePeriodTo.Date := EncodeDate(2012, 10, 26) + EncodeTime(22, 0, 0, 0);
 ePeriodFrom.Date := ePeriodTo.Date - 1;
 ePeriodTo.Properties.DisplayFormat := FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat;
 ePeriodFrom.Properties.DisplayFormat := FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat;
end;

procedure TShiftAndCountingFrame.vAmountsAfterOpen(DataSet: TDataSet);
begin
  inherited;
 TFloatField(DataSet.FieldByName('amount_foreign')).DisplayFormat := '# ##0.00';
 TFloatField(DataSet.FieldByName('amount_base')).DisplayFormat := '# ##0.00';
 TFloatField(DataSet.FieldByName('exchange_rate')).DisplayFormat := '0.0000';
end;

procedure TShiftAndCountingFrame.vShiftsAfterOpen(DataSet: TDataSet);
begin
  inherited;
 TFloatField(DataSet.FieldByName('difference')).DisplayFormat := '# ##0.00';
 ShowMessage(vShifts.SQL.Text);
end;

procedure TShiftAndCountingFrame.vValuesAfterOpen(DataSet: TDataSet);
begin
  inherited;
 TFloatField(DataSet.FieldByName('amount')).DisplayFormat := '# ##0.00';
 TFloatField(DataSet.FieldByName('amount_chf')).DisplayFormat := '# ##0.00';
 TFloatField(DataSet.FieldByName('exchange_rate')).DisplayFormat := '0.0000';

end;

procedure TShiftAndCountingFrame.btnRefreshClick(Sender: TObject);
var hh, mm, ss, msec : Word;
begin
 DecodeTime(ePeriodFrom.Date, hh, mm, ss, msec);
 vShifts.Params[0].AsDateTime := Int(ePeriodFrom.Date) + EncodeTime(hh, mm, 0, 0);
 DecodeTime(ePeriodTo.Date, hh, mm, ss, msec);
 vShifts.Params[1].AsDateTime := Int(ePeriodTo.Date) + EncodeTime(hh, mm, 0, 0);
 if not vShifts.Active
  then vShifts.Open
  else vShifts.Refresh;
 if not vValues.Active
  then vValues.Open
  else vValues.Refresh;
 if not vAmounts.Active
  then vAmounts.Open
  else vAmounts.Refresh;
end;

end.
