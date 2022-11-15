unit uListOfCurrenciesExchangeRatesFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, MemDS,
  cxTL, cxTextEdit, cxCalc, cxContainer, cxLabel, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxCore, cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TListOfCurrenciesExchangeRatesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    PgSQL1: TPgSQL;
    PgQuery1: TPgQuery;
    PageControl1: TPageControl;
    TabSheet_Actual: TTabSheet;
    cxGrid_Actual: TcxGrid;
    cxGrid_ActualDBTableView1: TcxGridDBTableView;
    cxGrid_ActualDBTableView1id: TcxGridDBColumn;
    cxGrid_ActualDBTableView1name: TcxGridDBColumn;
    cxGrid_ActualDBTableView1valid_from: TcxGridDBColumn;
    cxGrid_ActualDBTableView1valid_to: TcxGridDBColumn;
    cxGrid_ActualDBTableView1buying: TcxGridDBColumn;
    cxGrid_ActualDBTableView1selling: TcxGridDBColumn;
    cxGrid_ActualDBTableView1_Symbol: TcxGridDBColumn;
    cxGrid_ActualLevel1: TcxGridLevel;
    Panel1: TPanel;
    TabSheet_Hist: TTabSheet;
    cxGrid_Historical: TcxGrid;
    cxGridDBTableView_Hist: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PgQuery_Hist: TPgQuery;
    PgDataSource_Hist: TPgDataSource;
    cxButton_Print: TcxButton;
    Panel_: TPanel;
    cxDateEdit_from: TcxDateEdit;
    cxTimeEdit_From: TcxTimeEdit;
    cxButton_Refresh: TcxButton;
    cxButton2: TcxButton;
    cxDateEdit_To: TcxDateEdit;
    cxTimeEdit_To: TcxTimeEdit;
    Panel2: TPanel;
    cxButton3: TcxButton;
    btnModifyCurrencyExchangeRate: TcxButton;
    cxLabel_PadingTransaction: TcxLabel;
    PopupMenu_Actual: TPopupMenu;
    PopupMenu_Historical: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    Exporttoexcel2: TMenuItem;
    procedure btnModifyCurrencyExchangeRateClick(Sender: TObject);
    procedure PgQuery1AfterOpen(DataSet: TDataSet);
    procedure cxButton_PrintClick(Sender: TObject);
    procedure cxButton_RefreshClick(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure Exporttoexcel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy;
    procedure Prepare_Frame();
  end;

var
  ListOfCurrenciesExchangeRatesFrame: TListOfCurrenciesExchangeRatesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddCurrencyExchangeRateFrame, uReportPreview, DateUtils,
  uReportCurrencyHistFrame, uExportsGrid;

{$R *.dfm}
// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.btnModifyCurrencyExchangeRateClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddCurrencyExchangeRateFrame;
  xSymbol: string;
begin
  SelectedRow := -1;
  DC := Self.cxGrid_ActualDBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid_ActualDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(65));

    F := TAddCurrencyExchangeRateFrame(frmMain.CurrentFrame);

    F.btnAddCurrencyExchangeRate.Hide();
    F.btnModifyCurrencyExchangeRate.Show();

    F.edId.Text := VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]);
    F.edValidFrom.Text := VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows
      [SelectedRow].Values[2]);
    F.edValidTo.Text := VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows[SelectedRow]
      .Values[3]);
    F.edExchangeRateForBuying.Text :=
      StringReplace(VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows[SelectedRow]
      .Values[4]), ',', '.', [rfReplaceAll]);
    F.edExchangeRateForSelling.Text :=
      StringReplace(VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows[SelectedRow]
      .Values[5]), ',', '.', [rfReplaceAll]);
    xSymbol := VarToStr(cxGrid_ActualDBTableView1.ViewData.Rows[SelectedRow]
      .Values[6]);
    F.edCurrency.EditText := TCaption(xSymbol);
    F.edValidFrom.Enabled := true;
    F.edValidTo.Enabled := true;
    F.edValidTo.visible := false;
    F.edCurrency.Enabled := false;
    F.cxTextEdit1.Text := F.edExchangeRateForBuying.Text;
    F.cxTextEdit2.Text := F.edExchangeRateForSelling.Text
  end
  else
  begin

    Information('Warning',
      'Please select the currency exchange rate to modify.');

  end;
end;

// ##############################################################################

constructor TListOfCurrenciesExchangeRatesFrame.Create(AOwner: TComponent);
begin
  inherited;
  Prepare_Frame;
end;

// ##############################################################################
destructor TListOfCurrenciesExchangeRatesFrame.Destroy;
begin
end;

// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.Exporttoexcel1Click
  (Sender: TObject);
begin
  inherited;
  if cxGrid_ActualDBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid_Actual);
  end;
end;

procedure TListOfCurrenciesExchangeRatesFrame.Exporttoexcel2Click(
  Sender: TObject);
begin
  inherited;
  if cxGridDBTableView_Hist.ViewData.RecordCount>0 then begin
    TExportsGrid.ExportsGridToExcel(cxGrid_Historical)
  end;
end;

// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.PgQuery1AfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  PgQuery_Hist.Active := false;
  PgQuery_Hist.Active := true;
end;

// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.Prepare_Frame;
begin
  btnModifyCurrencyExchangeRate.Enabled := frmMain.GetFieldAsInteger
    ('select count(*) as count from tbl_cd_cash_transactions where confirmed=0 ',
    'count') = 0;
  cxLabel_PadingTransaction.visible :=
    not btnModifyCurrencyExchangeRate.Enabled;
  PageControl1.ActivePage := TabSheet_Actual;
  cxDateEdit_from.Date := dateof(now);
  cxDateEdit_To.Date := dateof(now);
  cxTimeEdit_From.Time := 0;
  cxTimeEdit_To.Time := 0;
  Exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
  Exporttoexcel2.Caption:= cPopMenu_eksport_toExcel;
end;

// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.cxButton_PrintClick
  (Sender: TObject);
var
  xObject: TReportsPrinter;
  xDataOd, xDataDo: TDateTime;
begin
  inherited;
  if PageControl1.ActivePage = TabSheet_Actual then
  begin

    xObject := TReportsPrinter.Create;
    xObject.FIdReport := cReportCurrency;
    xObject.FCopies := 1;
    if xObject.FIdReport <> 0 then
    begin
      xObject.PrintReport;
    end;
    xObject.Free;
  end
  else if PageControl1.ActivePage = TabSheet_Hist then
  begin
    xObject := TReportsPrinter.Create;
    xObject.FIdReport := cReportCurrencyHist;
    xObject.FCopies := 1;
    xDataOd := cxDateEdit_from.Date + cxTimeEdit_From.Time;
    xDataDo := cxDateEdit_To.Date + cxTimeEdit_To.Time;
    xObject.FDataFrom := xDataOd;
    xObject.FDataTo := xDataDo;
    if xObject.FIdReport <> 0 then
    begin
      xObject.PrintReport;
    end;
    xObject.Free;
  end;
end;

// ##############################################################################

procedure TListOfCurrenciesExchangeRatesFrame.cxButton_RefreshClick
  (Sender: TObject);
var
  xQuery: string;
  xQueryData, xQueryTime: string;
  xDataOd, xDataDo: TDateTime;
begin
  inherited;
  xQueryData := EmptyStr;
  xDataOd := cxDateEdit_from.Date + cxTimeEdit_From.Time;
  xDataDo := cxDateEdit_To.Date + cxTimeEdit_To.Time;

  xQueryData := ' and  cer.valid_from >=%s and cer.valid_to <=%s';
  xQueryData := format(xQueryData, [QuotedStr(DateToStr(xDataOd)),
    QuotedStr(DateToStr(xDataDo))]);

  xQuery := ' select cer.*, c.name, c.symbol as SYMBOL_CURR  ' +
    ' from tbl_currencies_exchange_rates_hist as cer, tbl_currencies as c  ' +
    ' where c.id = cer.id_currency ' + xQueryData + ' order by c.symbol ';
  if PgQuery_Hist.Active then
    PgQuery_Hist.Close;
  PgQuery_Hist.SQL.Clear;
  PgQuery_Hist.SQL.Add(xQuery);
  PgQuery_Hist.Open;

end;

// ##############################################################################

end.
