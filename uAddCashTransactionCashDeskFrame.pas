unit uAddCashTransactionCashDeskFrame;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, dxSkinscxPCPainter, cxControls,
  cxPC, cxContainer, cxEdit, cxCheckBox, cxTextEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox;

type
  TAddCashTransactionCashDeskFrame = class(TBaseFrame)
    btnAddCashTransactionCashDesk: TcxButton;
    btnCancel: TcxButton;
    btnModifyCashTransactionCashDesk: TcxButton;
    cxLabel43: TcxLabel;
    edId: TcxTextEdit;
    edName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel1: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel3: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxLabel4: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBTableView8id: TcxGridDBColumn;
    cxGridDBTableView8name: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9id: TcxGridDBColumn;
    cxGridDBTableView9name: TcxGridDBColumn;
    cxGridDBTableView9multiplier: TcxGridDBColumn;
    cxGridDBTableView9name_1: TcxGridDBColumn;
    cxGridDBTableView9name_2: TcxGridDBColumn;
    cxGridDBTableView9symbol: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxLabel46: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel44: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    cxLabel5: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
    cxGrid1DBTableView1account_id_to: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1order_id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1symbol: TcxGridDBColumn;
    cxGridDBTableView1account_id_to: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel7: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel6: TcxLabel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel8: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxLabel9: TcxLabel;
    cxDBComboBox2: TcxDBComboBox;
    cxDBComboBox3: TcxDBComboBox;
    cxLabel10: TcxLabel;
    cxDBComboBox4: TcxDBComboBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBComboBox5: TcxDBComboBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxDBComboBox6: TcxDBComboBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddCashTransactionCashDeskFrame: TAddCashTransactionCashDeskFrame;

implementation

{$R *.dfm}

end.
