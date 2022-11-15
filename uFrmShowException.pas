unit uFrmShowException;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons, Vcl.ComCtrls;

type
  TfrmShowException = class(TForm)
    lbHeader: TLabel;
    btnClose: TcxButton;
    Image1: TImage;
    edtMessage: TRichEdit;
    btnSendBugReport: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSendBugReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    From : String;
    ExceptionMessage : String
  end;

var
  frmShowException: TfrmShowException;

implementation

{$R *.dfm}

procedure TfrmShowException.btnCloseClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmShowException.btnSendBugReportClick(Sender: TObject);
begin
  // TO DO
end;

procedure TfrmShowException.FormShow(Sender: TObject);
begin
  lbHeader.Caption := 'Exception at ' + From;
  edtMessage.Text := ExceptionMessage;
  Beep();
end;

end.
