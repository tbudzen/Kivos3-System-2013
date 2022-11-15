unit uBaseFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TBaseFrame = class(TFrame)
  private
    { Private declarations }
  public
    { Public declarations }

    Name: WideString;

    procedure DoInitializationBeforeShow();
    procedure DoInitializationAfterShow();

    procedure DoFinalizationBeforeClose();
    procedure DoFinalizationAfterClose();

    procedure RefreshConnections();

    procedure CMShowingChanged(var M: TMessage); message CM_SHOWINGCHANGED;

  end;

implementation

uses
  PgAccess,
  uFrmMain,
  uFrmDatabase,
  uListOfCashTransactionsFrame,uAddCurrencyExchangeRateFrame;

{$R *.dfm}

procedure TBaseFrame.DoInitializationBeforeShow();
begin

end;


procedure TBaseFrame.DoInitializationAfterShow();
begin

end;

procedure TBaseFrame.DoFinalizationBeforeClose();
begin

end;

procedure TBaseFrame.DoFinalizationAfterClose();
begin

end;

procedure TBaseFrame.RefreshConnections();
var
  i: Integer;
  TmpName: String;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i].ClassName = 'TPgTable') then
    begin
      TmpName := Self.Components[i].Name;
      TPgTable(Self.Components[i]).Connection := frmDatabase.KivosConnection;
      TPgTable(Self.Components[i]).Active := False;
      TPgTable(Self.Components[i]).Active := True;
    end;
    if (Self.Components[i].ClassName = 'TPgQuery') then
    begin
      TmpName := Self.Components[i].Name;
      TPgQuery(Self.Components[i]).Connection := frmDatabase.KivosConnection;
      TPgQuery(Self.Components[i]).Active := False;
      TPgQuery(Self.Components[i]).Active := True;
    end;
  end;
end;

procedure TBaseFrame.CMShowingChanged(var M: TMessage);
begin

  inherited;

  if Showing then
  begin

    // Put your OnShow logic here.
    // When this is called, the frame's window handle has already
    // been created, as have the handles for the controls on the
    // frame - so you can do most anything you need to do.

    if Name = 'Transactions' then
    begin

      if TListOfCashTransactionsFrame(Self).CashDeskIsAlwaysActive then
      begin
        frmMain.lbMainHeader.Caption := TListOfCashTransactionsFrame(Self)
          .cbCashDesk.Text + ':  ALWAYS ACTIVE';
      end
      else if TListOfCashTransactionsFrame(Self).CashDeskOpened then
      begin
        frmMain.lbMainHeader.Caption := TListOfCashTransactionsFrame(Self)
          .cbCashDesk.Text + ':  OPENED';
      end
      else
      begin
        frmMain.lbMainHeader.Caption := TListOfCashTransactionsFrame(Self)
          .cbCashDesk.Text + ':  CLOSED';
      end;

      TListOfCashTransactionsFrame(Self)
        .cbCashDesk.Properties.OnEditValueChanged(Self);

    end;

  end
  else
  begin
    // Put your OnHide logic here, but see the caveats below.
  end;

end;



end.
