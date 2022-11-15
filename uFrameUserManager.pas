unit uFrameUserManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB, Data.Win.ADODB,
  cxInplaceContainer, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, cxTL, cxNavigator, cxMaskEdit,
  cxDBTL, cxTLData, cxTextEdit, cxCalc, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, FMTBcd,
  Data.SqlExpr, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, cxButtons, uBaseFrame,
  Data.DBXOdbc;

type
  TframeUserManager = class(TFrame)
    UsersGridDBTableView1: TcxGridDBTableView;
    UsersGridLevel1: TcxGridLevel;
    UsersGrid: TcxGrid;
    UsersGridDBTableView1puser: TcxGridDBColumn;
    UsersGridDBTableView1fname: TcxGridDBColumn;
    UsersGridDBTableView1lname: TcxGridDBColumn;
    UsersGridDBTableView1role_default: TcxGridDBColumn;
    UsersGridDBTableView1user_admin: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    Sys_Users_DataSource: TDataSource;
    Sys_Users_Table: TSQLTable;
    KivosConnection: TSQLConnection;
    DataSetProvider1: TDataSetProvider;
    Sys_Users_Dataset: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
