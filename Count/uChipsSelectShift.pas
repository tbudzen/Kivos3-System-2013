unit uChipsSelectShift;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.Menus,
  Data.DB, DBAccess, PgAccess, MemDS, Vcl.StdCtrls, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TChipsSelectShiftFrame = class(TBaseFrame)
    lbl_gdate: TcxLabel;
    edt_gdate: TcxDateEdit;
    btn_refr: TcxButton;
    btn_recreate: TcxButton;
    q_tbl_chip_shifts: TPgQuery;
    ds_tbl_chip_shifts: TPgDataSource;
    q_tmp: TPgQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1datetime: TcxGridDBColumn;
    cxGrid1DBTableView1name_shift: TcxGridDBColumn;
    cxGrid1DBTableView1cnt: TcxGridDBColumn;
    cxButton2: TcxButton;
    procedure btn_refrClick(Sender: TObject);
    procedure btn_recreateClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ChipsSelectShiftFrame: TChipsSelectShiftFrame;

implementation

{$R *.dfm}

uses
  uFrmMain,
  uFrmDatabase,
  uSystem,
  uChipShiftSelect;

{ TChipsSelectShiftFrame }

procedure TChipsSelectShiftFrame.btn_recreateClick(Sender: TObject);
begin
  inherited;
  if Question('Are you sure that you want to recreate shift data for selected gaming day? Warning! All changes that you have provided will be lost!') then
  begin
    q_tmp.SQL.Text := 'select fn_set_chip_shifts(:gaming_date)';
    q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
    q_tmp.Execute;
    q_tmp.SQL.Text := 'select fn_set_chip_diff(:gaming_date)';
    q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
    q_tmp.Execute;
    btn_refr.Click;
  end;
end;

procedure TChipsSelectShiftFrame.btn_refrClick(Sender: TObject);
begin
  inherited;
  q_tbl_chip_shifts.Close;
  q_tbl_chip_shifts.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_tbl_chip_shifts.Open;
end;

constructor TChipsSelectShiftFrame.Create(AOwner: TComponent);
begin
  inherited;
  edt_gdate.Date := now-1;
  btn_refr.Click;
end;

procedure TChipsSelectShiftFrame.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.OpenFrame('View chip balance report');
end;

procedure TChipsSelectShiftFrame.cxButton2Click(Sender: TObject);
begin
  inherited;
  if q_tbl_chip_shifts.IsEmpty then
  begin
    Information('Changing shift...', 'No data for gaming day. Use "Recreate balance" button or chack date and "Refresh".');
    exit;
  end;

  if q_tbl_chip_shifts.FieldByName('cnt').AsInteger<2 then
  begin
    Information('Changing shift...', 'No more shifts for selected cashdesk.');
    exit;
  end;

  try
    ChipShiftSelectForm := TChipShiftSelectForm.Create(Self);
    ChipShiftSelectForm.q_shifts.ParamByName('gdate').AsDate := edt_gdate.Date;
    ChipShiftSelectForm.q_shifts.ParamByName('id_cashdesk').AsInteger := q_tbl_chip_shifts.FieldByName('id_cd').AsInteger;
    ChipShiftSelectForm.q_shifts.ParamByName('id').AsInteger := q_tbl_chip_shifts.FieldByName('id_shift').AsInteger;
    ChipShiftSelectForm.q_shifts.Open;
    ChipShiftSelectForm.ShowModal;
  finally
    if ChipShiftSelectForm.ModalResult=mrOK then
    begin
      q_tmp.SQL.Text := 'update tbl_chip_shifts set id_shift = :id_shift, name_shift = :name_shift, datetime = :datetime where id_tbl_chip_shifts = :id_tbl_chip_shifts';
      q_tmp.ParamByName('id_shift').AsInteger := ChipShiftSelectForm.q_shifts.fieldbyname('id').AsInteger;
      q_tmp.ParamByName('datetime').AsDateTime := ChipShiftSelectForm.q_shifts.fieldbyname('datetime').AsDateTime;
      q_tmp.ParamByName('name_shift').AsString := ChipShiftSelectForm.q_shifts.fieldbyname('name').AsString;
      q_tmp.ParamByName('id_tbl_chip_shifts').AsInteger := q_tbl_chip_shifts.FieldByName('id_tbl_chip_shifts').AsInteger;
      q_tmp.Execute;

      q_tmp.SQL.Text := 'select fn_set_chip_diff(:gaming_date)';
      q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
      q_tmp.Execute;

      q_tbl_chip_shifts.RefreshRecord;
    end;
    ChipShiftSelectForm.Free;
  end;

end;

end.
