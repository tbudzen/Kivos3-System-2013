unit uListOfDifferenceCategoriesFrame;

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
  TListOfDifferenceCategoriesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyDifferenceCategory: TcxButton;
    btnAddDifferenceCategory: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteDifferenceCategory: TcxButton;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
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
    exporttoexcel1: TMenuItem;
    procedure btnAddDifferenceCategoryClick(Sender: TObject);
    procedure btnModifyDifferenceCategoryClick(Sender: TObject);
    procedure btnDeleteDifferenceCategoryClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfDifferenceCategoriesFrame: TListOfDifferenceCategoriesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddDifferenceCategoryFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfDifferenceCategoriesFrame.btnAddDifferenceCategoryClick(
  Sender: TObject);
var
  F : TAddDifferenceCategoryFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(56));

  F := TAddDifferenceCategoryFrame(frmMain.CurrentFrame());

  F.btnAddDifferenceCategory.Show();
  F.btnModifyDifferenceCategory.Hide();

end;

procedure TListOfDifferenceCategoriesFrame.btnDeleteDifferenceCategoryClick(
  Sender: TObject);
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

    if Question('You are about to delete difference category - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_difference_categories WHERE id = ' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfDifferenceCategoriesFrame.btnDeleteDifferenceCategoryClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the difference category to delete.');

  end;

  frmMain.Refresh(frmMain.Table);
end;

procedure TListOfDifferenceCategoriesFrame.btnModifyDifferenceCategoryClick(
  Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddDifferenceCategoryFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(56));

    F := TAddDifferenceCategoryFrame(frmMain.CurrentFrame);

    F.btnAddDifferenceCategory.Hide();
    F.btnModifyDifferenceCategory.Show();

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.edDifferenceCategoryName.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.edDifferenceCategoryDescription.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);

  end
  else
  begin

    Information('Warning', 'Please select the difference category to modify.');

  end;
end;

constructor TListOfDifferenceCategoriesFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfDifferenceCategoriesFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
