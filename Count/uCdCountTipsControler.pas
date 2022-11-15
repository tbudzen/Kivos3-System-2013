unit uCdCountTipsControler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, PgAccess, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, frxClass, frxDBSet, frxCross,
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
  TCdCountTipsControlerFrame = class(TBaseFrame)
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
    col_drops_c: TcxGridDBColumn;
    cxGrid1DBTableView1finished: TcxGridDBColumn;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    frxDBDataset1: TfrxDBDataset;
    frx_tips_count: TfrxReport;
    q_tips_summary: TPgQuery;
    ds_tips_summary: TPgDataSource;
    procedure btn_refrClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btn_settleClick(Sender: TObject);
    procedure frx_tips_countGetValue(const VarName: string; var Value: Variant);
    procedure q_cd_countBeforeOpen(DataSet: TDataSet);
  private
    procedure Count(typ,level:string);
  public
    typ : string;
    constructor Create(AOwner: TComponent); override;
  end;

var
  CdCountTipsControlerFrame: TCdCountTipsControlerFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem, uCdCountinput;

{ TCdCountDatesFrame }

procedure TCdCountTipsControlerFrame.btn_refrClick(Sender: TObject);
begin
  inherited;
  q_cd_count.Close;
  q_cd_count.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_cd_count.Open;
end;

procedure TCdCountTipsControlerFrame.Count(typ, level: string);
var fld : string;
begin
  try
    CdCountinputForm := TCdCountinputForm.Create(Self);
    CdCountinputForm.lbl_1.Caption := 'Counts for: '+q_cd_count.FieldByName('cd_name').AsString+' and gaming date: '+DateToStr(edt_gdate.Date);
    CdCountinputForm.lbl_2.Caption := '';
    if typ='D' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'Drop - ';
    if typ='T' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'Tips - ';
    if level='O' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'level: Operator';
    if level='C' then CdCountinputForm.lbl_2.Caption := CdCountinputForm.lbl_2.Caption + 'level: Controler';
    if level='O' then fld := 'cnt_operator';
    if level='C' then fld := 'cnt_controler';
    if level='C' then CdCountinputForm.btnOK.Caption := 'Settle';
    CdCountinputForm.q_cd_count_value.SQL.Text := 'select v.*, (v.'+fld+' * v.multiplier)val, c.name      '+
                                                  'from tbl_cd_count_value v                              '+
                                                  'left join tbl_categories c on c.id=v.id_category       '+
                                                  'left join tbl_values tv on tv.id=v.id_value            '+
                                                  'where gaming_date=:gdate and id_cd=:id_cd and type=:t  '+
                                                  'order by tv.sort_order desc                            ';
    CdCountinputForm.q_cd_count_value.ParamByName('gdate').AsDate := edt_gdate.Date;
    CdCountinputForm.q_cd_count_value.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
    CdCountinputForm.q_cd_count_value.ParamByName('t').AsString := typ;
    CdCountinputForm.q_cd_count_value.Open;
    CdCountinputForm.col_count.DataBinding.FieldName := fld;
    CdCountinputForm.PgUpdateSQL1.ModifySQL.Text := 'UPDATE tbl_cd_count_value                           '+
                                                    'SET                                                 '+
                                                    '  '+fld+' = :'+fld+'                                '+
                                                    'WHERE                                               '+
                                                    '  id_tbl_cd_count_value = :Old_id_tbl_cd_count_value';
    if q_cd_count.FieldByName('finished').AsBoolean=true then
    begin
      CdCountinputForm.cxGrid1DBTableView1.OptionsData.Editing := false;
    end;
    CdCountinputForm.ShowModal;
  finally
    if (CdCountinputForm.ModalResult=mrok)and(level='C') then
    begin
      btn_settleClick(Self);
    end else
      btn_refr.Click;
    CdCountinputForm.Free;
  end;
end;

constructor TCdCountTipsControlerFrame.Create(AOwner: TComponent);
begin
  inherited;
  edt_gdate.Date := now-1;
  btn_refr.Click;
end;

procedure TCdCountTipsControlerFrame.cxButton4Click(Sender: TObject);
begin
  inherited;
  Count('T','C');       //tips, controler
end;

procedure TCdCountTipsControlerFrame.btn_settleClick(Sender: TObject);
var e : integer;
begin
  inherited;
  e := 0;
  q_tmp.SQL.Text := 'select *                                                         '+
                    'from tbl_cd_count_value                                          '+
                    'where gaming_date=:gdate and                                     '+
                    '  id_cd=:id_cd and                                               '+
                    '  type = ''T'' and                                               '+
                    '  (                                                              '+
                    '    (cnt_operator is null and cnt_controler is not null) or      '+
                    '    (cnt_controler is null and cnt_operator is not null) or      '+
                    '    (cnt_operator <> cnt_controler)                              '+
                    '  )                                                              ';
  q_tmp.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_tmp.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
  q_tmp.Open;
  if not q_tmp.IsEmpty then inc(e);
  q_tmp.Close;

  if e>0 then
  begin
    Information('Settle...','Values have not been counted yet or counting error!');
    exit;
  end;

  q_tmp.SQL.Text := 'select fn_set_cd_count_result(:gdate,:id_cd,''T'')';
  q_tmp.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_tmp.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
  q_tmp.Execute;

  q_cd_count.Refresh;
  
  Information('Settle...','Settle ready!');
end;

procedure TCdCountTipsControlerFrame.cxButton6Click(Sender: TObject);
begin
  inherited;
  if q_cd_count.IsEmpty then exit;

  if q_cd_count.FieldByName('finished').AsBoolean=false then
  begin
    Information('Settle printing','Settle not ready. Values have not been counted yet or counting error!');
    exit;
  end;
  
  q_tips_summary.ParamByName('gdate').AsDate := edt_gdate.Date;
  q_tips_summary.Open;
  frx_tips_count.LoadFromFile(ExtractFilePath(Application.ExeName)+'\frx_tips_count-'+frmMain.CurrentLang+'.fr3');
  frx_tips_count.ShowReport();
  q_tips_summary.Close;
end;

procedure TCdCountTipsControlerFrame.frx_tips_countGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName='logo_file' then Value := frmMain.CasinosSmallLogoFile;
end;

procedure TCdCountTipsControlerFrame.q_cd_countBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  q_tmp.SQL.Text := 'select 1, fn_set_cd_counts(:gaming_date,''T'',1)';
  q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_tmp.Execute;

end;

end.
