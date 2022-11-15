unit uAddMultipleTransactionFrame;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  cxMemo, cxLabel, cxTextEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, DBAccess, PgAccess, MemDS, cxGroupBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, uDataBase;

type
  TAddMultipleTransactionFrame = class(TBaseFrame)
    btnModifyMultipleTransaction: TcxButton;
    btnAddMultipleTransaction: TcxButton;
    btnCancel: TcxButton;
    edId: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    edName: TcxTextEdit;
    cxLabel1: TcxLabel;
    mDescription: TcxMemo;
    cbMustBeBalanced: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    PgQuery3: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgDataSource2: TPgDataSource;
    PgDataSource3: TPgDataSource;
    PgSQL1: TPgSQL;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1order_id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxGridDBTableView2id: TcxGridDBColumn;
    PgQuery4: TPgQuery;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
    cxGrid1DBTableView1account_id_to: TcxGridDBColumn;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGridDBTableView2order_id: TcxGridDBColumn;
    cxGridDBTableView2name: TcxGridDBColumn;
    cxGridDBTableView2symbol: TcxGridDBColumn;
    cxGridDBTableView2account_id_to: TcxGridDBColumn;
    cxGridDBTableView1account_id_to: TcxGridDBColumn;
    cxGridDBTableView1symbol: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    cbPrintDirect: TcxCheckBox;
    cxLabel10: TcxLabel;
    cbHowManyCopies: TcxComboBox;
    cxLabel11: TcxLabel;
    cbReport: TcxComboBox;
    procedure edNameExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyMultipleTransactionClick(Sender: TObject);
    procedure btnAddMultipleTransactionClick(Sender: TObject);
    procedure cbPrintDirectClick(Sender: TObject);
  private

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ValidateFields(): Boolean;
    procedure RefreshReports;
  end;

var
  AddMultipleTransactionFrame: TAddMultipleTransactionFrame;

implementation

uses
  uSystem,
  uFrmMain,
  uExceptions,
  uStrings,
  cxGridDBDataDefinitions, uGlobals;

{$R *.dfm}

constructor TAddMultipleTransactionFrame.Create(AOwner: TComponent);
begin
  inherited;
  RefreshReports;
end;

destructor TAddMultipleTransactionFrame.Destroy;
var
  i: integer;
begin
  for i := 0 to cbReport.Properties.Items.Count - 1 do
  begin
    cbReport.Properties.Items.Objects[i].Free;
  end;
  inherited;
end;

function TAddMultipleTransactionFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if (edName.Text = '') then
  begin
    Information('Warning',
      'You must fill the multiple transaction name field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddMultipleTransactionFrame.btnAddMultipleTransactionClick
  (Sender: TObject);
var
  QueryStr: WideString;
  xId_report: integer;
begin

  if not ValidateFields() then
    Exit;

  if cbReport.ItemIndex <> -1 then
  begin
    xId_report := Tid(cbReport.Properties.Items.Objects[cbReport.ItemIndex]).id;
  end
  else
  begin
    xId_report := ckeyNILL;
  end;

  QueryStr := 'UPDATE tbl_multiple_transactions ' + 'SET ' + '  name = ''' +
    edName.Text + ''', ' + '  description = ''' + mDescription.Lines.GetText() +
    ''', ' + '  must_be_balanced = ' + MyBoolToIntStr(cbMustBeBalanced.Checked)
    + ' ,' + '  print_direct=' + MyBoolToIntStr(cbPrintDirect.Checked) + ' ,' +
    '  how_many_copies=' + StringToDataBAse(VarToStr(cbHowManyCopies.EditValue))
    + ',' + '  id_report=' + IntegerToDataBase(xId_report) + ' ' + 'WHERE ' +
    '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning',
          'Transaction with such order id is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddTransactionFrame.btnAddTransactionClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddMultipleTransactionFrame.btnCancelClick(Sender: TObject);
begin

  if btnAddMultipleTransaction.Visible and (edName.Text <> '') then
  begin

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('DELETE FROM tbl_multiple_transactions WHERE name = ''' +
      edName.Text + '''');
    PgSQL1.Execute();

    if edId.Text <> '' then
    begin

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add
        ('DELETE FROM tbl_multiple_transactions_transactions WHERE id_transaction = '
        + edId.Text);
      PgSQL1.Execute();

    end;

    Information('Information', 'Multiple transaction with name = [' +
      edName.Text + '] cancelled (deleted)');

  end;

  SendMainMessage('close|current');

end;

procedure TAddMultipleTransactionFrame.btnModifyMultipleTransactionClick
  (Sender: TObject);
var
  QueryStr: WideString;
  xId_report:Integer;
begin

  if not ValidateFields() then
    Exit;

  if cbReport.ItemIndex <> -1 then
  begin
    xId_report := Tid(cbReport.Properties.Items.Objects[cbReport.ItemIndex]).id;
  end
  else
  begin
    xId_report := ckeyNILL;
  end;

  QueryStr := 'UPDATE tbl_multiple_transactions ' + 'SET ' + '  name = ''' +
    edName.Text + ''', ' + '  description = ''' + mDescription.Lines.GetText() +
    ''', ' + '  must_be_balanced = ' + MyBoolToIntStr(cbMustBeBalanced.Checked)
    + ' ,' + '  print_direct=' + MyBoolToIntStr(cbPrintDirect.Checked) + ' ,' +
    '  how_many_copies=' + StringToDataBAse(VarToStr(cbHowManyCopies.EditValue))
    + ',' + '  id_report=' + IntegerToDataBase(xId_report) +
    ' ' + ' WHERE ' + '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning',
          'Multiple transaction with such name is already created');
        Exit;
      end
      else
      begin
        HandleException(E,
          'TAddMultipleTransactionFrame.btnModifyMultipleTransactionClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddMultipleTransactionFrame.cbPrintDirectClick(Sender: TObject);
begin
  inherited;

  if cbPrintDirect.Checked then
  begin
    cxLabel10.Visible := True;
    cbHowManyCopies.Visible := True;
    cxLabel11.Visible := True;
    cbReport.Visible := True;
  end
  else
  begin
    cxLabel10.Visible := False;
    cbHowManyCopies.Visible := False;
    cxLabel11.Visible := False;
    cbReport.Visible := False;
  end;
end;

procedure TAddMultipleTransactionFrame.cxButton1Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr := 'INSERT INTO tbl_multiple_transactions_transactions ' +
      '(id_multiple_transaction, id_transaction, direction) ' + 'VALUES ' + '('
      + VarToStr(edId.Text) + ', ' +
      VarToStr(cxGridDBTableView1.ViewData.Rows[SelectedRow].Values[0]) + ', ' +
      '1' + ')';

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Transaction is already assigned to this multiple transaction with this direction');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddMultipleTransactionFrame.cxButton1Click()');
        end;
      end;
    end;

    PgQuery2.Active := False;
    PgQuery2.Active := True;

  end;
end;

procedure TAddMultipleTransactionFrame.cxButton2Click(Sender: TObject);
var
  QueryStr, IdStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGrid1DBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    IdStr := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

    QueryStr := 'DELETE FROM tbl_multiple_transactions_transactions ' +
      'WHERE id = ' + IdStr;

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E, 'TAddTransactionFrame.cxButton2Click()');
      end;
    end;

    PgQuery2.Active := False;
    PgQuery2.Active := True;

  end;
end;

procedure TAddMultipleTransactionFrame.cxButton3Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr :=
      'INSERT INTO tbl_multiple_transactions_transactions (id_multiple_transaction, id_transaction, direction) VALUES '
      + '(' + VarToStr(edId.Text) + ', ' +
      VarToStr(cxGridDBTableView1.ViewData.Rows[SelectedRow].Values[0]) + ', ' +
      '2' + ')';

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Transaction is already assigned to this multiple transaction with this direction');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddMultipleTransactionFrame.cxButton3Click()');
        end;
      end;
    end;

    PgQuery3.Active := False;
    PgQuery3.Active := True;

  end;

end;

procedure TAddMultipleTransactionFrame.cxButton4Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView2.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr := 'DELETE FROM tbl_multiple_transactions_transactions ' +
      'WHERE id = ' + VarToStr(cxGridDBTableView2.ViewData.Rows[SelectedRow]
      .Values[0]);

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E, 'TAddTransactionFrame.cxButton4Click()');
      end;
    end;

    PgQuery3.Active := False;
    PgQuery3.Active := True;

  end;
end;

procedure TAddMultipleTransactionFrame.edNameExit(Sender: TObject);
begin

  if btnModifyMultipleTransaction.Visible then
    Exit;

  if edName.Text = '' then
  begin
    Information('Warning',
      'Please properly fill the name field to initialise multiple transaction');
    edName.SetFocus();
    Exit;
  end;

  // Add empty multiple transaction if not exists

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add('SELECT * FROM tbl_multiple_transactions WHERE name = ''' +
    edName.Text + '''');
  PgSQL1.Execute();
  if (PgSQL1.RowsAffected > 0) then
  begin
    Information('Warning',
      'Multiple transaction with this name has been already created');
    edName.Text := '';
    edName.SetFocus();
    Exit;
  end
  else
  begin
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('INSERT INTO tbl_multiple_transactions (name) VALUES (''' +
      edName.Text + ''')');
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Multiple transaction with this name has been already created');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddMultipleTransactionFrame.edNameExit()');
        end;
      end;
    end;
    Information('Information', 'Multiple transaction with name = [' +
      edName.Text + '] created for edition');

    cxLabel3.Show();
    cxLabel4.Show();
    cxLabel7.Show();
    cxGrid1.Show();
    cxGrid2.Show();
    cxGrid3.Show();
    cxButton1.Show();
    cxButton2.Show();
    cxButton3.Show();
    cxButton4.Show();

    PgQuery4.SQL.Clear();
    PgQuery4.SQL.Add('SELECT id FROM tbl_multiple_transactions WHERE name = '''
      + edName.Text + '''');
    PgQuery4.Active := True;
    PgQuery4.Open();
    if (PgQuery4.RecordCount > 0) then
    begin
      PgQuery4.First();
      edId.Text := PgQuery4.FieldByName('id').AsWideString;
    end
    else
    begin
      Information('Error',
        'Internal error while creating empty multiple transaction');
      edId.Text := '0';
    end;
  end;

  // TODO : Left joins !

  PgQuery2.SQL.Clear();
  PgQuery2.SQL.Add
    ('select mtt.*, t.sort_order, t.name, c.symbol, t.account_id_to ' +
    'from tbl_multiple_transactions_transactions as mtt, tbl_transactions as t, tbl_currencies as c '
    + 'where id_multiple_transaction = ' + edId.Text +
    ' and mtt.direction = 1 and ' +
    '  mtt.id_transaction = t.id and t.id_currency = c.id');
  PgQuery2.Active := False;
  PgQuery2.Active := True;

  PgQuery3.SQL.Clear();
  PgQuery3.SQL.Add
    ('select mtt.*, t.sort_order, t.name, c.symbol, t.account_id_to ' +
    'from tbl_multiple_transactions_transactions as mtt, tbl_transactions as t, tbl_currencies as c '
    + 'where id_multiple_transaction = ' + edId.Text +
    ' and mtt.direction = 2 and ' +
    '  mtt.id_transaction = t.id and t.id_currency = c.id');
  PgQuery3.Active := False;
  PgQuery3.Active := True;

end;

procedure TAddMultipleTransactionFrame.RefreshReports;
var
  xQuery: string;
  xDatasSet: TResultHandle;
  i: integer;
  xid: Tid;
begin
  xQuery := ' Select id, name  from tbl_reports  order by name';
  cbReport.Properties.Items.Clear;
  for i := 0 to cbReport.Properties.Items.Count - 1 do
  begin
    cbReport.Properties.Items.Objects[i].Free;
  end;
  xDatasSet := TResultHandle.Create;
  xDatasSet.ClearResult;
  xDatasSet.Add(xQuery);
  xDatasSet.InvokeSQL;
  xDatasSet.First;
  for i := 0 to xDatasSet.Count - 1 do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := xDatasSet.query.FieldByName('id').AsInteger;
    cbReport.Properties.Items.AddObject(xDatasSet.query.FieldByName('name')
      .AsString, xid);
    xDatasSet.next;
  end;
  xDatasSet.ClearResult;
  xDatasSet.Free;
end;

end.
