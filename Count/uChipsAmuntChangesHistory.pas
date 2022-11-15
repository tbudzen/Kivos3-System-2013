unit uChipsAmuntChangesHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, PgAccess, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus;

type
  TChipsAmuntChangesHistoryFrame = class(TBaseFrame)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_history: TPgQuery;
    ds_history: TPgDataSource;
    cxGrid1DBTableView1typ: TcxGridDBColumn;
    cxGrid1DBTableView1amount: TcxGridDBColumn;
    cxGrid1DBTableView1datetime: TcxGridDBColumn;
    cxGrid1DBTableView1description: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    exportstoexcel1: TMenuItem;
    procedure exportstoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ChipsAmuntChangesHistoryFrame: TChipsAmuntChangesHistoryFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem, uChipsInitials, uGlobals, uExportsGrid;

{ TChipsAmuntChangesHistoryFrame }

constructor TChipsAmuntChangesHistoryFrame.Create(AOwner: TComponent);
begin
  inherited;
  exportstoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TChipsAmuntChangesHistoryFrame.exportstoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
