unit uListOfCashDesksFrame;

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
  cxTL, cxCheckBox;

type
  TListOfCashDesksFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyCashDesk: TcxButton;
    btnAddCashDesk: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteCashDesk: TcxButton;
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
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1account_id: TcxGridDBColumn;
    PgQuery1: TPgQuery;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1is_a_table: TcxGridDBColumn;
    cxGrid1DBTableView1always_active: TcxGridDBColumn;
    cxGrid1DBTableView1must_open_daily: TcxGridDBColumn;
    cxGrid1DBTableView1allow_close: TcxGridDBColumn;
    cxGrid1DBTableView1used_in_chip_balance: TcxGridDBColumn;
    cxGrid1DBTableView1default_carryover: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    procedure btnAddCashDeskClick(Sender: TObject);
    procedure btnModifyCashDeskClick(Sender: TObject);
    procedure btnDeleteCashDeskClick(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfCashDesksFrame: TListOfCashDesksFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddCashDeskFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfCashDesksFrame.btnAddCashDeskClick(Sender: TObject);
var
  F: TAddCashDeskFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(52));

  F := TAddCashDeskFrame(frmMain.CurrentFrame());

  F.btnAddCashDesk.Show();
  F.btnModifyCashDesk.Hide();

end;

procedure TListOfCashDesksFrame.btnDeleteCashDeskClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr: WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete cash desk - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_cd WHERE id = ' +
        VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfCashDesksFrame.btnDeleteCashDeskClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the cash desk to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TListOfCashDesksFrame.btnModifyCashDeskClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddCashDeskFrame;
  xQuery: string;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(52));

    F := TAddCashDeskFrame(frmMain.CurrentFrame);

    F.btnAddCashDesk.Hide();
    F.btnModifyCashDesk.Show();

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]);
    F.edName.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[1]);
    F.cbAccount.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[2]);
    F.cbWorkstation.Text :=
      VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[3]);
    F.edDescription.Text :=
      VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[4]);

    F.cbIsATable.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[5]));
    F.cbAlwaysActive.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[6]));
    F.cbMustOpenDaily.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[7]));
    F.cbAllowClose.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[8]));
    F.cbUsedInChipBalance.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[9]));
    F.cbDefaultCarryover.Checked :=
      StrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[10]));

    // ----------------------------------------------------------------------

    F.PgQuery7.SQL.Clear();
    xQuery := 'select ' + '  cdv.*, v.name, cat.name ' + 'from ' +
      '  tbl_cd_values as cdv, ' + '  tbl_values as v, ' +
      '  tbl_categories as cat ' + 'where ' + '  cdv.id_value = v.id and ' +
      '  cdv.id_cashdesk = ' + F.edId.Text + ' and ' +
      '  cdv.id_category = cat.id ' + '  order by cdv.ord asc ';

    F.PgQuery7.SQL.Add(xQuery);
    F.PgQuery7.Active := False;
    F.PgQuery7.Active := True;

    F.PgQuery8.SQL.Clear();
    F.PgQuery8.SQL.Add('select ' +
      '  cdt.*, t.sort_order, t.name, t.account_id_to, curr.symbol ' + 'from ' +
      '  tbl_cd_transactions as cdt, ' + '  tbl_transactions as t, ' +
      '  tbl_currencies as curr ' + 'where ' +
      '  cdt.id_transaction = t.id and ' + '  cdt.id_cashdesk = ' + F.edId.Text
      + ' and ' + '  t.id_currency = curr.id');
    F.PgQuery8.Active := False;
    F.PgQuery8.Active := True;

    F.PgQuery9.SQL.Clear();
    F.PgQuery9.SQL.Add('select ' + '  cdmt.*, mt.name ' + 'from ' +
      '  tbl_cd_multiple_transactions as cdmt, ' +
      '  tbl_multiple_transactions as mt ' + 'where ' +
      '  cdmt.id_multiple_transaction = mt.id and ' + '  cdmt.id_cashdesk = ' +
      F.edId.Text);
    F.PgQuery9.Active := False;
    F.PgQuery9.Active := True;

    F.PgQuery22.SQL.Clear();
    F.PgQuery22.SQL.Add('  select ' + '    '''' as parent_id, ' +
      '    c.name as id, ' + '    c.id as id_category, ' +
      '    -1 as value_id, ' + '    cdmc.id_cashdesk, ' +
      '    '''' as id_account_open, ' + '    '''' as id_account_diff_open, ' +
      '    '''' as id_account_close, ' + '    '''' as id_account_diff_close, ' +
      '    0 as carryover, ' + '    0 as automatic, ' +
      '    0 as fixed_amount, ' + '    cdmc.id as id_move_category ' + '  from '
      + '    tbl_cd_move_categories as cdmc ' +
      '    left join tbl_categories as c on cdmc.id_category = c.id ' +
      '  where  ' + '    cdmc.id_cashdesk = ' + F.edId.Text + ' and ' +
      'exists ' + '( ' +
      '  select cdmcv.id_cd_move_category from tbl_cd_move_categories_values as cdmcv'
      + '  where ' + '    cdmcv.id_cashdesk = ' + F.edId.Text + ' and ' +
      '    cdmcv.id_cd_move_category = id_category ' + ') ' +
      '  group by c.name, c.id, cdmc.id_cashdesk, cdmc.id ' + '' + 'union ' + ''
      + 'select ' + '  c.name as parent_id, ' + '  v.name as id, ' +
      '  c.id as id_category, ' + '  cdmcv.id as value_id, ' +
      '  cdmcv.id_cashdesk, ' + '  cdmcv.id_account_open, ' +
      '  cdmcv.id_account_diff_open, ' + '  cdmcv.id_account_close, ' +
      '  cdmcv.id_account_diff_close, ' + '  cdmcv.carryover, ' +
      '  cdmcv.automatic, ' + '  cdmcv.fixed_amount, ' +
      '  cdmcv.id_cd_move_category as id_move_category ' + 'from ' +
      '  tbl_cd_move_categories_values as cdmcv, ' +
      '  tbl_categories as c left join tbl_values as v on v.id_category = c.id '
      + 'where ' + '  cdmcv.id_cashdesk = ' + F.edId.Text + ' and ' +
      '  cdmcv.id_cd_move_category = c.id and ' + '  cdmcv.id_cd_value = v.id');
    F.PgQuery22.Active := False;
    F.PgQuery22.Active := True;

    F.cxPageControl1.Visible := True;

  end
  else
  begin

    Information('Warning', 'Please select the cash desk to modify.');

  end;
end;

constructor TListOfCashDesksFrame.Create(AOwner: TComponent);
begin
  inherited;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TListOfCashDesksFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
