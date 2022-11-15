unit uPrintManager;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, PgAccess, MemDS, Printers,
  WinSpool, JvExStdCtrls, JvEdit, JvCheckBox;

type
  TPrintManager = class(TBaseFrame)
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBTableView6id: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Label_reports: TLabel;
    PgQuery1: TPgQuery;
    PgDataSource2: TPgDataSource;
    GroupBox_Data: TGroupBox;
    Label_report: TLabel;
    Label1: TLabel;
    ComboBox_Printers: TComboBox;
    cxButton_Print: TcxButton;
    cxButton_Modify: TcxButton;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    PgQuery_Execute: TPgQuery;
    ComboBox_Reports: TComboBox;
    cxButton_Delete: TcxButton;
    Label_CashDesk: TLabel;
    ComboBox_CashDesk: TComboBox;
    cxGridDBTableViev_CDNAME: TcxGridDBColumn;
    cxGridDBTableViewCDID: TcxGridDBColumn;
    Label2: TLabel;
    Edit_Workstation: TJvEdit;
    CheckBox_WorkStacion: TJvCheckBox;
    cxGridDBTableView_ComputerName: TcxGridDBColumn;
    Label3: TLabel;
    ComboBox_Users: TComboBox;
    cxGridDBTableView6UserName: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    exportstoexcel1: TMenuItem;
    procedure cxButton_PrintClick(Sender: TObject);
    procedure cxGridDBTableView6CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton_ModifyClick(Sender: TObject);
    procedure cxButton_DeleteClick(Sender: TObject);
    procedure CheckBox_WorkStacionClick(Sender: TObject);
    procedure exportstoexcel1Click(Sender: TObject);
  private
    NumInfo: Cardinal;
    Printers_1: array [Word] of PRINTER_INFO_2;
    Printers_2: array [Word] of PRINTER_INFO_2;
    procedure InitializationFrame();
    function getNamePrinters: TStringList;
    function CheckConditions(Ainsert: Boolean; Aid: integer): Boolean;
    procedure RefreshWorkStation(AAll: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

var
  PrintManager: TPrintManager;

implementation

uses uGlobals, cxGridDBDataDefinitions, uSystem, uExceptions, uDataBase,
  ufrmMain, uExportsGrid;
{$R *.dfm}

{ TPrintManager }
// ##############################################################################
procedure TPrintManager.CheckBox_WorkStacionClick(Sender: TObject);
begin
  inherited;
  RefreshWorkStation(CheckBox_WorkStacion.Checked);
end;

function TPrintManager.CheckConditions(Ainsert: Boolean; Aid: integer): Boolean;
var
  xQuery: string;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xvalue: string;
  xIdCaskDesk, xidReports: Tid;
  xId_cd, xid_prn: integer;
  xReportValue: string;
  xDataSet: TResultHandle;
  xNext: Boolean;
begin
  result := true;
  xNext := true;

  if ComboBox_Reports.ItemIndex = -1 then
  begin
    xNext := false;
    Information('Warning', 'Please select this field!');
    if ComboBox_Reports.CanFocus then
      ComboBox_Reports.SetFocus;
  end;

  if xNext then
  begin
    if ComboBox_Printers.ItemIndex = -1 then
    begin
      xNext := false;
      Information('Warning', 'Please select this field!');
      if ComboBox_Printers.CanFocus then
        ComboBox_Printers.SetFocus;
    end;
  end;

  if xNext then
  begin
    if ComboBox_CashDesk.ItemIndex = -1 then
    begin
      xNext := false;
      Information('Warning', 'Please select this field!');
      if ComboBox_CashDesk.CanFocus then
        ComboBox_CashDesk.SetFocus;

    end;
  end;


  if xNext then
  begin
    if ComboBox_Users.ItemIndex = -1 then
    begin
      xNext := false;
      Information('Warning', 'Please select this field!');
      if ComboBox_Users.CanFocus then
        ComboBox_Users.SetFocus;

    end;
  end;

  if xNext then
  begin

    SelectedRow := -1;
    DC := Self.cxGridDBTableView6.DataController;
    SelectedRow := DC.FocusedRowIndex;
    if (SelectedRow >= 0) then
    begin

      xReportValue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow]
        .Values[0]);
    end;

    xIdCaskDesk := Tid(ComboBox_CashDesk.Items.Objects
      [ComboBox_CashDesk.ItemIndex]);

    xidReports := Tid(ComboBox_Reports.Items.Objects
      [ComboBox_Reports.ItemIndex]);

    if Assigned(xIdCaskDesk) then
    begin
      xId_cd := xIdCaskDesk.id;
    end
    else
    begin
      xId_cd := ckeyNILL;
    end;
    if Assigned(xidReports) then
    begin
      xid_prn := xidReports.id
    end
    else
    begin
      xid_prn := ckeyNILL;
    end;

    if Ainsert then
    begin
      //user, worksteisin

      xQuery := 'Select Count(*) from tbl_ReportsPrinters where ' +
        ' id_reports=%s and  upper(printername)=''%s'' and id_cd=%s and upper(Computer_name)=''%s'' and upper(User_name)=''%s'' ';
      xQuery := format(StringToDataBAse(xQuery),
        [intToStr(xid_prn), StringToDataBAse(AnsiUpperCase(ComboBox_Printers.Text)),
        intToStr(xId_cd), StringToDataBAse(AnsiUpperCase( Edit_Workstation.text)) ,
        StringToDataBAse(AnsiUpperCase(ComboBox_Users.text))]);
    end
    else
    begin
      xQuery := 'Select Count(*) from tbl_ReportsPrinters where ' +
        ' id_reports=%s and  upper(printername)=''%s'' and id_cd=%s and upper(Computer_name)=''%s'' and upper(User_name)=''%s''  and id<>%s ';
      xQuery := format(StringToDataBAse(xQuery),
        [intToStr(xid_prn), StringToDataBAse(AnsiUpperCase(ComboBox_Printers.Text)),
        intToStr(xId_cd), StringToDataBAse(AnsiUpperCase(Edit_Workstation.text)) ,StringToDataBAse(ComboBox_Users.text) , xReportValue]);
    end;
    xDataSet := TResultHandle.Create;
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    xDataSet.InvokeSQL;
    if xDataSet.query.fields[0].AsInteger > 0 then
    begin
      xNext := false;
      Information('Warning', 'This same values exists in database!');
    end;
  end;
  result := xNext;
end;
// ##############################################################################

constructor TPrintManager.Create(AOwner: TComponent);
begin
  inherited;
  InitializationFrame;
  exportstoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

// ##############################################################################

destructor TPrintManager.Destroy;
var
  i: integer;
begin
  for i := 0 to ComboBox_Reports.Items.Count - 1 do
  begin
    ComboBox_Reports.Items.Objects[i].Free;
  end;
  for i := 0 to ComboBox_Printers.Items.Count - 1 do
  begin
    ComboBox_Printers.Items.Objects[i].Free;
  end;
  for i := 0 to ComboBox_CashDesk.Items.Count - 1 do
  begin
    ComboBox_CashDesk.Items.Objects[i].Free;
  end;

  for i := 0 to ComboBox_Users.Items.Count - 1 do
  begin
    ComboBox_Users.Items.Objects[i].Free;
  end;
  inherited;
end;


procedure TPrintManager.exportstoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView6.ViewData.RecordCount>0 then begin
    TExportsGrid.ExportsGridToExcel(cxGrid7);
  end;
end;

// ##############################################################################

procedure TPrintManager.InitializationFrame;
var
  xQuery: string;
  i: integer;
  xid: Tid;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xvalue: string;
  xPrinters: TStringList;

begin
  ComboBox_Reports.Items.BeginUpdate;
  ComboBox_Printers.Items.BeginUpdate;
  ComboBox_CashDesk.Items.BeginUpdate;
  ComboBox_Users.Items.BeginUpdate;

  xQuery := 'Select * from tbl_reports';
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close;
  PgQuery_Execute.SQL.Clear;
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  ComboBox_Reports.Items.Clear;
  PgQuery_Execute.First;
  for i := 0 to PgQuery_Execute.RecordCount - 1 Do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := PgQuery_Execute.FieldByName('id').AsInteger;
    ComboBox_Reports.Items.AddObject(PgQuery_Execute.FieldByName('Name')
      .AsString, xid);
    PgQuery_Execute.Next;
  end;

  ComboBox_Printers.Items.Clear;

  xPrinters := getNamePrinters;

  for i := 0 to xPrinters.Count - 1 do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := i;
    ComboBox_Printers.Items.AddObject(xPrinters.Strings[i], xid);
  end;

  xPrinters.Free;

  xQuery := 'Select cd_name as name, id from tbl_cd order by cd_name';
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close;
  PgQuery_Execute.SQL.Clear;
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  ComboBox_CashDesk.Items.Clear;
  PgQuery_Execute.First;
  for i := 0 to PgQuery_Execute.RecordCount - 1 Do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := PgQuery_Execute.FieldByName('id').AsInteger;
    ComboBox_CashDesk.Items.AddObject(PgQuery_Execute.FieldByName('Name')
      .AsString, xid);
    PgQuery_Execute.Next;
  end;

  xQuery := 'Select id, user_name as Name from tbl_users  order by user_name ';
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close;
  PgQuery_Execute.SQL.Clear;
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  ComboBox_Users.Items.Clear;
  PgQuery_Execute.First;
  for i := 0 to PgQuery_Execute.RecordCount - 1 Do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := PgQuery_Execute.FieldByName('id').AsInteger;
    ComboBox_Users.Items.AddObject(PgQuery_Execute.FieldByName('Name')
      .AsString, xid);
    PgQuery_Execute.Next;
  end;

  SelectedRow := -1;
  DC := Self.cxGridDBTableView6.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[1]);
    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_Reports.ItemIndex := ComboBox_Reports.Items.IndexOf(xvalue);
    end
    else
    begin

    end;
    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[2]);

    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_Printers.ItemIndex := ComboBox_Printers.Items.IndexOf(xvalue);

    end;
  end;

  if ComboBox_Printers.ItemIndex = -1 then
  begin
    if ComboBox_Printers.Items.Count > 0 then
      ComboBox_Printers.ItemIndex := 1;
  end;

  if ComboBox_Reports.ItemIndex = -1 then
  begin
    if ComboBox_Reports.Items.Count > 0 then
    begin
      ComboBox_Reports.ItemIndex := 0;
    end;
  end;

  if ComboBox_CashDesk.ItemIndex = -1 then
  begin
    if ComboBox_CashDesk.Items.Count > 0 then
    begin
      ComboBox_CashDesk.ItemIndex := 0;
    end;
  end;

  if ComboBox_Reports.Items.Count = 0 then
    ComboBox_Reports.Enabled := false;
  if ComboBox_Printers.Items.Count = 0 then
    ComboBox_Printers.Enabled := false;

  if ComboBox_Reports.Items.Count = 0 then
    ComboBox_Reports.Enabled := false;

  ComboBox_Reports.Items.EndUpdate;
  ComboBox_Printers.Items.EndUpdate;
  ComboBox_CashDesk.Items.EndUpdate;

  Edit_Workstation.Text := frmMain.ComputerInfo.Identification.
    LocalComputerName;
  RefreshWorkStation(CheckBox_WorkStacion.Checked);
  ComboBox_Users.Items.EndUpdate;

end;

procedure TPrintManager.RefreshWorkStation(AAll: Boolean);
var
  xQuery: string;
begin
  if not AAll then
  begin

    xQuery := ' Select tbl_ReportsPrinters.id,tbl_reports.name, tbl_ReportsPrinters.PrinterName, '
      + ' tbl_ReportsPrinters.cd_name,tbl_ReportsPrinters.id_cd, tbl_ReportsPrinters.Computer_name, '
       + ' tbl_ReportsPrinters.User_name  '
      + '  from tbl_ReportsPrinters  ' +
      ' left join tbl_reports  on tbl_ReportsPrinters.id_reports=tbl_reports.id  '
      + ' where computer_name=' + QuotedStr(AnsiUpperCase(trim(Edit_Workstation.Text)))
      + ' and User_Name=' + QuotedStr(AnsiUpperCase(trim(frmMain.CurrentUserName))) +
      ' order by tbl_reports.id  ';
  end
  else
  begin
    xQuery := ' Select tbl_ReportsPrinters.id,tbl_reports.name, tbl_ReportsPrinters.PrinterName, '
      + ' tbl_ReportsPrinters.cd_name,tbl_ReportsPrinters.id_cd , tbl_ReportsPrinters.Computer_name, '
      + ' tbl_ReportsPrinters.User_name  '
      + ' from tbl_ReportsPrinters  ' +
      ' left join tbl_reports  on tbl_ReportsPrinters.id_reports=tbl_reports.id  '
      + ' order by tbl_reports.id  ';

  end;

  if PgQuery1.Active then
    PgQuery1.Close;
  PgQuery1.SQL.Clear;
  PgQuery1.SQL.Add(xQuery);
  PgQuery1.Open;
end;

// ##############################################################################

procedure TPrintManager.cxButton_PrintClick(Sender: TObject);
var
  xQuery: string;
  xIdReport, xIdPrinter, xIdCaskDesk: Tid;
begin
  inherited;
  if CheckConditions(true, ckeyNILL) then
  begin
    xIdReport := Tid(ComboBox_Reports.Items.Objects
      [ComboBox_Reports.ItemIndex]);
    xIdPrinter := Tid(ComboBox_Printers.Items.Objects
      [ComboBox_Printers.ItemIndex]);

    xIdCaskDesk := Tid(ComboBox_CashDesk.Items.Objects
      [ComboBox_CashDesk.ItemIndex]);

    xQuery := ' Insert into tbl_ReportsPrinters(id_reports, PrinterName, PrinterIndex, cd_name ,id_cd,Computer_name,User_name)'
      + ' values(%s,''%s'',%s,''%s'', %s,''%s'',''%s'')';

    xQuery := format(xQuery, [intToStr(xIdReport.id), ComboBox_Printers.Text,
      intToStr(xIdPrinter.id), ComboBox_CashDesk.Text, intToStr(xIdCaskDesk.id),
      Edit_Workstation.Text,ansiUpperCase(trim( ComboBox_Users.Text))]);

    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear();
    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
      PgQuery1.Refresh;
    except
      on E: Exception do
      begin
        HandleException(E, 'TPrintManager.cxButton_PrintClick()');
      end;
    end;
  end;
end;

// ##############################################################################

procedure TPrintManager.cxGridDBTableView6CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xvalue: string;
begin
  inherited;

  SelectedRow := -1;
  DC := Self.cxGridDBTableView6.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[1]);
    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_Reports.ItemIndex := ComboBox_Reports.Items.IndexOf(xvalue);
    end;

    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[2]);
    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_Printers.ItemIndex := ComboBox_Printers.Items.IndexOf(xvalue);
    end;
    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[3]);
    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_CashDesk.ItemIndex := ComboBox_CashDesk.Items.IndexOf(xvalue);
    end;

    xvalue := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[6]);
    if trim(xvalue) <> EmptyStr then
    begin
      ComboBox_Users.ItemIndex := ComboBox_Users.Items.IndexOf(xvalue);
    end;
  end;
end;

// ##############################################################################

procedure TPrintManager.cxButton_ModifyClick(Sender: TObject);
var
  xQuery: string;
  xIdReport, xIdPrinter, xIdCashDesk: Tid;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableView6.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    if ((ComboBox_Reports.ItemIndex <> -1) and
      (ComboBox_Printers.ItemIndex <> -1)) then
    begin
      xid := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[0]);
      if CheckConditions(false, StrToInt(xid)) then
      begin

        xIdReport := Tid(ComboBox_Reports.Items.Objects
          [ComboBox_Reports.ItemIndex]);
        xIdPrinter := Tid(ComboBox_Printers.Items.Objects
          [ComboBox_Printers.ItemIndex]);

        xIdCashDesk :=
          Tid(ComboBox_CashDesk.Items.Objects[ComboBox_CashDesk.ItemIndex]);

        xQuery := 'Update tbl_ReportsPrinters set id_reports=%s, PrinterName=''%s'', PrinterIndex=%s, '
          + ' cd_name=''%s'', id_cd=%s, Computer_name=''%s'',User_name=''%s'' ' + ' where id=%s';

        xQuery := format(xQuery, [intToStr(xIdReport.id),
          ComboBox_Printers.Text, intToStr(xIdPrinter.id),
          ComboBox_CashDesk.Text, intToStr(xIdCashDesk.id),
          AnsiUpperCase(trim(Edit_Workstation.Text)),
          AnsiUpperCase(trim(ComboBox_Users.Text)),
          xid]);

        if PgQuery_Execute.Active then
          PgQuery_Execute.Close;
        PgQuery_Execute.SQL.Clear();
        PgQuery_Execute.SQL.Add(xQuery);
        try
          PgQuery_Execute.Execute;
          PgQuery1.Refresh;
        except
          on E: Exception do
          begin
            HandleException(E, 'TPrintManager.cxButton_PrintClick()');
          end;
        end;
      end;
    end
    else
    begin
      Information('Information', 'Please select row in grids.');
    end;
  end;
end;

// ##############################################################################

procedure TPrintManager.cxButton_DeleteClick(Sender: TObject);
var
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xid, xQuery: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableView6.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xid := VarToStr(cxGridDBTableView6.ViewData.Rows[SelectedRow].Values[0]);
    xQuery := 'Delete from tbl_ReportsPrinters where id=' + xid;
    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear();
    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
      PgQuery1.Refresh;
    except
      on E: Exception do
      begin
        HandleException(E, 'TPrintManager.cxButton_DeleteClick');
      end;
    end;
  end
  else
  begin
    Information('Warning', 'Please select the vales to delete.');
  end;
end;

// ##############################################################################

function TPrintManager.getNamePrinters: TStringList;
var
  xCount: integer;
  xLiczba: integer;
  xNumInfo: integer;
  i: integer;
  Count: DWORD;
begin
  FillChar(Printers_1, SizeOf(Printers_1), #0);
  FillChar(Printers_2, SizeOf(Printers_2), #0);

  NumInfo := 0;
  xCount := 0;
  EnumPrinters(PRINTER_ENUM_LOCAL, nil, 2, @Printers_1, SizeOf(Printers_1),
    Count, NumInfo);

  xCount := NumInfo;

  EnumPrinters(PRINTER_ENUM_CONNECTIONS, nil, 2, @Printers_2,
    SizeOf(Printers_2), Count, NumInfo);
  NumInfo := NumInfo + xCount;

  xLiczba := 0;
  xNumInfo := NumInfo;

  for i := xCount to xNumInfo - 1 do
  begin
    Printers_1[i] := Printers_2[xLiczba];
    Printers_1[i].pServerName := Printers_2[xLiczba].pServerName;
    Printers_1[i].pPrinterName := Printers_2[xLiczba].pPrinterName;
    Printers_1[i].pPortName := Printers_2[xLiczba].pPortName;
    Printers_1[i].pDriverName := Printers_2[xLiczba].pDriverName;
    Printers_1[i].pComment := Printers_2[xLiczba].pComment;
    Printers_1[i].pLocation := Printers_2[xLiczba].pLocation;
    Printers_1[i].pDevMode := Printers_2[xLiczba].pDevMode;
    Printers_1[i].pSepFile := Printers_2[xLiczba].pSepFile;
    Printers_1[i].pPrintProcessor := Printers_2[xLiczba].pPrintProcessor;
    Printers_1[i].pDatatype := Printers_2[xLiczba].pDatatype;
    Printers_1[i].pParameters := Printers_2[xLiczba].pParameters;
    Printers_1[i].pSecurityDescriptor := Printers_2[xLiczba]
      .pSecurityDescriptor;
    Printers_1[i].Attributes := Printers_2[xLiczba].Attributes;
    Printers_1[i].Priority := Printers_2[xLiczba].Priority;
    Printers_1[i].DefaultPriority := Printers_2[xLiczba].DefaultPriority;
    Printers_1[i].StartTime := Printers_2[xLiczba].StartTime;
    Printers_1[i].UntilTime := Printers_2[xLiczba].UntilTime;
    Printers_1[i].Status := Printers_2[i].Status;
    Printers_1[i].cJobs := Printers_2[i].cJobs;
    Printers_1[i].AveragePPM := Printers_2[i].AveragePPM;
    inc(xLiczba);
  end;

  result := TStringList.Create;
  for i := 1 to NumInfo do
  begin
    result.Add(Printers_1[i - 1].pPrinterName);
  end;
end;

// ##############################################################################

end.
