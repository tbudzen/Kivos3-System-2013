unit uAddCategoryFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, DBAccess, PgAccess,
  Data.DB, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, cxCheckBox;

type
  TAddCategoryFrame = class(TBaseFrame)
    btnAddCategory: TcxButton;
    btnCancel: TcxButton;
    btnModifyCategory: TcxButton;
    edCategoryName: TcxTextEdit;
    edCategoryDescription: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    cbLg: TcxCheckBox;
    cbDrop: TcxCheckBox;
    cbUsedInChipBalance: TcxCheckBox;
    edId: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddCategoryClick(Sender: TObject);
    procedure btnModifyCategoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddCategoryFrame: TAddCategoryFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain,
  uStrings;

{$R *.dfm}

function TAddCategoryFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edCategoryName.Text = '') then
  begin
    Information('Warning', 'You must fill the category name field.');
    Result := False;
    Exit;
  end;


end;

procedure TAddCategoryFrame.btnAddCategoryClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_categories (name, description, lg, drop, used_in_chip_balance) ' +
    'VALUES (' +
    '''' + edCategoryName.Text + ''', ' +
    '''' + edCategoryDescription.Text + ''', ' +
    '' + MyBoolToIntStr(cbLg.Checked) + ', ' +
    '' + MyBoolToIntStr(cbDrop.Checked) + ', ' +
    '' + MyBoolToIntStr(cbUsedInChipBalance.Checked) + ' ' +
    ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'Category with such name is already created');
        Exit;
      end
      else
      begin
      HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);

end;

procedure TAddCategoryFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddCategoryFrame.btnModifyCategoryClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'UPDATE tbl_categories ' +
    'SET ' +
    'name = ''' + edCategoryName.Text + ''', ' +
    'description = ''' + edCategoryDescription.Text + ''', ' +
    'lg = ' + MyBoolToIntStr(cbLg.Checked) + ', ' +
    'drop = ' + MyBoolToIntStr(cbDrop.Checked) + ', ' +
    'used_in_chip_balance = ' + MyBoolToIntStr(cbUsedInChipBalance.Checked) + ' ' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);
end;

end.
