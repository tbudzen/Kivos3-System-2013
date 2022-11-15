unit uListOfCashDeskUsersFrame;

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
  cxTL;

type
  TListOfCashDeskUsersFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnAddCashDeskUser: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1user_name: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    procedure btnAddCashDeskUserClick(Sender: TObject);
    procedure btnModifyCashDeskUserClick(Sender: TObject);
    procedure btnDeleteCashDeskUserClick(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfCashDeskUsersFrame: TListOfCashDeskUsersFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddUserToCashDeskFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfCashDeskUsersFrame.btnAddCashDeskUserClick(Sender: TObject);
var
  F: TAddUserToCashDeskFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(66));

  F := TAddUserToCashDeskFrame(frmMain.CurrentFrame());

end;

procedure TListOfCashDeskUsersFrame.btnDeleteCashDeskUserClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr: WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow > 0) then
  begin

    if Question('You are about to delete cash desk user - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_cd_users WHERE ' + 'id_cashdesk = ''' +
        VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]) +
        ''' AND ' + 'id_user = ''' +
        VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values
        [2]) + '''';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfCashDeskUsersFrame.btnDeleteUserClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the cash desk user to delete.');

  end;

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TListOfCashDeskUsersFrame.btnModifyCashDeskUserClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddUserToCashDeskFrame;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame('Add user to cash desk');

  F := TAddUserToCashDeskFrame(frmMain.CurrentFrame);

end;

constructor TListOfCashDeskUsersFrame.Create(AOwner: TComponent);
begin
  inherited;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TListOfCashDeskUsersFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
