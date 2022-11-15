unit uCdCountInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseDialog, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, PgAccess, MemDS, cxLabel, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TCdCountInputForm = class(TfrmBaseDialog)
    lbl_1: TcxLabel;
    q_cd_count_value: TPgQuery;
    ds_cd_count_value: TPgDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lbl_2: TcxLabel;
    cxGrid1DBTableView1value_name: TcxGridDBColumn;
    cxGrid1DBTableView1multiplier: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    col_count: TcxGridDBColumn;
    PgUpdateSQL1: TPgUpdateSQL;
    col_val: TcxGridDBColumn;
    procedure q_cd_count_valueAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CdCountInputForm: TCdCountInputForm;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem;

procedure TCdCountInputForm.FormShow(Sender: TObject);
var R: TRect;
begin
  inherited;
  SystemParametersInfo(SPI_GETWORKAREA, 0, @R, 0);
  top := 0;
  height := R.Bottom-R.Top;
end;

procedure TCdCountInputForm.q_cd_count_valueAfterPost(DataSet: TDataSet);
begin
  inherited;
  q_cd_count_value.Refresh;
end;

end.
