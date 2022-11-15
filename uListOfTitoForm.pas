unit uListOfTitoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxCheckBox, Vcl.Menus, DBAccess,
  PgAccess, MemDS, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxCalc;

type
  TListOfTitoForm = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1selected: TcxGridDBColumn;
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
    cxGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    cxCheckBox1: TcxCheckBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListOfTitoForm: TListOfTitoForm;

implementation

uses
  uFrmMain;

{$R *.dfm}

procedure TListOfTitoForm.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TListOfTitoForm.cxButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TListOfTitoForm.cxCheckBox1Click(Sender: TObject);
begin

  cxGrid1DBTableView1.DataController.Post(True);

  frmMain.ExecSQL
  (
    'update cd_ext_transactions ' +
    'set selected = ' + frmMain.IIf(cxCheckBox1.Checked, 'true', 'false')
  );

  PgQuery1.Active := False;
  PgQuery1.Active := True;

end;

end.
