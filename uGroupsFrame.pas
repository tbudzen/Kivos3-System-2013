unit uGroupsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxTextEdit,
  cxCalc, Datasnap.Provider, Datasnap.DBClient, cxTL, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid;

type
  TGroupsFrame = class(TBaseFrame)
    lbMainHeader: TLabel;
    GroupsGrid: TcxGrid;
    GroupsGridDBTableView1: TcxGridDBTableView;
    GroupsGridLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    Sys_Groups_DataSource: TDataSource;
    Sys_Groups_Dataset: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    GroupsGridDBTableView1id: TcxGridDBColumn;
    GroupsGridDBTableView1roles: TcxGridDBColumn;
    GroupsGridDBTableView1list_id: TcxGridDBColumn;
    GroupsGridDBTableView1section: TcxGridDBColumn;
    GroupsGridDBTableView1form: TcxGridDBColumn;
    GroupsGridDBTableView1name: TcxGridDBColumn;
    GroupsGridDBTableView1description: TcxGridDBColumn;
    GroupsGridDBTableView1pscreen: TcxGridDBColumn;
    GroupsGridDBTableView1imagenr: TcxGridDBColumn;
    GroupsGridDBTableView1myorder: TcxGridDBColumn;
    GroupsGridDBTableView1kind: TcxGridDBColumn;
    GroupsGridDBTableView1expanded: TcxGridDBColumn;
    GroupsGridDBTableView1active: TcxGridDBColumn;
    GroupsGridDBTableView1openform: TcxGridDBColumn;
    GroupsGridDBTableView1puser_modify: TcxGridDBColumn;
    GroupsGridDBTableView1user_name_modify: TcxGridDBColumn;
    GroupsGridDBTableView1date_modify: TcxGridDBColumn;
    GroupsGridDBTableView1visible: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GroupsFrame: TGroupsFrame;

implementation

{$R *.dfm}

end.
