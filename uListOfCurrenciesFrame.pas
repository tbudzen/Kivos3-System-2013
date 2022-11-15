unit uListOfCurrenciesFrame;

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
  TListOfCurrenciesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyCurrency: TcxButton;
    btnAddCurrency: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteCurrency: TcxButton;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
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
    cxGrid1DBTableView1id: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    procedure btnAddCurrencyClick(Sender: TObject);
    procedure btnModifyCurrencyClick(Sender: TObject);
    procedure btnDeleteCurrencyClick(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfCurrenciesFrame: TListOfCurrenciesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddCurrencyFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfCurrenciesFrame.btnAddCurrencyClick(Sender: TObject);
var
  F : TAddCurrencyFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(55));

  F := TAddCurrencyFrame(frmMain.CurrentFrame());

  F.btnAddCurrency.Show();
  F.btnModifyCurrency.Hide();

  F.edId.Enabled := False;

end;

procedure TListOfCurrenciesFrame.btnDeleteCurrencyClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete currency - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_currencies WHERE id = ' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfCurrenciesFrame.btnDeleteCurrencyClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the currency to delete.');

  end;

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TListOfCurrenciesFrame.btnModifyCurrencyClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddCurrencyFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(55));

    F := TAddCurrencyFrame(frmMain.CurrentFrame);

    F.btnAddCurrency.Hide();
    F.btnModifyCurrency.Show();

    F.edId.Enabled := False;

  F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
  F.edCurrencyName.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
  F.edCurrencySymbol.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);
  F.edCurrencyDescription.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[3]);

  end
  else
  begin

    Information('Warning', 'Please select the currency to modify.');

  end;
end;

constructor TListOfCurrenciesFrame.Create(AOwner: TComponent);
begin
  inherited;
  Exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfCurrenciesFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
