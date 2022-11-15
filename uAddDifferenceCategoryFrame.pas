unit uAddDifferenceCategoryFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxMemo, DBAccess,
  PgAccess, Data.DB, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons;

type
  TAddDifferenceCategoryFrame = class(TBaseFrame)
    btnAddDifferenceCategory: TcxButton;
    btnCancel: TcxButton;
    btnModifyDifferenceCategory: TcxButton;
    edDifferenceCategoryName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    edDifferenceCategoryDescription: TcxMemo;
    edId: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddDifferenceCategoryClick(Sender: TObject);
    procedure btnModifyDifferenceCategoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddDifferenceCategoryFrame: TAddDifferenceCategoryFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddDifferenceCategoryFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edDifferenceCategoryName.Text = '') then
  begin
    Information('Warning', 'You must fill the category name field.');
    Result := False;
    Exit;
  end;


end;

procedure TAddDifferenceCategoryFrame.btnAddDifferenceCategoryClick(
  Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_difference_categories (name, description) ' +
    'VALUES (''' +
    edDifferenceCategoryName.Text + ''', ''' +
    edDifferenceCategoryDescription.Text + '''' +
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
        Information('Warning', 'Difference category with such name is already created');
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

procedure TAddDifferenceCategoryFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddDifferenceCategoryFrame.btnModifyDifferenceCategoryClick(
  Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_difference_categories ' +
    'SET ' +
    'name = ''' + edDifferenceCategoryName.Text + ''', ' +
    'description = ''' + edDifferenceCategoryDescription.Text + ''' ' +
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
