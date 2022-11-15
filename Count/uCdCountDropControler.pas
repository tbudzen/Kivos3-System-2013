unit uCdCountDropControler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, PgAccess, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, frxClass, frxDBSet, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TCdCountDropControlerFrame = class(TBaseFrame)
    lbl_gdate: TcxLabel;
    edt_gdate: TcxDateEdit;
    btn_refr: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q_cd_count: TPgQuery;
    q_tmp: TPgQuery;
    ds_cd_count: TPgDataSource;
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    cxGrid1DBTableView1value_close: TcxGridDBColumn;
    cxGrid1DBTableView1value_credit: TcxGridDBColumn;
    col_drops_c: TcxGridDBColumn;
    cxGrid1DBTableView1value_open: TcxGridDBColumn;
    cxGrid1DBTableView1value_files: TcxGridDBColumn;
    cxGrid1DBTableView1value_result: TcxGridDBColumn;
    cxGrid1DBTableView1finished: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton6: TcxButton;
    frxDBDataset1: TfrxDBDataset;
    frx_rpt_cd_count: TfrxReport;
    pop_1: TPopupMenu;
    GesamtspielberichtTische1: TMenuItem;
    q_cd_count_value: TPgQuery;
    ds_cd_count_value: TPgDataSource;
    frxds_cd_count_value: TfrxDBDataset;
    frx_rpt_cd_count_value: TfrxReport;
    LiveGameSpieltischabrechnung1: TMenuItem;
    procedure btn_refrClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btn_settleClick(Sender: TObject);
    procedure GesamtspielberichtTische1Click(Sender: TObject);
    procedure LiveGameSpieltischabrechnung1Click(Sender: TObject);
    procedure frx_rpt_cd_countGetValue(const VarName: string;
      var Value: Variant);
    procedure q_cd_countBeforeOpen(DataSet: TDataSet);
  private
    procedure Count(typ,level:string);
  public
    Typ : String;
    constructor Create(AOwner: TComponent); override;
  end;

var
  CdCountDropControlerFrame: TCdCountDropControlerFrame;

implementation

{$R *.dfm}

uses
  uFrmMain,
  uFrmDatabase,
  uSystem,
  uCdCountinput;

{ TCdCountDatesFrame }

procedure TCdCountDropControlerFrame.btn_refrClick(Sender: TObject);
begin
  inherited;
  q_cd_count.Close;
  q_cd_count.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_cd_count.Open;
end;

procedure TCdCountDropControlerFrame.Count(typ, level: string);
var
  fld : String;
begin
  try
    CdCountinputForm := TCdCountinputForm.Create(Self);
    CdCountinputForm.lbl_1.Caption := 'Counts for: '+q_cd_count.FieldByName('cd_name').AsString+' and gaming date: '+DateToStr(edt_gdate.Date);
    CdCountinputForm.lbl_2.Caption := '';
    if typ = 'D' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'Drop - ';
    if typ = 'T' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'Tips - ';
    if level = 'O' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'level: Operator';
    if level = 'C' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'level: Controler';
    if level = 'O' then fld := 'cnt_operator';
    if level = 'C' then fld := 'cnt_controler';
    if level = 'C' then CdCountinputForm.btnOK.Caption := 'Settle';
    CdCountinputForm.q_cd_count_value.SQL.Text := 'select v.*, (v.' + fld + ' * v.multiplier)val, c.name       '+
                                                  'from tbl_cd_count_value v                               '+
                                                  'left join tbl_categories c on c.id=v.id_category        '+
                                                  'left join tbl_values tv on tv.id=v.id_value             '+
                                                  'where gaming_date=:gdate and id_cd=:id_cd and type=:t   '+
                                                  'order by tv.sort_order desc                             ';
    CdCountinputForm.q_cd_count_value.ParamByName('gdate').AsDate := edt_gdate.Date;
    CdCountinputForm.q_cd_count_value.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
    CdCountinputForm.q_cd_count_value.ParamByName('t').AsString := typ;
    CdCountinputForm.q_cd_count_value.Open;
    CdCountinputForm.col_count.DataBinding.FieldName := fld;
    CdCountinputForm.PgUpdateSQL1.ModifySQL.Text := 'UPDATE tbl_cd_count_value                           '+
                                                    'SET                                                 '+
                                                    '  ' + fld + ' = :' + fld + '                                '+
                                                    'WHERE                                               '+
                                                    '  id_tbl_cd_count_value = :Old_id_tbl_cd_count_value';
    if q_cd_count.FieldByName('finished').AsBoolean = True then
    begin
      CdCountinputForm.cxGrid1DBTableView1.OptionsData.Editing := False;
    end;
    CdCountinputForm.ShowModal;
  finally
    if (CdCountinputForm.ModalResult = mrOk) and (level = 'C') then
    begin
      btn_settleClick(Self);
    end
    else
    begin
      btn_refr.Click;
    end;
    CdCountinputForm.Free;
  end;
end;

constructor TCdCountDropControlerFrame.Create(AOwner: TComponent);
begin
  inherited;
  edt_gdate.Date := Now() - 1;
  btn_refr.Click;
end;

procedure TCdCountDropControlerFrame.cxButton2Click(Sender: TObject);
begin
  inherited;
  Count('D', 'C');     //drops, controler
end;

procedure TCdCountDropControlerFrame.btn_settleClick(Sender: TObject);
var
  e : Integer;
begin
  inherited;
  e := 0;
  q_tmp.SQL.Text := 'select *                                                         '+
                    'from tbl_cd_count_value                                          '+
                    'where gaming_date=:gdate and                                     '+
                    '  id_cd=:id_cd and                                               '+
                    '  type = ''D'' and                                               '+
                    '  (                                                              '+
                    '    (cnt_operator is null and cnt_controler is not null) or      '+
                    '    (cnt_controler is null and cnt_operator is not null) or      '+
                    '    (cnt_operator <> cnt_controler)                              '+
                    '  )                                                              ';
  q_tmp.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_tmp.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
  q_tmp.Open;
  if not q_tmp.IsEmpty then Inc(e);
  q_tmp.Close;

  if (e > 0) then
  begin
    Information('Settle...','Values have not been counted yet or counting error!');
    Exit;
  end;

  q_tmp.SQL.Text := 'select fn_set_cd_count_result(:gdate,:id_cd,''D'')';
  q_tmp.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_tmp.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
  q_tmp.Execute;

  q_cd_count.Refresh;

  Information('Settle...', 'Settle ready!');

end;

procedure TCdCountDropControlerFrame.cxButton6Click(Sender: TObject);
begin
  inherited;
  if q_cd_count.IsEmpty then Exit;

  if q_cd_count.FieldByName('finished').AsBoolean = False then
  begin
    Information('Settle printing', 'Settle not ready. Values have not been counted yet or counting error!');
    Exit;
  end;

  Information('Settle printing', 'Settle printing not ready yet. Is it needed at all? If not, this procedure and button is to remove.');
end;

procedure TCdCountDropControlerFrame.frx_rpt_cd_countGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'logo_file' then Value := frmMain.CasinosSmallLogoFile;
end;

procedure TCdCountDropControlerFrame.GesamtspielberichtTische1Click(Sender: TObject);
begin
  inherited;
  frx_rpt_cd_count.LoadFromFile(ExtractFilePath(Application.ExeName) + '\frx_rpt_cd_count-'+frmMain.CurrentLang+'.fr3');
  frx_rpt_cd_count.ShowReport();
end;

procedure TCdCountDropControlerFrame.LiveGameSpieltischabrechnung1Click(
  Sender: TObject);
begin
  inherited;
  q_cd_count_value.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
  q_cd_count_value.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_cd_count_value.Open;
  frx_rpt_cd_count_value.LoadFromFile(ExtractFilePath(Application.ExeName)+'\frx_rpt_cd_count_value-'+frmMain.CurrentLang+'.fr3');
  frx_rpt_cd_count_value.ShowReport();
  q_cd_count_value.Close;
end;

procedure TCdCountDropControlerFrame.q_cd_countBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  q_tmp.SQL.Text := 'select 1 ,fn_set_cd_counts(:gaming_date,''D'',1)';
  q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_tmp.Execute;
end;

end.
