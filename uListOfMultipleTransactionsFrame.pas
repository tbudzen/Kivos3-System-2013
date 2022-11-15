unit uListOfMultipleTransactionsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
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
  cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.Menus, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, PgAccess,
  MemDS, Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TListOfMultipleTransactionsFrame = class(TBaseFrame)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnAddMultipleTransaction: TcxButton;
    btnModifyMultipleTransaction: TcxButton;
    btnDeleteMultipleTransaction: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    cxGrid1DBTableView1must_be_balanced: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    PopupMenu: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnDeleteMultipleTransactionClick(Sender: TObject);
    procedure btnAddMultipleTransactionClick(Sender: TObject);
    procedure btnModifyMultipleTransactionClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
     constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
  end;

var
  ListOfMultipleTransactionsFrame: TListOfMultipleTransactionsFrame;

implementation

uses
  cxGridDBDataDefinitions,
  uSystem,
  uStrings,
  uExceptions,
  uFrmMain,
  uAddMultipleTransactionFrame, uDataBase, uGlobals, uExportsGrid;

{$R *.dfm}

procedure TListOfMultipleTransactionsFrame.btnAddMultipleTransactionClick
  (Sender: TObject);
var
  F: TAddMultipleTransactionFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(70));

  F := TAddMultipleTransactionFrame(frmMain.CurrentFrame());

  F.btnAddMultipleTransaction.Show();
  F.btnModifyMultipleTransaction.Hide();
  F.cbReport.ItemIndex := -1;

end;

procedure TListOfMultipleTransactionsFrame.btnDeleteMultipleTransactionClick
  (Sender: TObject);
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

    if Question('You are about to delete multiple transaction - are you sure ?')
    then
    begin

      QueryStr := 'DELETE FROM tbl_multiple_transactions WHERE id = ' +
        VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListOfMultipleTransactionsFrame.btnDeleteMultipleTransactionClick()');
        end;
      end;

      QueryStr :=
        'DELETE FROM tbl_cd_multiple_transactions WHERE id_multiple_transaction = '
        + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListOfMultipleTransactionsFrame.btnDeleteMultipleTransactionClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the multiple transaction to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);
end;

procedure TListOfMultipleTransactionsFrame.btnModifyMultipleTransactionClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddMultipleTransactionFrame;
  xQuery: string;
  xDataSet: TResultHandle;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(70));

    F := TAddMultipleTransactionFrame(frmMain.CurrentFrame);

    F.btnAddMultipleTransaction.Hide();
    F.btnModifyMultipleTransaction.Show();

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]);
    F.edName.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[1]);
    F.mDescription.Lines.Clear();
    F.mDescription.Lines.Add(VarToStr(cxGrid1DBTableView1.ViewData.Rows
      [SelectedRow].Values[3]));

    F.PgQuery2.SQL.Clear();
    F.PgQuery2.SQL.Add
      ('select mtt.*, t.sort_order, t.name, c.symbol, t.account_id_to ' +
      'from tbl_multiple_transactions_transactions as mtt, tbl_transactions as t, tbl_currencies as c '
      + 'where id_multiple_transaction = ' + F.edId.Text +
      ' and mtt.direction = 1 and ' +
      '  mtt.id_transaction = t.id and t.id_currency = c.id');
    F.PgQuery2.Active := False;
    F.PgQuery2.Active := True;

    F.PgQuery3.SQL.Clear();
    F.PgQuery3.SQL.Add
      ('select mtt.*, t.sort_order, t.name, c.symbol, t.account_id_to ' +
      'from tbl_multiple_transactions_transactions as mtt, tbl_transactions as t, tbl_currencies as c '
      + 'where id_multiple_transaction = ' + F.edId.Text +
      ' and mtt.direction = 2 and ' +
      '  mtt.id_transaction = t.id and t.id_currency = c.id');
    F.PgQuery3.Active := False;
    F.PgQuery3.Active := True;

    xQuery := ' Select tbl_reports.name, tbl_multiple_transactions.print_direct,'
      + ' tbl_multiple_transactions.how_many_copies ' +
      ' from tbl_multiple_transactions, tbl_reports  ' +
      ' where tbl_reports.id=tbl_multiple_transactions.id_report and tbl_multiple_transactions.id='
      + F.edId.Text;
    xDataSet := TResultHandle.create;
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    xDataSet.InvokeSQL;
    xDataSet.first;
    if xDataSet.count > 0 then
    begin
      F.cbPrintDirect.Checked :=
        boolean(xDataSet.query.FieldByName('print_direct').AsInteger);
      F.cbHowManyCopies.EditValue:= xDataSet.query.FieldByName('how_many_copies').AsInteger  ;
      F.cbReport.ItemIndex:=
      F.cbReport.Properties.Items.IndexOf(xDataSet.query.FieldByName('name')
        .AsString);
    end;
    xDataSet.ClearResult;
    xDataSet.Free;

    F.cxLabel3.Show();
    F.cxLabel4.Show();
    F.cxLabel7.Show();
    F.cxGrid1.Show();
    F.cxGrid2.Show();
    F.cxGrid3.Show();
    F.cxButton1.Show();
    F.cxButton2.Show();
    F.cxButton3.Show();
    F.cxButton4.Show();

  end
  else
  begin

    Information('Warning', 'Please select the multiple transaction to modify.');

  end;
end;

constructor TListOfMultipleTransactionsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel ;

end;

procedure TListOfMultipleTransactionsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
 if cxGrid1DBTableView1.ViewData.RecordCount>0 then  begin
  TExportsGrid.ExportsGridToExcel(cxGrid1);
 end;

end;

end.
