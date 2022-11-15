unit uListOfCashTransactionsCashDesksFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, MemDS;

type
  TListOfCashTransactionsCashDesksFrame = class(TBaseFrame)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnAddCashTransaction: TcxButton;
    btnModifyCashTransaction: TcxButton;
    btnDeleteCashTransaction: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgSQL1: TPgSQL;
    procedure btnAddCashTransactionClick(Sender: TObject);
    procedure btnDeleteCashTransactionClick(Sender: TObject);
    procedure btnModifyCashTransactionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListOfCashTransactionsCashDesksFrame: TListOfCashTransactionsCashDesksFrame;

implementation

uses
  uAddCashTransactionCashDeskFrame,
  uFrmMain,
  uSystem,
  cxGridDBDataDefinitions;

{$R *.dfm}

procedure TListOfCashTransactionsCashDesksFrame.btnAddCashTransactionClick(
  Sender: TObject);
var
  F : TAddCashTransactionCashDeskFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame('Add cash transaction - cash desk');

  F := TAddCashTransactionCashDeskFrame(frmMain.CurrentFrame());

  F.btnAddCashTransactionCashDesk.Show();
  F.btnModifyCashTransactionCashDesk.Hide();

end;

procedure TListOfCashTransactionsCashDesksFrame.btnModifyCashTransactionClick(
  Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddCashTransactionCashDeskFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame('Add cash transaction - cash desk');

    F := TAddCashTransactionCashDeskFrame(frmMain.CurrentFrame);

    F.btnAddCashTransactionCashDesk.Hide();
    F.btnModifyCashTransactionCashDesk.Show();

  end
  else
  begin

    Information('Warning', 'Please select the cash transaction to modify.');

  end;

end;

procedure TListOfCashTransactionsCashDesksFrame.btnDeleteCashTransactionClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr, TransactionIdStr : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete cash transaction - are you sure ?') then
    begin

      TransactionIdStr := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add('DELETE FROM tbl_transactions WHERE id = ' + TransactionIdStr);
      PGSQL1.Execute();

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the cash transaction to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);
end;

end.
