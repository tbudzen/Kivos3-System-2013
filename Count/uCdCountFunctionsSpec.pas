unit uCdCountFunctionsSpec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, DBAccess, PgAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TCdCountFunctionsSpecFrame = class(TBaseFrame)
    lbl_gdate: TcxLabel;
    edt_gdate: TcxDateEdit;
    btn_refr: TcxButton;
    btn_recreate: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1finished: TcxGridDBColumn;
    col_drops_c: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    q_cd_drop_count: TPgQuery;
    ds_cd_drop_count: TPgDataSource;
    q_cd_tips_count: TPgQuery;
    ds_cd_tips_count: TPgDataSource;
    q_tmp: TPgQuery;
    procedure btn_refrClick(Sender: TObject);
    procedure btn_recreateClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  CdCountFunctionsSpecFrame: TCdCountFunctionsSpecFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem;

{ TBaseFrame1 }

procedure TCdCountFunctionsSpecFrame.btn_recreateClick(Sender: TObject);
begin
  inherited;

  if Question('Are you sure that you want to recreate table for selected gaming day?') then
  begin
    q_tmp.SQL.Text := 'select 1, fn_set_cd_counts(:gaming_date,''D'',2)';
    q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
    q_tmp.Execute;
    btn_refr.Click;
  end;
end;

procedure TCdCountFunctionsSpecFrame.btn_refrClick(Sender: TObject);
begin
  inherited;
  q_cd_drop_count.Close;
  q_cd_drop_count.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_cd_drop_count.Open;

  q_cd_tips_count.Close;
  q_cd_tips_count.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_cd_tips_count.Open;

end;

constructor TCdCountFunctionsSpecFrame.Create(AOwner: TComponent);
begin
  inherited;
  edt_gdate.Date := now-1;
  btn_refr.Click;
end;

procedure TCdCountFunctionsSpecFrame.cxButton1Click(Sender: TObject);
begin
  inherited;

  if Question('Are you sure that you want to recreate table for selected gaming day?') then
  begin
    q_tmp.SQL.Text := 'select 1, fn_set_cd_counts(:gaming_date,''T'',2)';
    q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
    q_tmp.Execute;
    btn_refr.Click;
  end;
end;

procedure TCdCountFunctionsSpecFrame.cxButton2Click(Sender: TObject);
begin
  inherited;

  if Question('Are you sure that you want to open table for edition?') then
  begin
    q_tmp.SQL.Text := 'update tbl_cd_count set finished=false where id_tbl_cd_count = :id_tbl_cd_count ';
    q_tmp.ParamByName('id_tbl_cd_count').AsInteger := q_cd_tips_count.FieldByName('id_tbl_cd_count').AsInteger;
    q_tmp.Execute;
    q_cd_tips_count.RefreshRecord;
  end;
end;

procedure TCdCountFunctionsSpecFrame.cxButton3Click(Sender: TObject);
begin
  inherited;

  if Question('Are you sure that you want to open table for edition?') then
  begin
    q_tmp.SQL.Text := 'update tbl_cd_count set finished=false where id_tbl_cd_count = :id_tbl_cd_count ';
    q_tmp.ParamByName('id_tbl_cd_count').AsInteger := q_cd_drop_count.FieldByName('id_tbl_cd_count').AsInteger;
    q_tmp.Execute;
    q_cd_drop_count.RefreshRecord;
  end;
end;

end.
