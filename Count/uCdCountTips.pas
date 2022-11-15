unit uCdCountTips;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, PgAccess, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, frxClass, frxDBSet, frxCross;

type
  TCdCountTipsFrame = class(TBaseFrame)
    lbl_gdate: TcxLabel;
    edt_gdate: TcxDateEdit;
    btn_refr: TcxButton;
    btn_recreate: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q_cd_count: TPgQuery;
    q_tmp: TPgQuery;
    ds_cd_count: TPgDataSource;
    cxGrid1DBTableView1cd_name: TcxGridDBColumn;
    col_drops_c: TcxGridDBColumn;
    cxGrid1DBTableView1finished: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    btn_settle: TcxButton;
    cxButton6: TcxButton;
    cxButton1: TcxButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    q_tips_summary: TPgQuery;
    ds_tips_summary: TPgDataSource;
    procedure btn_refrClick(Sender: TObject);
    procedure btn_recreateClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure btn_settleClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure Count(typ,level:string);
  public
    typ : string;
    constructor Create(AOwner: TComponent); override;
  end;

var
  CdCountTipsFrame: TCdCountTipsFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem, uCdCountImput;

{ TCdCountDatesFrame }

procedure TCdCountTipsFrame.btn_recreateClick(Sender: TObject);
begin
  inherited;
  if Question('Are you sure that you want to recreate data for selected gaming day? Warning! All changes that you have provided will be lost!') then
  begin
    q_tmp.SQL.Text := 'select fn_set_cd_counts(:gaming_date,''T'')';
    q_tmp.ParamByName('gaming_date').AsDate := edt_gdate.Date;
    q_tmp.Execute;
    btn_refr.Click;
  end;
end;

procedure TCdCountTipsFrame.btn_refrClick(Sender: TObject);
begin
  inherited;
  q_cd_count.Close;
  q_cd_count.ParamByName('gaming_date').AsDate := edt_gdate.Date;
  q_cd_count.Open;
end;

procedure TCdCountTipsFrame.Count(typ, level: string);
var fld : string;
begin
  try
    CdCountImputForm := TCdCountImputForm.Create(Self);
    CdCountImputForm.lbl_1.Caption := 'Counts for: '+q_cd_count.FieldByName('cd_name').AsString+' and gaming date: '+DateToStr(edt_gdate.Date);
    CdCountImputForm.lbl_2.Caption := '';
    if typ='D' then CdCountImputForm.lbl_2.Caption := CdCountImputForm.lbl_2.Caption + 'Drop - ';
    if typ='T' then CdCountImputForm.lbl_2.Caption := CdCountImputForm.lbl_2.Caption + 'Tips - ';
    if level='O' then CdCountImputForm.lbl_2.Caption := CdCountImputForm.lbl_2.Caption + 'level: Operator';
    if level='C' then CdCountImputForm.lbl_2.Caption := CdCountImputForm.lbl_2.Caption + 'level: Controler';
    if level='O' then fld := 'cnt_operator';
    if level='C' then fld := 'cnt_controler';
    CdCountImputForm.q_cd_count_value.SQL.Text := 'select v.*, (v.'+fld+' * v.multiplier)val, c.name from tbl_cd_count_value v left join tbl_categories c on c.id=v.id_category where gaming_date=:gdate and id_cd=:id_cd and type=:t order by id_category,multiplier';
    CdCountImputForm.q_cd_count_value.ParamByName('gdate').AsDate := edt_gdate.Date;
    CdCountImputForm.q_cd_count_value.ParamByName('id_cd').AsInteger := q_cd_count.FieldByName('id_cd').AsInteger;
    CdCountImputForm.q_cd_count_value.ParamByName('t').AsString := typ;
    CdCountImputForm.q_cd_count_value.Open;
    CdCountImputForm.col_count.DataBinding.FieldName := fld;
    CdCountImputForm.PgUpdateSQL1.ModifySQL.Text := 'UPDATE tbl_cd_count_value                           '+
                                                    'SET                                                 '+
                                                    '  '+fld+' = :'+fld+'                                '+
                                                    'WHERE                                               '+
                                                    '  id_tbl_cd_count_value = :Old_id_tbl_cd_count_value';
    if q_cd_count.FieldByName('finished').AsBoolean=true then
    begin
      CdCountImputForm.cxGrid1DBTableView1.OptionsData.Editing := false;
    end;
    CdCountImputForm.ShowModal;
  finally
    if CdCountImputForm.ModalResult=mrok then
    begin

    end;
    CdCountImputForm.Free;
  end;
end;

constructor TCdCountTipsFrame.Create(AOwner: TComponent);
begin
  inherited;
  edt_gdate.Date := now-1;
  btn_refr.Click;
end;

procedure TCdCountTipsFrame.cxButton1Click(Sender: TObject);
begin
  inherited;
  if Question('Are you sure that you want to open table for edition?') then
  begin
    q_tmp.SQL.Text := 'update tbl_cd_count set finished=false where id_tbl_cd_count = :id_tbl_cd_count ';
    q_tmp.ParamByName('id_tbl_cd_count').AsInteger := q_cd_count.FieldByName('id_tbl_cd_count').AsInteger;
    q_tmp.Execute;
    q_cd_count.RefreshRecord;
  end;
end;

procedure TCdCountTipsFrame.cxButton3Click(Sender: TObject);
begin
  inherited;
  Count('T','O');       //tips, operator
end;

procedure TCdCountTipsFrame.cxButton4Click(Sender: TObject);
begin
  inherited;
  Count('T','C');       //tips, controler
end;

procedure TCdCountTipsFrame.btn_settleClick(Sender: TObject);
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

procedure TCdCountTipsFrame.cxButton6Click(Sender: TObject);
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
  frxReport1.ShowReport();
  q_tips_summary.Close;
end;

end.
