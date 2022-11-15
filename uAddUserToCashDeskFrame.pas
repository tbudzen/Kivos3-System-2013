unit uAddUserToCashDeskFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  Vcl.StdCtrls, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, PgAccess, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBAccess, MemDS;

type
  TAddUserToCashDeskFrame = class(TBaseFrame)
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1user_name: TcxGridDBColumn;
    PgDataSource2: TPgDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cbCashDesk: TcxDBLookupComboBox;
    PgDataSource3: TPgDataSource;
    PgTable3: TPgTable;
    PgDataSource4: TPgDataSource;
    PgTable4: TPgTable;
    PgQuery1: TPgQuery;
    cxGrid1DBTableView1user_name: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    PopupMenu_USers: TPopupMenu;
    PopupMenu_AllUsers: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    Exporttoexcel2: TMenuItem;
    procedure btnCancelClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cbCashDeskPropertiesEditValueChanged(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure Exporttoexcel2Click(Sender: TObject);
  private
     constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
  end;

var
  AddUserToCashDeskFrame: TAddUserToCashDeskFrame;

implementation

uses
  uSystem, uFrmMain, uExceptions, cxGridDBDataDefinitions, uGlobals, uExportsGrid;

{$R *.dfm}

procedure TAddUserToCashDeskFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddUserToCashDeskFrame.cbCashDeskPropertiesEditValueChanged(
  Sender: TObject);
var
  QueryStr : WideString;
begin

  if VarToStr(cbCashDesk.EditValue) <> '' then
  begin

  QueryStr :=
    'SELECT cd_u.*, u.user_name ' +
    'FROM tbl_cd_users as cd_u, tbl_users as u ' +
    'WHERE cd_u.id_user = u.id AND id_cashdesk = ' +
    VarToStr(cbCashDesk.EditValue);

  PgQuery1.SQL.Clear();
  PgQuery1.SQL.Add(QueryStr);

  PgQuery1.Active := False;
  PgQuery1.Active := True;

  end;

  Self.Refresh();

end;

constructor TAddUserToCashDeskFrame.Create(AOwner: TComponent);
begin
  inherited;
  Exporttoexcel2.Caption:=  cPopMenu_eksport_toExcel;
  Exporttoexcel1.Caption:=  cPopMenu_eksport_toExcel;
end;

procedure TAddUserToCashDeskFrame.cxButton1Click(Sender: TObject);
var
  QueryStr : WideString;
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

  QueryStr :=
    'INSERT INTO tbl_cd_users (id_cashdesk, id_user) VALUES (' +
    VarToStr(cbCashDesk.EditValue) + ', ' +
    VarToStr(cxGridDBTableView1.DataController.Values[SelectedRow, 0]) +
    ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'User is already assigned to this cashdesk');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddUserToCashDeskFrame.cxButton1Click()');
      end;
    end;
  end;

  PgQuery1.Active := False;
  PgQuery1.Active := True;

  end;

end;

procedure TAddUserToCashDeskFrame.cxButton2Click(Sender: TObject);
var
  QueryStr : WideString;
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGrid1DBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

  QueryStr :=
    'DELETE FROM tbl_cd_users WHERE id = ' +
    VarToStr(cxGrid1DBTableView1.DataController.Values[SelectedRow, 0]);

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddUserToCashDeskFrame.cxButton2Click()');
    end;
  end;

  PgQuery1.Active := False;
  PgQuery1.Active := True;

  end;

end;

procedure TAddUserToCashDeskFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

procedure TAddUserToCashDeskFrame.Exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid2);
  end;
end;

end.
