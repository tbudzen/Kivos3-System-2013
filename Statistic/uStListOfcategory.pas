unit uStListOfcategory;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB, DBAccess, PgAccess, MemDS,
  cxInplaceContainer, cxTLData, cxDBTL, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxMemo, cxContainer, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  JvExStdCtrls, JvCombobox, Vcl.Menus, cxButtons, cxLabel, cxCurrencyEdit;

type
  TStListOfCategory = class(TBaseFrame)
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    cxGrid1DBTableView_Entry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PgQuery2: TPgQuery;
    PgDataSource3: TPgDataSource;
    ComboBox_Category: TComboBox;
    cxTextEdit_Data: TcxTextEdit;
    cxGrid1DBTableView_EntryColumn_Name: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_Description: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_Figure: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_Remark: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_Type: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_StringValue: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    PgQuery3: TPgQuery;
    cxGrid1DBTableView_EntryColumn_IDvalue: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumnId: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    cxLabel2: TcxLabel;
    cxTextEdit_Name: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxMaskEdit_Remark: TcxMaskEdit;
    cxLabel1: TcxLabel;
    ComboBox_Result: TComboBox;
    cxButton_Add: TcxButton;
    cxButton_Delete: TcxButton;
    cxButton_Save: TcxButton;
    cxGrid1DBTableView_EntryColumn_header: TcxGridDBColumn;
    cxGrid1DBTableView_EntryColumn_types: TcxGridDBColumn;
    cxTextEdit_Numeric: TcxCurrencyEdit;
    cxTextEdit_text: TcxTextEdit;
    cxLabel5: TcxLabel;
    DateEdit_GamingDay: TJvDateEdit;
    PopupMenu1: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure DateEdit_GamingDayExit(Sender: TObject);
    procedure ComboBox_CategorySelect(Sender: TObject);
    procedure cxGrid1DBTableView_EntryCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton_AddClick(Sender: TObject);
    procedure cxButton_SaveClick(Sender: TObject);
    procedure DateEdit_GamingDayAcceptDate(Sender: TObject;
      var ADate: TDateTime; var Action: Boolean);
    procedure cxButton_DeleteClick(Sender: TObject);
    procedure cxGrid1DBTableView_EntryFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxMaskEdit1PropertiesChange(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);

    // procedure PgDataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure PrepareFrame;
    procedure ListChangeItems();
  end;

  Tid = class
  public
    index: integer;
    id: integer;
  end;

var
  StListOfCategory: TStListOfCategory;

implementation

uses DateUtils, cxGridDBDataDefinitions, uGlobals, uFrmMain, uExportsGrid;
{$R *.dfm}
// ##############################################################################

constructor TStListOfCategory.Create(AOwner: TComponent);
begin
  inherited;
  PrepareFrame();
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;


// ##############################################################################

destructor TStListOfCategory.Destroy;
var
  i: integer;
begin
  for i := 0 to ComboBox_Category.Items.Count - 1 do
  begin
    ComboBox_Category.Items.Objects[i].Free;
  end;
  inherited;
end;

// ##############################################################################

procedure TStListOfCategory.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView_Entry.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

// ##############################################################################

procedure TStListOfCategory.ComboBox_CategorySelect(Sender: TObject);
var
  xQuery: string;
  xid: integer;
  xIdheader: integer;
  xDate: TDateTime;

begin
  inherited;
  if ((ComboBox_Category.ItemIndex <> -1) and (ComboBox_Category.ItemIndex <> 0))
  then
  begin

    xid := Tid(ComboBox_Category.Items.Objects[ComboBox_Category.ItemIndex]).id;

    xQuery := 'Insert into tbl_st_entry_category_values_header(Gaming_date,DateTime,id_category,modyfy_date,user_creator)'
      + ' values(''%s'',''%s'',%s,''%s'',''%s'')';
    try
      xDate := StrToDateTime(cxTextEdit_Data.Text);
      xDate := xDate + Frac(now());
    except
      xDate := 0;
    end;

    xQuery := format(xQuery, [DateToStr(DateEdit_GamingDay.Date),
      DateTimeToStr(xDate), inttostr(xid), DateTimeToStr(now),
      frmMain.CurrentUserName]);

    if PgQuery1.Active then
      PgQuery1.Close;
    PgQuery1.SQL.Clear;
    PgQuery1.SQL.Add(xQuery);
    PgQuery1.Connection.StartTransaction;
    PgQuery1.Execute;

    xQuery := 'Select MAX(id) from tbl_st_entry_category_values_header';
    if PgQuery1.Active then
      PgQuery1.Close;
    PgQuery1.SQL.Clear;
    PgQuery1.SQL.Add(xQuery);
    PgQuery1.Open;
    if PgQuery1.Fields[0].IsNull then
    begin
      xIdheader := 1;
    end
    else
    begin
      xIdheader := PgQuery1.Fields[0].AsInteger;
    end;

    xQuery := ' Insert into tbl_st_enter_category_values_details(id_value,idheader) '
      + ' Select id,' + inttostr(xIdheader) +
      ' from tbl_st_valuescategory where idcategory=%s ';
    xQuery := format(xQuery, [inttostr(xid)]);

    if PgQuery1.Active then
      PgQuery1.Close;
    PgQuery1.SQL.Clear;
    PgQuery1.SQL.Add(xQuery);
    PgQuery1.Execute;

    PgQuery1.Connection.Commit;

    xQuery := ' select A.*, B.name,' +
      ' case when b.type=0 then ''numeric'' when b.type=1 then ''result'' else ''string'' end as types, '
      + ' b.type ' + 'from tbl_st_enter_category_values_details  A ' +
      ' Join tbl_st_valuescategory b on b.id=A.id_Value ' +
      ' where idheader=(select MAX(idHeader) from ' +
      ' tbl_st_enter_category_values_details) and idCategory=%s';
    xQuery := format(xQuery, [inttostr(xid)]);
    if PgQuery2.Active then
      PgQuery2.Close;
    PgQuery2.SQL.Clear;
    PgQuery2.SQL.Add(xQuery);
    PgQuery2.Open;

  end
  else
  begin
    // Clear Grid
    xQuery := ' select A.*, B.name,b.type,' +
      ' case when b.type=0 then ''numeric'' when b.type=1 then ''result'' else ''string'' end  as types '
      + ' from tbl_st_enter_category_values_details  A ' +
      ' Join tbl_st_valuescategory b on b.id=A.id_Value ' +
      ' where idheader=(select MAX(idHeader) from ' +
      ' tbl_st_enter_category_values_details) and idCategory=-10000 ';

    if PgQuery2.Active then
      PgQuery2.Close;
    PgQuery2.SQL.Clear;
    PgQuery2.SQL.Add(xQuery);
    PgQuery2.Open;

  end;
end;

// ##############################################################################

procedure TStListOfCategory.cxGrid1DBTableView_EntryCellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);

begin
  inherited;
  ListChangeItems();
end;

// ##############################################################################

procedure TStListOfCategory.cxGrid1DBTableView_EntryFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ListChangeItems;
end;

procedure TStListOfCategory.cxMaskEdit1PropertiesChange(Sender: TObject);
begin
  inherited;

end;

// ##############################################################################

procedure TStListOfCategory.cxButton_AddClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid: string; // 7
  i: integer;
  xValue: string;

begin
  inherited;
  DC := Self.cxGrid1DBTableView_Entry.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xid := VarToStr(cxGrid1DBTableView_Entry.ViewData.Rows[SelectedRow].Values
      [7]); // String
    if cxTextEdit_Numeric.Visible then
    begin
      xValue := cxTextEdit_Numeric.Text;
    end
    else
    begin
      xValue := ComboBox_Result.Text;
    end;

    xQuery := 'Update tbl_st_enter_category_values_details set value_Figure=''%s'','
      + ' remark=''%s'', result=''%s'' where id=%s ';
    xQuery := format(xQuery, [xValue, cxMaskEdit_Remark.Text,
      ComboBox_Result.Text, xid]);
    if PgQuery3.Active then
      PgQuery3.Close;
    PgQuery3.SQL.Clear;
    PgQuery3.SQL.Add(xQuery);
    PgQuery3.Execute;
    PgQuery2.Refresh;

  end;
end;

// ##############################################################################

procedure TStListOfCategory.cxButton_DeleteClick(Sender: TObject);
var
  xid: string;
  xQuery: string;
begin
  inherited;
  if cxGrid1DBTableView_Entry.ViewData.RecordCount > 0 then
  begin
    xid := VarToStr(cxGrid1DBTableView_Entry.ViewData.Rows[0].Values[8]);
    xQuery := 'Delete from tbl_st_enter_category_values_details where idHeader=%s';
    xQuery := format(xQuery, [xid]);
    PgQuery3.Connection.StartTransaction;

    if PgQuery3.Active then
      PgQuery3.Close;
    PgQuery3.SQL.Clear;
    PgQuery3.SQL.Add(xQuery);
    PgQuery3.Execute;

    xQuery := 'Delete from tbl_st_entry_category_values_header where id=%s';
    xQuery := format(xQuery, [xid]);

    if PgQuery3.Active then
      PgQuery3.Close;
    PgQuery3.SQL.Clear;
    PgQuery3.SQL.Add(xQuery);
    PgQuery3.Execute;
    PgQuery2.Refresh;

    PgQuery3.Connection.Commit;

    ComboBox_Category.ItemIndex := 0;
    ComboBox_Category.OnSelect(nil);

  end;
end;

// ##############################################################################

procedure TStListOfCategory.cxButton_SaveClick(Sender: TObject);
begin
  inherited;
  ComboBox_Category.ItemIndex := 0;
  ComboBox_Category.OnSelect(nil);
end;

// ##############################################################################

procedure TStListOfCategory.DateEdit_GamingDayAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  ComboBox_Category.Enabled := true;
end;

// ##############################################################################

procedure TStListOfCategory.DateEdit_GamingDayExit(Sender: TObject);

begin
  inherited;
  if ComboBox_Category.Items.Count > 0 then
  begin
    ComboBox_Category.DroppedDown:=true;
  end;
end;

// ##############################################################################

procedure TStListOfCategory.PrepareFrame;
var
  xQuery: string;
  i: integer;
  xid: Tid;
begin

  xQuery := 'Select id, Name  from tbl_st_category ';

  if PgQuery1.Active then
    PgQuery1.Close;
  PgQuery1.SQL.Clear;
  PgQuery1.SQL.Add(xQuery);
  PgQuery1.Open;

  for i := 0 to ComboBox_Category.Items.Count - 1 do
  begin
    ComboBox_Category.Items.Objects[i].Free;
  end;

  ComboBox_Category.Items.Clear;

  PgQuery1.First;
  xid := Tid.Create;
  xid.index := -1;
  xid.id := ckeyNILL;
  ComboBox_Category.Items.AddObject('', xid);
  for i := 0 to PgQuery1.RecordCount - 1 do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := PgQuery1.FieldByName('id').AsInteger;
    ComboBox_Category.Items.AddObject(PgQuery1.FieldByName('Name')
      .AsString, xid);
    PgQuery1.next;
  end;
  if ComboBox_Category.Items.Count > 0 then
  begin
    ComboBox_Category.Enabled := true;
    ComboBox_Category.ItemIndex := 0;
  end;
  cxTextEdit_Data.Text := DateTimeToStr(now);

  cxButton_Add.Enabled := false;
  cxButton_Delete.Enabled := false;
  cxButton_Save.Enabled := false;

  cxTextEdit_Numeric.Enabled:=false;
  cxTextEdit_text.Enabled:=false;
  cxMaskEdit_Remark.Enabled:=false;
  ComboBox_Result.Enabled:=false;
end;

// ##############################################################################

procedure TStListOfCategory.ListChangeItems;
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid: string; // 6
  i: integer;
  xType: string;
begin
  cxTextEdit_Name.Text := EmptyStr;
  cxTextEdit_Name.Enabled := false;
  cxTextEdit_Numeric.Text := EmptyStr;
  cxTextEdit_text.Text:= EmptyStr;
  cxTextEdit_Numeric.Enabled := false;
  cxTextEdit_text.Enabled:=false;
  cxMaskEdit_Remark.Text := EmptyStr;
  cxMaskEdit_Remark.Enabled := false;
  cxButton_Add.Enabled := false;
  cxButton_Delete.Enabled := false;
  cxButton_Save.Enabled := false;

  DC := Self.cxGrid1DBTableView_Entry.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    try
      xid := VarToStr(cxGrid1DBTableView_Entry.ViewData.Rows[SelectedRow]
        .Values[0]);

      cxTextEdit_Name.Text :=
        VarToStr(cxGrid1DBTableView_Entry.ViewData.Rows[SelectedRow].Values[1]);

      xType := VarToStr(cxGrid1DBTableView_Entry.ViewData.Rows[SelectedRow]
        .Values[6]);

      cxButton_Add.Enabled := true;
      cxButton_Delete.Enabled := true;
      cxButton_Save.Enabled := true;
      cxMaskEdit_Remark.Enabled:=true;

      if trim(xType) = '0' then
      begin
        ComboBox_Result.Style := csDropDownList;
        ComboBox_Result.Enabled := false;
        cxTextEdit_Numeric.BringToFront;
        cxTextEdit_text.SendToBack;
        cxTextEdit_Numeric.Enabled:=true;
        cxTextEdit_text.Enabled:=false;
      end
      else if trim(xType) = '1' then
      begin
        ComboBox_Result.Style := csDropDownList;
        ComboBox_Result.Enabled := true;
        cxTextEdit_Numeric.SendToBack;
        cxTextEdit_text.BringToFront;
        cxTextEdit_text.Text:= EmptyStr;
        cxTextEdit_Numeric.Enabled:=false;
        cxTextEdit_text.Enabled:=true;
      end
      else if xType = '2' then
      begin
        ComboBox_Result.Style := csSimple;
        ComboBox_Result.Enabled := true;
        cxTextEdit_Numeric.SendToBack;
        cxTextEdit_text.BringToFront;
        cxTextEdit_text.Text:= EmptyStr;
        cxTextEdit_Numeric.Enabled:=false;
        cxTextEdit_text.Enabled:=true;
      end;

      if ComboBox_Result.Enabled then
      begin

        xQuery := 'Select name from tbl_st_valuescategory where idvaluesCategory='
          + xid;
        if PgQuery3.Active then
          PgQuery3.Close;
        PgQuery3.SQL.Clear;
        PgQuery3.SQL.Add(xQuery);
        PgQuery3.Open;
        PgQuery3.First;
        ComboBox_Result.Items.Clear;
        for i := 0 to PgQuery3.RecordCount - 1 do
        begin
          ComboBox_Result.Items.Add
            (trim(PgQuery3.FieldByName('Name').AsString));
          PgQuery3.next;
        end;
      end;
    except
      exit;
    end;
  end;
end;



end.
