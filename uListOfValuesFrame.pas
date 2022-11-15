unit uListOfValuesFrame;

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
  cxTL,
  cxGridDBDataDefinitions, cxTextEdit;

type
  TListOfValuesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyValue: TcxButton;
    btnAddValue: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteValue: TcxButton;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1multiplier: TcxGridDBColumn;
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
    PgQuery1: TPgQuery;
    cxGrid1DBTableView1name_1: TcxGridDBColumn;
    cxGrid1DBTableView1name_2: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
    cxGrid1DBTableView1sort_order: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    PopupMenu: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnAddValueClick(Sender: TObject);
    procedure btnModifyValueClick(Sender: TObject);
    procedure btnDeleteValueClick(Sender: TObject);
    procedure cxGrid1DBTableView1sort_orderPropertiesEditValueChanged(
      Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
   constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfValuesFrame: TListOfValuesFrame;

implementation

uses
  uFrmMain, uGlobals, uAddValueFrame,
  uSystem,
  uExceptions, uExportsGrid;

{$R *.dfm}

procedure TListOfValuesFrame.btnAddValueClick(Sender: TObject);
var
  F : TAddValueFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(63));

  F := TAddValueFrame(frmMain.CurrentFrame());

  F.btnAddValue.Show();
  F.btnModifyValue.Hide();
  F.cbCurrency.EditValue:= DefaultCurrency;

end;

procedure TListOfValuesFrame.btnDeleteValueClick(Sender: TObject);
var
  SelectedRow, ValueCount : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
  IdValue : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete value [' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]) + '] - are you sure ?') then
    begin

      IdValue := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      // Check if was used in tbl_cd_cash_transactions_subt_categories_values

      ValueCount :=
        StrToInt(frmMain.GetFieldAsString
        (
          'select count(*) as cnt ' +
          'from tbl_cd_cash_transactions_subt_categories_values ' +
          'where id_cd_value = ' + IdValue,
          'cnt'
        ));

      if ValueCount = 0 then // we can delete
      begin

        frmMain.ExecSQL('delete from tbl_values where id = ' + IdValue);

        frmMain.ExecSQL('delete from tbl_cd_values where id_value = ' + IdValue);

        frmMain.ExecSQL('delete from tbl_transaction_values id_value = ' + IdValue);

        cxGrid1DBTableView1.DataController.DataSet.Refresh();

      end
      else
      begin

        Information('Warning', 'Selected value was used in cash transaction - cannot be deleted');

      end;

    end;
  end
  else
  begin

    Information('Warning', 'Please select the value to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TListOfValuesFrame.btnModifyValueClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddValueFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(63));

    F := TAddValueFrame(frmMain.CurrentFrame);

    F.btnAddValue.Hide();
    F.btnModifyValue.Show();

    F.edId.Text               := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.edValueName.Text        := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);
    F.edValueMultiplier.Text  := VarToStr(StringReplace(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[3], ',', '.', [rfReplaceAll]));
    F.cbCategory.Text         := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[4]);
    F.cbUnit.Text             := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[5]);
    F.cbCurrency.Text         := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[6]);
    F.edValueDescription.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[7]);

  end
  else
  begin

    Information('Warning', 'Please select the value to modify.');

  end;
end;

constructor TListOfValuesFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfValuesFrame.cxGrid1DBTableView1sort_orderPropertiesEditValueChanged(
  Sender: TObject);
begin

  PgQuery1.Active := False;
  PgQuery1.Active := True;

end;

procedure TListOfValuesFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then   begin
    TExportsGrid.ExportsGridToExcel(cxGrid1) ;
  end;

end;

end.
