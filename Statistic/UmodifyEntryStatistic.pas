unit UmodifyEntryStatistic;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, PgAccess, MemDS,
  DBAccess, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.Mask, cxTextEdit, cxLabel, cxCurrencyEdit;

type
  TuModifyEntryStatisticFrame = class(TBaseFrame)
    GroupBox1: TGroupBox;
    cxLabel2: TcxLabel;
    cxTextEdit_Name: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxMaskEdit_Remark: TcxMaskEdit;
    cxLabel1: TcxLabel;
    ComboBox_Result: TComboBox;
    cxButton_Modify: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView_Header: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    PgDataSource2: TPgDataSource;
    PgQuery2: TPgQuery;
    PgTable2: TPgTable;
    PgQuery3: TPgQuery;
    PgDataSource3: TPgDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView_Details: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView_HeaderColumn_ID: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_Gaming_Date: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_Time: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_Category: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_creationUser: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_ModifyUSer: TcxGridDBColumn;
    cxGrid1DBTableView_HeaderColumn_ModifyDate: TcxGridDBColumn;
    cxGridDBTableView_DetailsColumn_ID: TcxGridDBColumn;
    PgTable1: TPgTable;
    cxGridDBTableView_DetailsColumn_remark: TcxGridDBColumn;
    cxGridDBTableView_DetailsColumn_ValueFigure: TcxGridDBColumn;
    cxGridDBTableView_DetailsColumn_Result: TcxGridDBColumn;
    cxGridDBTableView_DetailsColumn_Type: TcxGridDBColumn;
    cxGridDBTableView_DetailsColumn_ID_Value: TcxGridDBColumn;
    PgQuery_ComboBox: TPgQuery;
    PgQuery_execute: TPgQuery;
    cxGridDBTableView_DetailsColumn_name: TcxGridDBColumn;
    cxTextEdit_Numeric: TcxCurrencyEdit;
    cxTextEdit_Text: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    exporttoexcel1: TMenuItem;
    exporttoexcel2: TMenuItem;
    procedure cxGrid1DBTableView_HeaderCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView_DetailsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton_ModifyClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
    procedure exporttoexcel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  end;

var
  uModifyEntryStatisticFrame: TuModifyEntryStatisticFrame;

implementation

uses cxGridDBDataDefinitions, uExceptions, uFrmMain, uGlobals, uExportsGrid;
{$R *.dfm}
// ##############################################################################

constructor TuModifyEntryStatisticFrame.Create(AOwner: TComponent);
begin
  inherited;
  cxTextEdit_Numeric.Enabled := false;
  cxTextEdit_Text.Enabled := false;
  cxMaskEdit_Remark.Enabled := false;
  ComboBox_Result.Enabled := false;
  cxButton_Modify.Enabled := false;
  exporttoexcel2.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;
// ##############################################################################

destructor TuModifyEntryStatisticFrame.Destroy;
begin

  inherited;
end;

procedure TuModifyEntryStatisticFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView_Header.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

procedure TuModifyEntryStatisticFrame.exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView_Details.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid2);
  end;
end;

// ##############################################################################

procedure TuModifyEntryStatisticFrame.cxGrid1DBTableView_HeaderCellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid: string; // 6
begin
  inherited;
  cxTextEdit_Numeric.Text := EmptyStr;
  cxTextEdit_Text.Text := EmptyStr;
  cxTextEdit_Numeric.Enabled := false;
  cxTextEdit_Text.Enabled := false;
  cxMaskEdit_Remark.Enabled := false;
  cxMaskEdit_Remark.Text := EmptyStr;
  ComboBox_Result.Items.Clear;
  ComboBox_Result.Enabled := false;
  cxButton_Modify.Enabled := false;

  DC := Self.cxGrid1DBTableView_Header.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin

    xid := VarToStr(cxGrid1DBTableView_Header.ViewData.Rows[SelectedRow]
      .Values[0]);

    cxTextEdit_Name.Text := VarToStr(cxGrid1DBTableView_Header.ViewData.Rows
      [SelectedRow].Values[3]);

    xQuery := ' Select A.*,B.Type,B.name from tbl_st_enter_category_values_details A '
      + ' Join tbl_st_valuescategory B on A.id_Value=B.id ' +
      ' where A.idHeader=%s';
    xQuery := format(xQuery, [xid]);

    if PgQuery3.Active then
      PgQuery3.Close;
    PgQuery3.SQL.Clear;
    PgQuery3.SQL.Add(xQuery);

    try
      PgQuery3.Open;
    except
      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
      end;
    end;

  end;
end;

// ##############################################################################

procedure TuModifyEntryStatisticFrame.cxGridDBTableView_DetailsCellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid_value: string; // 6
  i: integer;
  xResult: string;
  xType: string;
begin
  inherited;
  cxTextEdit_Numeric.Text := EmptyStr;
  cxTextEdit_Text.Text := EmptyStr;
  cxTextEdit_Numeric.Enabled := false;
  cxTextEdit_Text.Enabled := false;

  cxMaskEdit_Remark.Text := EmptyStr;
  ComboBox_Result.Items.Clear;

  ComboBox_Result.Enabled := false;
  cxMaskEdit_Remark.Enabled := false;
  cxButton_Modify.Enabled := false;

  DC := Self.cxGridDBTableView_Details.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    cxMaskEdit_Remark.Enabled := true;
    cxButton_Modify.Enabled := true;
    xType := VarToStr(cxGridDBTableView_Details.ViewData.Rows[SelectedRow]
      .Values[4]);
    if xType = '0' then
    begin

      cxTextEdit_Numeric.BringToFront;
      cxTextEdit_Text.SendToBack;
      cxTextEdit_Numeric.Enabled := true;
      cxTextEdit_Text.Enabled := false;
    end
    else if trim(xType) = '1' then
    begin
      cxTextEdit_Numeric.SendToBack;
      cxTextEdit_Text.BringToFront;
      cxTextEdit_Numeric.Enabled := false;
      cxTextEdit_Text.Enabled := true;
    end
    else
    begin
      cxTextEdit_Numeric.SendToBack;
      cxTextEdit_Text.BringToFront;
      cxTextEdit_Numeric.Enabled := false;
      cxTextEdit_Text.Enabled := true;

    end;
    if cxTextEdit_Numeric.Visible then
    begin

      cxTextEdit_Numeric.Text :=
        VarToStr(cxGridDBTableView_Details.ViewData.Rows[SelectedRow]
        .Values[3]);
    end;

    if cxTextEdit_Text.Visible then
    begin
      cxTextEdit_Text.Text := VarToStr(cxGridDBTableView_Details.ViewData.Rows
        [SelectedRow].Values[3]);
    end;

    cxMaskEdit_Remark.Text := VarToStr(cxGridDBTableView_Details.ViewData.Rows
      [SelectedRow].Values[2]);

    xid_value := VarToStr(cxGridDBTableView_Details.ViewData.Rows[SelectedRow]
      .Values[5]);

    xResult := VarToStr(cxGridDBTableView_Details.ViewData.Rows[SelectedRow]
      .Values[6]);

    xQuery := 'Select name from tbl_st_valuescategory where idValuesCategory=%s';
    xQuery := format(xQuery, [xid_value]);

    if PgQuery_ComboBox.Active then
    begin
      PgQuery_ComboBox.Close;
    end;
    PgQuery_ComboBox.SQL.Clear;
    PgQuery_ComboBox.SQL.Add(xQuery);
    PgQuery_ComboBox.Open;
    PgQuery_ComboBox.First;
    for i := 0 to PgQuery_ComboBox.RecordCount - 1 do
    begin
      ComboBox_Result.Items.Add(trim(PgQuery_ComboBox.fieldbyname('Name')
        .AsString));
      PgQuery_ComboBox.Next;
    end;

    if ComboBox_Result.Items.Count > 0 then
    begin
      ComboBox_Result.Enabled := true;
      ComboBox_Result.Style := csDropDownList;
      if trim(xResult) <> '' then
      begin
        ComboBox_Result.ItemIndex := ComboBox_Result.Items.IndexOf(xResult);
      end
      else
      begin
        ComboBox_Result.ItemIndex := 0
      end;
    end
    else
    begin
      if trim(xType) <> '2' then
      begin

        ComboBox_Result.Enabled := false;
      end
      else
      begin
        ComboBox_Result.Enabled := true;
        ComboBox_Result.Style := csSimple;
      end;
    end;

  end;
end;

procedure TuModifyEntryStatisticFrame.cxButton_ModifyClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid: string; // 7
  i: integer;
  xValue: string;
  xIdheader: string;
begin
  inherited;
  DC := Self.cxGridDBTableView_Details.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    if cxTextEdit_Numeric.Visible then
    begin
      xValue := cxTextEdit_Numeric.Text;
    end
    else
    begin
      xValue := cxTextEdit_Text.Text;
    end;
    xid := VarToStr(cxGridDBTableView_Details.ViewData.Rows[SelectedRow].Values
      [0]); // String
    xQuery := 'Select idHeader from tbl_st_enter_category_values_details' +
      ' where id=%s';
    xQuery := format(xQuery, [xid]);

    PgQuery_execute.Connection.StartTransaction;

    if PgQuery_execute.Active then
      PgQuery_execute.Close;
    PgQuery_execute.SQL.Clear;
    PgQuery_execute.SQL.Add(xQuery);
    PgQuery_execute.Open;
    xIdheader := PgQuery_execute.fieldbyname('idheader').AsString;

    xQuery := 'Update tbl_st_enter_category_values_details set value_Figure=''%s'','
      + ' remark=''%s'', result=''%s'' where id=%s ';
    xQuery := format(xQuery, [xValue, cxMaskEdit_Remark.Text,
      ComboBox_Result.Text, xid]);
    if PgQuery_execute.Active then
      PgQuery_execute.Close;
    PgQuery_execute.SQL.Clear;
    PgQuery_execute.SQL.Add(xQuery);
    PgQuery_execute.Execute;

    xQuery := ' Update tbl_st_entry_category_values_header set user_modyfier=''%s'', modyfy_date=''%s'' '
      + ' where id=%s ';

    xQuery := format(xQuery, [frmMain.CurrentUserName, DateTimeToStr(now),
      xIdheader]);
    if PgQuery_execute.Active then
      PgQuery_execute.Close;
    PgQuery_execute.SQL.Clear;
    PgQuery_execute.SQL.Add(xQuery);
    PgQuery_execute.Execute;
    PgQuery2.Refresh;
    PgQuery3.Refresh;

    PgQuery_execute.Connection.Commit;
  end;

end;

// ##############################################################################

end.
