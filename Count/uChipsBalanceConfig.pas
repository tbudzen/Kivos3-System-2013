unit uChipsBalanceConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Data.DB, DBAccess, PgAccess,
  MemDS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxContainer, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TChipsBalanceConfigFrame = class(TBaseFrame)
    q_cd: TPgQuery;
    ds_cd: TPgDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lbl_1: TcxLabel;
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    btn_add1: TcxButton;
    btn_add_all: TcxButton;
    btn_remove: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    q_cd_in_balance: TPgQuery;
    ds_cd_in_balance: TPgDataSource;
    cxLabel1: TcxLabel;
    PopupMenuLeft: TPopupMenu;
    PopupMenuRigth: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    exporttoexcel2: TMenuItem;
    procedure btn_add1Click(Sender: TObject);
    procedure btn_removeClick(Sender: TObject);
    procedure btn_add_allClick(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure exporttoexcel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ChipsBalanceConfigFrame: TChipsBalanceConfigFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem, uGlobals, uExportsGrid;

procedure TChipsBalanceConfigFrame.btn_add1Click(Sender: TObject);
begin
  inherited;
  if not q_cd.IsEmpty then
  begin
    q_cd.Edit;
    q_cd.FieldByName('used_in_chip_balance').AsInteger := 1;
    q_cd.Post;
    q_cd.Refresh;
    q_cd_in_balance.Refresh;
  end else
    Information('Configuration of chips balance','Nothing to add!');
end;

procedure TChipsBalanceConfigFrame.btn_add_allClick(Sender: TObject);
begin
  inherited;
  q_cd.DisableControls;
  while not q_cd.eof do
  begin
    q_cd.Edit;
    q_cd.FieldByName('used_in_chip_balance').AsInteger := 1;
    q_cd.Post;
    q_cd.Next;
  end;
  q_cd.EnableControls;
  q_cd_in_balance.Refresh;
  q_cd.Refresh;
end;

procedure TChipsBalanceConfigFrame.btn_removeClick(Sender: TObject);
begin
  inherited;
  if not q_cd_in_balance.IsEmpty then
  begin
    q_cd_in_balance.Edit;
    q_cd_in_balance.FieldByName('used_in_chip_balance').AsInteger := 0;
    q_cd_in_balance.Post;
    q_cd_in_balance.Refresh;
    q_cd.Refresh;
  end else
    Information('Configuration of chips balance','Nothing to remove!');
end;

constructor TChipsBalanceConfigFrame.Create(AOwner: TComponent);
begin
  inherited;
  q_cd_in_balance.Open;
  q_cd.Open;
  Exporttoexcel1.Caption:=cPopMenu_eksport_toExcel;
  exporttoexcel2.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TChipsBalanceConfigFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0  then  begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

procedure TChipsBalanceConfigFrame.exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView1.ViewData.RecordCount>0 then begin
    TExportsGrid.ExportsGridToExcel(cxGrid2);
  end;
end;

end.
