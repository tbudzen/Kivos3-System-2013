unit uFrmCashierRelogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxLabel,
  Data.DB, DBAccess, PgAccess, MemDS;

type
  TfrmCashierRelogin = class(TForm)
    lbUser: TcxLabel;
    lbPassword: TcxLabel;
    edPassword: TcxMaskEdit;
    btnCancel: TcxButton;
    btnLogin: TcxButton;
    lbLogin: TLabel;
    PgQuery6: TPgQuery;
    PgDataSource8: TPgDataSource;
    PgDataSource1: TPgDataSource;
    PgQuery1: TPgQuery;
    cbCashier: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashierRelogin: TfrmCashierRelogin;

implementation

{$R *.dfm}

procedure TfrmCashierRelogin.FormShow(Sender: TObject);
begin
  edPassword.Text := '';
  cbCashier.SetFocus;
  cbCashier.ItemIndex := 0;
end;

end.
