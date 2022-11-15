unit uChipsInitials;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, PgAccess,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
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
  TChipsInitialsFrame = class(TBaseFrame)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_tbl_chip_balances: TPgQuery;
    ds_btl_chipbalances: TPgDataSource;
    cxGrid1DBTableView1chipcategory: TcxGridDBColumn;
    cxGrid1DBTableView1chipvalue: TcxGridDBColumn;
    cxGrid1DBTableView1initial_amount: TcxGridDBColumn;
    cxGrid1DBTableView1present_amount: TcxGridDBColumn;
    btn_Lock: TcxButton;
    q_tmp: TPgQuery;
    col_locked: TcxGridDBColumn;
    btn_Add: TcxButton;
    btn_history: TcxButton;
    PopupMenu: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btn_LockClick(Sender: TObject);
    procedure q_tbl_chip_balancesAfterPost(DataSet: TDataSet);
    procedure q_tbl_chip_balancesBeforeEdit(DataSet: TDataSet);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_historyClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ChipsInitialsFrame: TChipsInitialsFrame;

implementation

{$R *.dfm}

uses uFrmMain, uFrmDatabase, uSystem, uChipsAmountChange,
  uChipsAmuntChangesHistory,uGlobals, uExportsGrid;


procedure TChipsInitialsFrame.btn_AddClick(Sender: TObject);
begin
  inherited;

  if q_tbl_chip_balances.FieldByName('initial_amount').IsNull then
  begin
    Information('Adding / removing chips', 'For this category and value, initial amount has not beet provided.'+#13+'Procedure interrupted.');
    abort;
  end;

  try
    ChipsAmountChangeForm := TChipsAmountChangeForm.Create(Self);
    ChipsAmountChangeForm.ShowModal;
  finally
    if (ChipsAmountChangeForm.ModalResult=mrOK) and (ChipsAmountChangeForm.edt_1.Value > 0) then
    begin
      q_tmp.SQL.Text := 'insert into tbl_chip_amount_changes (id_category,id_value,typ,amount,description,datetime)values(:id_category,:id_value,:typ,:amount,:description,now())';
      q_tmp.ParamByName('amount').AsInteger := trunc(ChipsAmountChangeForm.edt_1.Value);
      q_tmp.ParamByName('id_category').AsInteger := q_tbl_chip_balances.FieldByName('id_category').AsInteger;
      q_tmp.ParamByName('id_value').AsInteger := q_tbl_chip_balances.FieldByName('id_value').AsInteger;
      q_tmp.ParamByName('typ').AsString := ChipsAmountChangeForm.cb_1.Properties.Items[ChipsAmountChangeForm.cb_1.ItemIndex];
      q_tmp.ParamByName('description').AsString := ChipsAmountChangeForm.edt_description.text;
      q_tmp.Execute;
      q_tbl_chip_balances.RefreshRecord;
    end;
    ChipsAmountChangeForm.Free;
  end;
end;

procedure TChipsInitialsFrame.btn_historyClick(Sender: TObject);
var f : TChipsAmuntChangesHistoryFrame;
begin
  inherited;
  frmMain.OpenFrame('ChipsAmuntChangesHistory');

  F := TChipsAmuntChangesHistoryFrame(frmMain.CurrentFrame());
  F.q_history.ParamByName('id_category').AsInteger := q_tbl_chip_balances.FieldByName('id_category').AsInteger;
  F.q_history.ParamByName('id_value').AsInteger := q_tbl_chip_balances.FieldByName('id_value').AsInteger;
  F.q_history.Open;
end;

procedure TChipsInitialsFrame.btn_LockClick(Sender: TObject);
begin
  inherited;

  if Question('Further update of values that have initial values will not be possible! Lock records?') then
  begin
    q_tmp.SQL.Text := 'update tbl_chip_balances set locked=true where locked=false;';
    q_tmp.Execute;
    q_tbl_chip_balances.Refresh;
  end;
end;

constructor TChipsInitialsFrame.Create(AOwner: TComponent);
begin
  inherited;
  q_tbl_chip_balances.Open;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TChipsInitialsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);

  end;
end;

procedure TChipsInitialsFrame.q_tbl_chip_balancesAfterPost(DataSet: TDataSet);
begin
  inherited;
  q_tbl_chip_balances.RefreshRecord;
end;

procedure TChipsInitialsFrame.q_tbl_chip_balancesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not dataset.FieldByName('locked_txt').IsNull then
  begin
    Information('Initial amounts','Record locked. You can not change initial amount.');
    abort;
  end;
end;

end.
