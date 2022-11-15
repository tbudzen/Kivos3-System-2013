unit uAddCashTransactionFrame;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCheckBox, cxMemo, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, PgAccess, MemDS, cxPC;

type
  TAddCashTransactionFrame = class(TBaseFrame)
    btnCancel: TcxButton;
    btnAddCashTransaction: TcxButton;
    btnModifyCashTransaction: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgTable5: TPgTable;
    PgDataSource5: TPgDataSource;
    PgTable6: TPgTable;
    PgDataSource6: TPgDataSource;
    PgDataSource2: TPgDataSource;
    PgDataSource3: TPgDataSource;
    PgQuery2: TPgQuery;
    PgQuery3: TPgQuery;
    MainTabs: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    edPreviousTransactionNo: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnTransferWithoutRequest: TcxButton;
    btnRequestOfTransfer: TcxButton;
    btnClear: TcxButton;
    btnSave: TcxButton;
    btnTicket: TcxButton;
    cxLabel7: TcxLabel;
    edAmountIN: TcxTextEdit;
    cxLabel8: TcxLabel;
    edAmountOUT: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    mTransactionExplanation: TcxMemo;
    edTransactionNo: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cbTransactionIN: TcxCheckBox;
    cbTransactionOUT: TcxCheckBox;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cbTransaction: TcxDBLookupComboBox;
    cbAccount: TcxDBLookupComboBox;
    btnTran1: TcxButton;
    btnTran2: TcxButton;
    btnTran3: TcxButton;
    btnTran4: TcxButton;
    btnTran5: TcxButton;
    btnTran6: TcxButton;
    btnTran7: TcxButton;
    btnTran8: TcxButton;
    btnTran9: TcxButton;
    btnTran10: TcxButton;
    cxLabel2: TcxLabel;
    edCashDesk: TcxTextEdit;
    cxLabel1: TcxLabel;
    lbCashier: TcxLabel;
    lbLoginTime: TcxLabel;
    cxLabel9: TcxLabel;
    cbCashdesk: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    btnDeleteCashTransaction: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxLabel12: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxLabel13: TcxLabel;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_cash_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_value: TcxGridDBColumn;
    cxGrid1DBTableView1id_cashdesk: TcxGridDBColumn;
    cxGrid1DBTableView1count: TcxGridDBColumn;
    cxGrid1DBTableView1amount_in: TcxGridDBColumn;
    cxGrid1DBTableView1amount_out: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareShortcuts();
  end;

var
  AddCashTransactionFrame: TAddCashTransactionFrame;

implementation

uses
  uFrmMain,
  uSystem,
  uExceptions,
  uFrmDatabase;

{$R *.dfm}

procedure TAddCashTransactionFrame.cxButton1Click(Sender: TObject);
begin

  cxTabSheet1.Enabled := True;

end;

procedure TAddCashTransactionFrame.PrepareShortcuts();
begin

end;

end.
