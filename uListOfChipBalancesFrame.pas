unit uListOfChipBalancesFrame;

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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, MemDS,
  cxTL;

type
  TListOfChipBalancesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyChipBalance: TcxButton;
    btnAddChipBalance: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteChipBalance: TcxButton;
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
    PgSQL1: TPgSQL;
    PgQuery1: TPgQuery;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1initial_amount: TcxGridDBColumn;
    cxGrid1DBTableView1present_amount: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1name_1: TcxGridDBColumn;
    procedure btnAddChipBalanceClick(Sender: TObject);
    procedure btnModifyChipBalanceClick(Sender: TObject);
    procedure btnDeleteChipBalanceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListOfChipBalancesFrame: TListOfChipBalancesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddChipBalanceFrame;

{$R *.dfm}

procedure TListOfChipBalancesFrame.btnAddChipBalanceClick(Sender: TObject);
var
  F : TAddChipBalanceFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame('Add chip balance');

  F := TAddChipBalanceFrame(frmMain.CurrentFrame());

  F.btnAddAmount.Show();
  F.btnModifyAmount.Hide();

end;

procedure TListOfChipBalancesFrame.btnDeleteChipBalanceClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete chip balance - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_chip_balances WHERE id = ' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfChipBalancesFrame.btnDeleteChipBalanceClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the user to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TListOfChipBalancesFrame.btnModifyChipBalanceClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddChipBalanceFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame('Add chip balance');

    F := TAddChipBalanceFrame(frmMain.CurrentFrame);

    F.btnAddAmount.Hide();
    F.btnModifyAmount.Show();

    F.edId.Text             := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.cbCategory.Text       := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.cbValue.Text          := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);
    F.edInitialAmount.Text  := StringReplace(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[3]), ',', '.', [rfReplaceAll]);
    F.edPresentAmount.Text  := StringReplace(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[4]), ',', '.', [rfReplaceAll]);

  end
  else
  begin

    Information('Warning', 'Please select the chip balance to modify.');

  end;
end;

end.
