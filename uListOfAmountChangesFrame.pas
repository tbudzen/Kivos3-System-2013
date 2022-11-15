unit uListOfAmountChangesFrame;

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
  TListOfAmountChangesFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyAmountChange: TcxButton;
    btnAddAmountChange: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnDeleteAmountChange: TcxButton;
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
    procedure btnAddAmountChangeClick(Sender: TObject);
    procedure btnModifyAmountChangeClick(Sender: TObject);
    procedure btnDeleteAmountChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListOfAmountChangesFrame: TListOfAmountChangesFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddAmountChangeFrame;

{$R *.dfm}

procedure TListOfAmountChangesFrame.btnAddAmountChangeClick(Sender: TObject);
var
  F : TAddAmountChangeFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame('Add amount change');

  F := TAddAmountChangeFrame(frmMain.CurrentFrame());

  F.btnAddAmount.Show();
  F.btnModifyAmount.Hide();

end;

procedure TListOfAmountChangesFrame.btnDeleteAmountChangeClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow > 0) then
  begin

    if Question('You are about to delete amount change - are you sure ?') then
    begin

      //QueryStr := 'DELETE FROM tbl_users WHERE user_name = ''' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '''';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfAmountChangesFrame.btnDeleteUserClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the amount change to delete.');

  end;

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TListOfAmountChangesFrame.btnModifyAmountChangeClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddAmountChangeFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow > 0) then
  begin

    frmMain.OpenFrame('Add amount change');

    F := TAddAmountChangeFrame(frmMain.CurrentFrame);

    F.btnAddAmount.Hide();
    F.btnModifyAmount.Show();

  end
  else
  begin

    Information('Warning', 'Please select the amount change to modify.');

  end;
end;

end.
