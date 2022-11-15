unit uListOfTitoFrame;

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
  cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, PgAccess, MemDS,
  cxCheckBox;

type
  TListOfTitoFrame = class(TBaseFrame)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1generated: TcxGridDBColumn;
    cxGrid1DBTableView1tr_type: TcxGridDBColumn;
    cxGrid1DBTableView1tr_number: TcxGridDBColumn;
    cxGrid1DBTableView1tr_ipaddr: TcxGridDBColumn;
    cxGrid1DBTableView1tr_value: TcxGridDBColumn;
    cxGrid1DBTableView1int_tr_id: TcxGridDBColumn;
    cxGrid1DBTableView1tr_location: TcxGridDBColumn;
    cxGrid1DBTableView1tr_name: TcxGridDBColumn;
    cxGrid1DBTableView1int_cd_id: TcxGridDBColumn;
    cxGrid1DBTableView1selected: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListOfTitoFrame: TListOfTitoFrame;

implementation

{$R *.dfm}

procedure TListOfTitoFrame.cxButton1Click(Sender: TObject);
begin
  inherited;
  Self.Free();
end;

procedure TListOfTitoFrame.cxButton2Click(Sender: TObject);
begin
  inherited;
  Self.Free();
end;

end.
