unit uShiftsExplanation;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxSpinEdit, cxTimeEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxCalc, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, PgAccess,
  MemDS, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TShiftsExplanation = class(TBaseFrame)
    Panel_: TPanel;
    cxDateEdit_from: TcxDateEdit;
    cxTimeEdit_From: TcxTimeEdit;
    cxButton_Refresh: TcxButton;
    cxDateEdit_To: TcxDateEdit;
    cxTimeEdit_To: TcxTimeEdit;
    PageControl1: TPageControl;
    TabSheet_Shifts: TTabSheet;
    ScrollBox1: TScrollBox;
    cxDBTreeList_ReportsShifts: TcxDBTreeList;
    cxDBTreeList_ReportsShiftscxDB_id: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_id_cd_transaction: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShift_cd_cashDeskName: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_Operation: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftscxDB_User: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsData: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_CURR: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_Amount: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsAmountCHF: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_gamingdate: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_Balance: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_Diferewnce: TcxDBTreeListColumn;
    PgQuery_CategoryNameItems: TPgQuery;
    PgDataSource_RepItemCategory: TPgDataSource;
    Panel_Down: TPanel;
    Label_Category: TLabel;
    cxDBLookupComboBox_ShiftsCategory: TcxDBLookupComboBox;
    PgQuery_List: TPgQuery;
    PgDataSource_List: TPgDataSource;
    PgQuery_CategoryShifts: TPgQuery;
    PgDataSource_CategoryShifts: TPgDataSource;
    Label_Exploation: TLabel;
    cxButton_Save: TcxButton;
    cxDBTreeList_ReportsShiftscxDBTreeListColumn_category_diffrence
      : TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftscxDBTreeListColumn_Exploation
      : TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftscxDBTreeListColumn_User_explanation
      : TcxDBTreeListColumn;
    PgQuery_Execute: TPgQuery;
    cxDBTreeList_ReportsShiftscxDBTreeListColumn_Catsname: TcxDBTreeListColumn;
    Memo_Explanation: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    procedure cxButton_RefreshClick(Sender: TObject);
    procedure cxDBTreeList_ReportsShiftsClick(Sender: TObject);
    procedure cxButton_SaveClick(Sender: TObject);
    procedure cxDBLookupComboBox_ShiftsCategoryEnter(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure RefreshShifts();
    function CheckSaveShifts: boolean;
  end;

var
  ShiftsExplanation: TShiftsExplanation;

implementation

uses DateUtils, uFrmMain, uExceptions, uSystem, uGlobals, uExportsGrid;

{$R *.dfm}
// ##############################################################################

constructor TShiftsExplanation.Create(AOwner: TComponent);
begin
  inherited;
    cxDateEdit_from.Date := dateof(now());
    cxDateEdit_To.Date := dateof(now());
    Exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

// ##############################################################################

procedure TShiftsExplanation.cxButton_RefreshClick(Sender: TObject);
begin
  inherited;
  RefreshShifts;
end;

// ##############################################################################

procedure TShiftsExplanation.RefreshShifts;
var
  xQuery: String;
  xQueryData: string;
  xQueryTime: string;
begin
  xQueryData := EmptyStr;
  xQueryData := ' cast(cdt.DateTime as date) between  ' +
    QuotedStr(DateToStr(cxDateEdit_from.Date)) + '  and  ' +
    QuotedStr(DateToStr(cxDateEdit_To.Date));

  xQueryTime := EmptyStr;
  if ((cxTimeEdit_From.Time <> 0) and (cxTimeEdit_To.Time <> 0)) then
  begin
    xQueryTime := ' and cast(cdt.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));

  end
  else
  begin
    if (cxTimeEdit_From.Time <> 0) then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));

    end
    else if cxTimeEdit_To.Time <> 0 then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));

    end;
  end;

  xQuery := ' select ' + ' cdt.id as id, 0 as id_cd_transaction,  cd.cd_name, '
    + ' cdt.base_ct_Number, 0 as exchange_rate, cdt.ct_number, ' +
    ' cdt.difference as difference, ' +
    ' (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) ' +
    ' from  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
    ' left join tbl_values as tbval on ctv.id_cd_value = tbval.id ' +
    ' where cdt.id = ctv.id_cd_transaction)as totalamount, ' +
    ' cast(cdt.DateTime as date)  as date, ' +
    ' '''' as catName, cdt.Gaming_date, ' +
    ' case when substr(cdt.ct_number,1,2)=''OP'' then ''open'' ' +
    ' when substr(cdt.ct_number,1,2)=''CL'' then ''close'' end as operation, ' +
    ' us.first_name ||'' ''|| us.last_name as user, ' +
    ' ''CHF'' as currSymbol,  ' +
    ' case when cdt.difference < 0 then sum(cdt.difference + ' +
    ' (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) ' +
    ' from  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
    ' left join tbl_values as tbval on ctv.id_cd_value = tbval.id ' +
    ' where cdt.id = ctv.id_cd_transaction))  else 0 end as balance , ' +
    ' 0 as currrate, ' + ' 0 as amountchf, ' + ' cdt.explanation_supervisor, ' +
    ' cats.name as catsname,  ' + ' cdt.id_category_diff_s,  ' +
    ' usexp.first_name ||'' ''|| usexp.last_name as  id_explanation_supervisor '
    + ' from tbl_cd_cash_transactions cdt ' +
    ' left join tbl_cd cd on cd.id=cdt.id_cashDesk ' +
    ' left join tbl_users us on cdt.id_user=us.id ' +
    ' left join tbl_difference_categories cats on cats.id=cdt.id_category_diff_s '
    + ' left join tbl_users usexp on cdt.id_explanation_supervisor  =usexp.id '
    + ' where  cdt.type = 3  and ' + xQueryData + xQueryTime +
    ' and cdt.difference <> 0 ' +
    ' group by cdt.id,cd.cd_name ,us.first_name,us.last_name,cats.name,usexp.first_name,usexp.last_name ';

  if PgQuery_List.Active then
  begin
    PgQuery_List.Close;
  end;
  PgQuery_List.SQL.Clear;
  PgQuery_List.SQL.Add(xQuery);
  PgQuery_List.Open;
  try
    PgQuery_List.Open;
  except
    on E: Exception do
    begin
      HandleException(E, 'TShiftsExplanation.RefreshShifts');
    end;
  end;
end;

// ##############################################################################

procedure TShiftsExplanation.cxDBLookupComboBox_ShiftsCategoryEnter
  (Sender: TObject);
begin
  inherited;
  PgQuery_CategoryShifts.Active := false;
  PgQuery_CategoryShifts.Active := true;
end;

// ##############################################################################

procedure TShiftsExplanation.cxDBTreeList_ReportsShiftsClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  xExplanation: string;
  xCategory_diff: string;
begin
  inherited;
  PgQuery_CategoryShifts.Active := false;
  cxDBLookupComboBox_ShiftsCategory.ItemIndex := -1;
  Memo_Explanation.Text := EmptyStr;
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsShifts.DataController;
  if Assigned(cxDBTreeList_ReportsShifts.FocusedNode) then
  begin
    SelectedRow := cxDBTreeList_ReportsShifts.FocusedNode.AbsoluteIndex;

    if (SelectedRow >= 0) then
    begin
      xExplanation := VarToStr(DC.Values[SelectedRow, 13]);
      xCategory_diff := VarToStr(DC.Values[SelectedRow, 12]);
      Memo_Explanation.Text := xExplanation;
      if trim(xCategory_diff) <> '' then
      begin
        xQuery := 'Select id, name from tbl_difference_categories  where id=%s';
        xQuery := format(xQuery, [xCategory_diff]);
        if PgQuery_CategoryShifts.Active then
          PgQuery_CategoryShifts.Close;
        PgQuery_CategoryShifts.SQL.Clear;
        PgQuery_CategoryShifts.SQL.Add(xQuery);

        try
          PgQuery_CategoryShifts.Open();
          cxDBLookupComboBox_ShiftsCategory.EditValue := xCategory_diff;
        except
          on E: Exception do
          begin
            HandleException(E,
              'TShiftsExplanation.cxDBTreeList_ReportsShiftsClick');
          end;
        end;
      end;
    end;
  end;
end;

// ##############################################################################

destructor TShiftsExplanation.Destroy;
begin

  inherited;
end;

// ##############################################################################

procedure TShiftsExplanation.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList_ReportsShifts.Count>0 then  begin
   TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList_ReportsShifts);
  end;
end;

// ##############################################################################

procedure TShiftsExplanation.cxButton_SaveClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  xId: string;
  xIdUser: string;
begin
  inherited;
  if CheckSaveShifts then
  begin
    SelectedRow := -1;
    DC := cxDBTreeList_ReportsShifts.DataController;
    if Assigned(cxDBTreeList_ReportsShifts.FocusedNode) then
    begin
      SelectedRow := cxDBTreeList_ReportsShifts.FocusedNode.AbsoluteIndex;
      if (SelectedRow >= 0) then
      begin
        xId := VarToStr(DC.Values[SelectedRow, 0]);
        if PgQuery_Execute.Active then
          PgQuery_Execute.Close;
        PgQuery_Execute.SQL.Clear;
        xQuery := 'Select id  from tbl_users where user_name=''%s''';

        xQuery := format(xQuery, [frmMain.CurrentUserName]);
        PgQuery_Execute.SQL.Add(xQuery);

        try
          PgQuery_Execute.Open;
          xIdUser := 'NULL';
          if PgQuery_Execute.RecordCount > 0 then
          begin
            xIdUser := PgQuery_Execute.FieldByName('id').AsString;
          end;
        except
          on E: Exception do
          begin
            HandleException(E,
              'TShiftsExplanation.cxButton_valuesCategoryClick()_id');
          end;
        end;

        xQuery := ' Update tbl_cd_cash_transactions set explanation_supervisor=''%s'' ,'
          + ' id_category_diff_s=%s, id_explanation_supervisor=%s where id=%s';

        xQuery := format(xQuery, [Memo_Explanation.Text,
          cxDBLookupComboBox_ShiftsCategory.EditValue, xIdUser, xId]);

        if PgQuery_Execute.Active then
          PgQuery_Execute.Close;
        PgQuery_Execute.SQL.Clear;
        PgQuery_Execute.SQL.Add(xQuery);
        try
          PgQuery_Execute.Execute;
          PgQuery_List.Refresh;
        except
          on E: Exception do
          begin
            HandleException(E,
              'TShiftsExplanation.cxButton_valuesCategoryClick()_exec');
          end;
        end;
        cxDBLookupComboBox_ShiftsCategory.ItemIndex:=-1;
        Memo_Explanation.Text:= EmptyStr;
      end
      else
      begin
        Information('Warning', 'You must check the list name field.');
      end;
    end;
  end;
end;

// ##############################################################################

function TShiftsExplanation.CheckSaveShifts: boolean;
begin
  result := true;
  if cxDBLookupComboBox_ShiftsCategory.ItemIndex = -1 then
  begin
    result := false;
    Information('Warning', 'You must fill the category shifts name field.');
    if cxDBLookupComboBox_ShiftsCategory.CanFocus then
      cxDBLookupComboBox_ShiftsCategory.SetFocus;
  end;
  if result then
  begin
    if trim(Memo_Explanation.Text) = '' then
    begin
      result := false;
      Information('Warning', 'You must fill the Explanation name field.');
      if Memo_Explanation.CanFocus then
        Memo_Explanation.SetFocus;
    end;
  end;
end;
// ##############################################################################

end.
