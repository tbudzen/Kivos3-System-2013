unit uChipsBalanceReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, cxClasses, cxCustomData, cxStyles,
  Data.DB, DBAccess, PgAccess, MemDS, cxCustomPivotGrid, cxDBPivotGrid, JPEG,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxPivotGrid, cxExportPivotGridLink, Vcl.Grids, Vcl.DBGrids, ShellApi,
  dxSkinscxPCPainter, cxCalc, Vcl.ExtCtrls, dxGDIPlusClasses, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TChipsBalanceReportFrame = class(TBaseFrame)
    lbStartDate: TLabel;
    lbEndDate: TLabel;
    d1: TcxDateEdit;
    d2: TcxDateEdit;
    btnRefresh: TcxButton;
    q_balance: TPgQuery;
    ds_balance: TPgDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    col_gaming_date: TcxDBPivotGridField;
    col_category_name: TcxDBPivotGridField;
    col_value_multiplier: TcxDBPivotGridField;
    col_difference: TcxDBPivotGridField;
    col_value_name: TcxDBPivotGridField;
    btn_excel: TcxButton;
    dlg_save_1: TSaveDialog;
    btn_Print: TcxButton;
    col_total_2: TcxDBPivotGridField;
    col_total_3: TcxDBPivotGridField;
    Label1: TLabel;
    edt_diff_alarm: TcxCalcEdit;
    q_tmp: TPgQuery;
    procedure col_differenceCalculateCustomSummary(Sender: TcxPivotGridField;
      ASummary: TcxPivotGridCrossCellSummary);
    procedure btn_excelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure cxDBPivotGrid1StylesGetContentStyle(Sender: TcxCustomPivotGrid;
      ACell: TcxPivotGridDataCellViewInfo; var AStyle: TcxStyle);
    procedure cxpvtgrdrprtlnkComponentPrinter1Link1CustomDrawPageHeader(
      Sender: TObject; ACanvas: TCanvas; APageIndex: Integer; var ARect: TRect;
      ANom, ADenom: Integer; var ADefaultDrawText,
      ADefaultDrawBackground: Boolean);
  private
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ChipsBalanceReportFrame: TChipsBalanceReportFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem;

{ TChipsBalanceReportFrame }

procedure TChipsBalanceReportFrame.btnRefreshClick(Sender: TObject);
begin
  inherited;
  q_balance.Close;
  q_balance.ParamByName('d1').AsDate := d1.Date;
  q_balance.ParamByName('d2').AsDate := d2.Date;
  q_balance.open;
  col_category_name.ExpandAll;
  col_value_name.ExpandAll;
  col_value_multiplier.ExpandAll;
end;

procedure TChipsBalanceReportFrame.btn_excelClick(Sender: TObject);
begin
  inherited;
  if dlg_save_1.Execute then
  begin
    cxExportPivotGridToExcel(dlg_save_1.FileName ,cxDBPivotGrid1,True,True) ;
    if MessageDlg('Open exported file?',  mtConfirmation, [mbYes, mbNo], 0) =
      mrYes then
    begin
      ShellExecute(handle,'open',PChar(dlg_save_1.FileName),nil,nil,sw_show);
    end;
  end;
end;

procedure TChipsBalanceReportFrame.btn_PrintClick(Sender: TObject);
begin
  inherited;
  //dxComponentPrinter1.Preview();
end;

procedure TChipsBalanceReportFrame.col_differenceCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
  function VarToDouble(const AValue: Variant): Double;
  begin
    Result := 0;
    if not VarIsNull(AValue) then
      Result := AValue;
  end;

var
  AColumn: TcxPivotGridGroupItem;
  I: Integer;
  ARow: TcxPivotGridGroupItem;
  VarPrev, VarCurr: Variant;
begin
  inherited;

//  AColumn := ASummary.Owner.Column;
//
//  if AColumn.Level = -1 then
//  begin
//    ASummary.Custom := 0;
//    for I := 0 to ASummary.Owner.Records.Count - 1 do
//    begin
//      ASummary.Custom := ASummary.Custom +
//        VarToDouble(ASummary.Owner.DataController.Values[ASummary.Owner.Records.Items[I], col_difference.Index]) *
//          VarToDouble(ASummary.Owner.DataController.Values[ASummary.Owner.Records.Items[I], col_value_multiplier.Index]);
//      ASummary.Custom := ASummary.Custom;
//    end;
//  end
//  else
//    ASummary.Custom := ASummary.Sum;


  if (Sender as TcxDBPivotGridField) = col_difference then
  begin
    AColumn := ASummary.Owner.Column;

    if AColumn.Level = -1 then
    begin
      ASummary.Custom := 0;
      for I := 0 to ASummary.Owner.Records.Count - 1 do
      begin
        ASummary.Custom := ASummary.Custom +
          VarToDouble(ASummary.Owner.DataController.Values[ASummary.Owner.Records.Items[I], col_difference.Index]) *
            VarToDouble(ASummary.Owner.DataController.Values[ASummary.Owner.Records.Items[I], col_value_multiplier.Index]);
      end;
    end
    else
      ASummary.Custom := ASummary.Sum;
  end
  else
    if (Sender as TcxDBPivotGridField) = col_total_2 then
    begin
      ARow := ASummary.Owner.Row;
      if ARow.GetPrev <> nil then
        begin
          VarPrev := ARow.GetPrev.GetCellByCrossItem(ASummary.Owner.Column).GetSummaryByField(col_difference, stCustom);
          VarCurr := ARow.GetCellByCrossItem(ASummary.Owner.Column).GetSummaryByField(col_difference, stCustom);
          ASummary.Custom := VarPrev - VarCurr;
        end;
    end
      else
        if (Sender as TcxDBPivotGridField) = col_total_3 then
        begin
          if Abs(VarToDouble(ASummary.Owner.GetSummaryByField(col_total_2, TcxPivotGridSummaryType(stCustom)))) > edt_diff_alarm.Value then
          begin
            ASummary.Custom := 'Big difference';
          end else
          begin
            ASummary.Custom := 'OK';
          end;
        end;


end;

constructor TChipsBalanceReportFrame.Create(AOwner: TComponent);
begin
  inherited;

  q_tmp.SQL.Text := 'select chipbalancebigdiff,casinossmalllogofile from tbl_parametres';
  q_tmp.open;
  if not q_tmp.IsEmpty then
  begin
    edt_diff_alarm.Value := q_tmp.FieldByName('chipbalancebigdiff').AsExtended;
  end;
  q_tmp.Close;

  d2.Date := now-1;
  d1.Date := d2.Date - 7;
  btnRefresh.Click;

end;

procedure TChipsBalanceReportFrame.cxDBPivotGrid1StylesGetContentStyle(
  Sender: TcxCustomPivotGrid; ACell: TcxPivotGridDataCellViewInfo;
  var AStyle: TcxStyle);
begin
  inherited;
  if
    (ACell.Column.Field = col_total_3) and
    (ACell.Value = 'Big difference')
  then
  begin
    AStyle := frmMain.style_alarm;
  end;
end;

procedure TChipsBalanceReportFrame.cxpvtgrdrprtlnkComponentPrinter1Link1CustomDrawPageHeader(
  Sender: TObject; ACanvas: TCanvas; APageIndex: Integer; var ARect: TRect;
  ANom, ADenom: Integer; var ADefaultDrawText, ADefaultDrawBackground: Boolean);
var
  AcxCanvas: TcxCanvas;
  ATextHeight, ATextWidth: Integer;
  ARightTextRect: TRect;
  pw : Extended;


var
  W, H: Integer;
  b : TBitmap;
  j : TJpegImage;
begin
  inherited;

  if FileExists(frmMain.CasinosSmallLogoFile) then
  begin
    b := TBitmap.Create;
    if Pos('bmp',(ExtractFileExt(frmMain.CasinosSmallLogoFile)))>0 then
    begin
      b.LoadFromFile(frmMain.CasinosSmallLogoFile);
    end else
    begin
      j := TJpegImage.Create;
      j.LoadFromFile(frmMain.CasinosSmallLogoFile);
      b.Assign(j);
      j.free;
    end;
    W := MulDiv(b.Width, ANom, ADenom);
    H := MulDiv(b.Height, ANom, ADenom);

    ACanvas.StretchDraw(Rect(ARect.Right - (W div 2), ARect.Top, ARect.Right, ARect.Top + (H div 2)), b);

    b.Free;
  end;

//  AcxCanvas := TcxCanvas.Create(ACanvas);
//  AcxCanvas.Brush.Color := clWhite;
//
//    AcxCanvas.DrawTexT('Left header text', ARect, taLeftJustify, vaTop, false, false);
//    AcxCanvas.Font.Height := AcxCanvas.Font.Height * 2;
//    AcxCanvas.DrawTexT('Center header text', ARect, taCenter, vaBottom, false, false);
//    AcxCanvas.Font.Height := AcxCanvas.Font.Height div 2;
//    ARightTextRect := ARect;
//    ARightTextRect.Right := ARightTextRect.Right - MulDiv(2, ANom, ADenom);
//    AcxCanvas.DrawTexT('Right header text', ARightTextRect, taRightJustify, vaCenter, false, false);
//
//  b := TBitmap.Create;
//  b.LoadFromFile('D:\Moje obrazy\GRAFIKA.ROB\MCP_c.bmp');
//
//  ATextWidth := AcxCanvas.TextWidth('Right header text');
//  ATextHeight := AcxCanvas.TextHeight('Right header text');
//  pw := (cxpvtgrdrprtlnkComponentPrinter1Link1.PrinterPage.PageSize.Y) / 10000 -
//        (cxpvtgrdrprtlnkComponentPrinter1Link1.PrinterPage.Margins.Left / 10000) -
//        (cxpvtgrdrprtlnkComponentPrinter1Link1.PrinterPage.Margins.Right / 10000);
//  ATextWidth := Round((4 * cxpvtgrdrprtlnkComponentPrinter1Link1.PrinterPage.Header) / pw);
//  ATextWidth := ATextWidth*2;
//  frmMain.Caption := 'PW:'+FloatToStr(cxpvtgrdrprtlnkComponentPrinter1Link1.PrinterPage.Header)+'W:'+FloatToStr(ATextWidth)+' H:'+FloatToStr(ATextHeight);
//
//  ARightTextRect.Left := ARightTextRect.Right - ATextWidth - MulDiv(2, ANom, ADenom);
//  ARightTextRect.Right := ARightTextRect.Right + MulDiv(2, ANom, ADenom);
//  ARightTextRect.Top := (ARightTextRect.Bottom + ARightTextRect.Top - ATextHeight - MulDiv(2, ANom, ADenom)) div 2;
//  ARightTextRect.Bottom := ARightTextRect.Top + ATextHeight + MulDiv(2, ANom, ADenom) * 2;
//
//  AcxCanvas.StretchDraw(ARightTextRect, img_1.Picture.Graphic);
//  b.Free;
//
//
//  AcxCanvas.FrameRect(ARightTextRect, clRed, MulDiv(1, ANom, ADenom));
//
//  ADefaultDrawText := false;
//  FreeAndNil(AcxCanvas);
//
end;

end.
