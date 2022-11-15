unit uListOfCategoriesFrame;

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
  TListOfCategoriesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyCategory: TcxButton;
    btnAddCategory: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteCategory: TcxButton;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1lg: TcxGridDBColumn;
    cxGrid1DBTableView1drop: TcxGridDBColumn;
    cxGrid1DBTableView1used_in_chip_balance: TcxGridDBColumn;
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
    cxGrid1DBTableView1description: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    expoprttoexcel1: TMenuItem;
    procedure btnAddCategoryClick(Sender: TObject);
    procedure btnModifyCategoryClick(Sender: TObject);
    procedure btnDeleteCategoryClick(Sender: TObject);
    procedure expoprttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfCategoriesFrame: TListOfCategoriesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddCategoryFrame,
  uStrings, uExportsGrid;

{$R *.dfm}

procedure TListOfCategoriesFrame.btnAddCategoryClick(Sender: TObject);
var
  F: TAddCategoryFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(53));

  F := TAddCategoryFrame(frmMain.CurrentFrame());

  F.btnAddCategory.Show();
  F.btnModifyCategory.Hide();

end;

procedure TListOfCategoriesFrame.btnDeleteCategoryClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr: WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete category - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_categories WHERE id = ' +
        VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the category to delete.');

  end;

  frmMain.Refresh(frmMain.Table);

end;

procedure TListOfCategoriesFrame.btnModifyCategoryClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddCategoryFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(53));

    F := TAddCategoryFrame(frmMain.CurrentFrame);

    F.btnAddCategory.Hide();
    F.btnModifyCategory.Show();

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]);
    F.edCategoryName.Text :=
      VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.edCategoryDescription.Text :=
      VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);
    F.cbLg.Checked :=
      MyStrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[3]));
    F.cbDrop.Checked :=
      MyStrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[4]));
    F.cbUsedInChipBalance.Checked :=
      MyStrToBool(VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
      .Values[5]));

  end
  else
  begin

    Information('Warning', 'Please select the category to modify.');

  end;
end;

constructor TListOfCategoriesFrame.Create(AOwner: TComponent);
begin
  inherited;
  expoprttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TListOfCategoriesFrame.expoprttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then  begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
