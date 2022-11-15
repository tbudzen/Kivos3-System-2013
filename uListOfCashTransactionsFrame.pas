{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M+,N-,O+,P+,Q+,R+,S-,T-,U+,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit uListOfCashTransactionsFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, MemDS,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxCheckBox, cxMemo, cxPC,
  cxGroupBox, uAddShiftFrame, cxCalc, cxTL, Vcl.ExtCtrls, cxCalendar,
  cxInplaceContainer, cxDBTL, cxTLData, JvExControls, JvLinkLabel,
  uDatabase, uReportTicket, Data.SqlTimSt, Vcl.ImgList,
  uContinuousInfoForm, JvExStdCtrls, JvCombobox, Vcl.ButtonGroup, Vcl.ActnList;

type
  TListOfCashTransactionsFrame = class(TBaseFrame)
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
    cxTabSheet2: TcxTabSheet;
    cxLabel9: TcxLabel;
    cbCashdesk: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    edPreviousTransactionNo: TcxTextEdit;
    cxLabel11: TcxLabel;
    btnSave: TcxButton;
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
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel2: TcxLabel;
    edCashDesk: TcxTextEdit;
    cxLabel1: TcxLabel;
    lbCashier: TcxLabel;
    lbLoginTime: TcxLabel;
    PgSQL1: TPgSQL;
    PgQuery4: TPgQuery;
    PgDataSource4: TPgDataSource;
    cxGridDBTableView4id: TcxGridDBColumn;
    cxGridDBTableView4id_currency: TcxGridDBColumn;
    cxGridDBTableView4buying: TcxGridDBColumn;
    cxGridDBTableView4selling: TcxGridDBColumn;
    cxGridDBTableView4symbol: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    btnConfirmPendingTransaction: TcxButton;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    PgQuery5: TPgQuery;
    PgDataSource7: TPgDataSource;
    cxLabel68: TcxLabel;
    PgQuery6: TPgQuery;
    PgDataSource8: TPgDataSource;
    PgQuery7: TPgQuery;
    PgDataSource9: TPgDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel70: TcxLabel;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxLabel72: TcxLabel;
    edId: TcxTextEdit;
    PgQuery9: TPgQuery;
    PgDataSource10: TPgDataSource;
    cxGridDBTableView7id: TcxGridDBColumn;
    cxGridDBTableView7id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView7confirmed: TcxGridDBColumn;
    PgQuery11: TPgQuery;
    PgDataSource12: TPgDataSource;
    cxGridDBTableView7ct_number: TcxGridDBColumn;
    PgQuery10: TPgQuery;
    PgQuery12: TPgQuery;
    PgDataSource11: TPgDataSource;
    cxGridDBTableView6id: TcxGridDBColumn;
    cxGridDBTableView6id_cd_sub_transaction: TcxGridDBColumn;
    cxGridDBTableView6id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView6id_cd_value: TcxGridDBColumn;
    cxGridDBTableView6id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView6id_cd_category: TcxGridDBColumn;
    cxGridDBTableView6ct_number: TcxGridDBColumn;
    cxGridDBTableView6nr: TcxGridDBColumn;
    PgQuery13: TPgQuery;
    PgDataSource13: TPgDataSource;
    cxGridDBTableView7is_multiple_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView7name: TcxGridDBColumn;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1id_cd_sub_transaction: TcxGridDBColumn;
    cxGridDBTableView1id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView1id_cd_value: TcxGridDBColumn;
    cxGridDBTableView1id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView1id_cd_category: TcxGridDBColumn;
    cxGridDBTableView1ct_number: TcxGridDBColumn;
    cxGridDBTableView1nr: TcxGridDBColumn;
    btnCancel: TcxButton;
    PgQuery14: TPgQuery;
    PgQuery15: TPgQuery;
    PgDataSource14: TPgDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_sub_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_value: TcxGridDBColumn;
    cxGrid1DBTableView1id_cashdesk: TcxGridDBColumn;
    cxGrid1DBTableView1count: TcxGridDBColumn;
    cxGrid1DBTableView1amount_in: TcxGridDBColumn;
    cxGrid1DBTableView1amount_out: TcxGridDBColumn;
    cxGrid1DBTableView1id_cd_category: TcxGridDBColumn;
    cxGrid1DBTableView1ct_number: TcxGridDBColumn;
    cxGrid1DBTableView1nr: TcxGridDBColumn;
    cxGrid1DBTableView1amount: TcxGridDBColumn;
    cxGrid1DBTableView1change_chf: TcxGridDBColumn;
    cxGrid1DBTableView1amount_chf: TcxGridDBColumn;
    cxGrid1DBTableView1category: TcxGridDBColumn;
    cxGrid1DBTableView1value: TcxGridDBColumn;
    GenericQuery: TPgQuery;
    cxGridDBTableView1multiplier_1: TcxGridDBColumn;
    cxGridDBTableView1amount: TcxGridDBColumn;
    cxGridDBTableView1change_chf: TcxGridDBColumn;
    cxGridDBTableView1amount_chf: TcxGridDBColumn;
    cxGridDBTableView1category: TcxGridDBColumn;
    cxGridDBTableView1value: TcxGridDBColumn;
    cxGridDBTableView6multiplier_1: TcxGridDBColumn;
    cxGridDBTableView6amount: TcxGridDBColumn;
    cxGridDBTableView6change_chf: TcxGridDBColumn;
    cxGridDBTableView6amount_chf: TcxGridDBColumn;
    cxGridDBTableView6category: TcxGridDBColumn;
    cxGridDBTableView6value: TcxGridDBColumn;
    cxGrid1DBTableView1multiplier: TcxGridDBColumn;
    lbTransactionDirection: TcxLabel;
    cbDirection: TcxComboBox;
    cxGridDBTableView7direction: TcxGridDBColumn;
    cxGridDBTableView8id: TcxGridDBColumn;
    cxGridDBTableView8id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView8id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView8ct_number: TcxGridDBColumn;
    cxGridDBTableView8multiple_subtransaction_id: TcxGridDBColumn;
    cxGridDBTableView8name: TcxGridDBColumn;
    cxGridDBTableView8amount_IN: TcxGridDBColumn;
    cxGridDBTableView8amount_OUT: TcxGridDBColumn;
    cxGridDBTableView8direction: TcxGridDBColumn;
    cbTransaction: TcxLookupComboBox;
    btnClearCashdesk: TcxButton;
    PgQuery8: TPgQuery;
    PgQuery16: TPgQuery;
    PgDataSource15: TPgDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TreeListStyleSheetUserFormat3: TcxTreeListStyleSheet;
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
    cxGridDBTableView8is_for_change: TcxGridDBColumn;
    cxGridDBTableView8id_currency: TcxGridDBColumn;
    PgQuery17: TPgQuery;
    PgDataSource16: TPgDataSource;
    PgDataSource17: TPgDataSource;
    PgQuery18: TPgQuery;
    PgQuery19: TPgQuery;
    PgDataSource18: TPgDataSource;
    cxGridDBTableView2id: TcxGridDBColumn;
    cxGridDBTableView2id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView2id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView2account_id: TcxGridDBColumn;
    cxGridDBTableView2confirmed: TcxGridDBColumn;
    cxGridDBTableView2confirmation_id_user: TcxGridDBColumn;
    cxGridDBTableView2id_user: TcxGridDBColumn;
    cxGridDBTableView2account_id_debit: TcxGridDBColumn;
    cxGridDBTableView2account_id_credit: TcxGridDBColumn;
    cxGridDBTableView2type: TcxGridDBColumn;
    cxGridDBTableView2datetime: TcxGridDBColumn;
    cxGridDBTableView2ct_number: TcxGridDBColumn;
    cxGridDBTableView2is_multiple_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView2direction: TcxGridDBColumn;
    cxGridDBTableView2name: TcxGridDBColumn;
    btnCancelPendingTransaction: TcxButton;
    PgQuery20: TPgQuery;
    PgQuery21: TPgQuery;
    cxGridDBTableView7confirmation_id_user: TcxGridDBColumn;
    cxGridDBTableView7id_user: TcxGridDBColumn;
    cxGridDBTableView7type: TcxGridDBColumn;
    cxGridDBTableView7datetime: TcxGridDBColumn;
    cxGridDBTableView7name_1: TcxGridDBColumn;
    cxGridDBTableView7name_2: TcxGridDBColumn;
    cxGridDBTableView7name_3: TcxGridDBColumn;
    cxGridDBTableView7account_id_from: TcxGridDBColumn;
    cxGridDBTableView7account_id_to: TcxGridDBColumn;
    cxGridDBTableView7confirmed_from_other_transaction: TcxGridDBColumn;
    cxGridDBTableView7confirms: TcxGridDBColumn;
    cxGridDBTableView7amount_in: TcxGridDBColumn;
    cxGridDBTableView7amount_out: TcxGridDBColumn;
    cxGridDBTableView5category_name: TcxGridDBColumn;
    cxGridDBTableView5currency_symbol: TcxGridDBColumn;
    cxGridDBTableView5exchange_rate: TcxGridDBColumn;
    cxGridDBTableView5amount_foreign: TcxGridDBColumn;
    cxGridDBTableView5amount_base: TcxGridDBColumn;
    TopGenericQuery: TPgQuery;
    Timer1: TTimer;
    PgQuery22: TPgQuery;
    PgDataSource19: TPgDataSource;
    cxLabel67: TcxLabel;
    btnOpenCashdesk: TcxButton;
    btnCloseCashDesk: TcxButton;
    btnChangeCashier: TcxButton;
    btnIntermediate: TcxButton;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1column: TcxDBTreeListColumn;
    cxDBTreeList1id: TcxDBTreeListColumn;
    cxDBTreeList1ct_number: TcxDBTreeListColumn;
    cxDBTreeList1name: TcxDBTreeListColumn;
    cxDBTreeList1name_1: TcxDBTreeListColumn;
    cxDBTreeList1name_2: TcxDBTreeListColumn;
    cxDBTreeList1name_3: TcxDBTreeListColumn;
    cxDBTreeList1id_cd_transaction: TcxDBTreeListColumn;
    cxDBTreeList1case: TcxDBTreeListColumn;
    cxDBTreeList1amount_in: TcxDBTreeListColumn;
    cxDBTreeList1amount_out: TcxDBTreeListColumn;
    cxDBTreeList1datetime: TcxDBTreeListColumn;
    cxDBTreeList1indicator: TcxDBTreeListColumn;
    JvLinkLabel2: TJvLinkLabel;
    Shape1: TShape;
    cxGrid1DBTableView1Column_Ord: TcxGridDBColumn;
    cxGridDBTableView6Column_ord: TcxGridDBColumn;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    GroupBox_Gaming_Day_GD: TGroupBox;
    ComboBox_Account_From_gd: TComboBox;
    ComboBox_Account_To_GD: TComboBox;
    Label_Account_from: TLabel;
    Label_Account_to: TLabel;
    ComboBox_MainGD: TComboBox;
    Label_MainTransaction: TLabel;
    cxGrid1DBTableView1exchange_rate: TcxGridDBColumn;
    cbAccount: TcxLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    btnAddCashTransaction: TcxButton;
    btnAddMultipleCashTransaction: TcxButton;
    btnStartTransfer: TcxButton;
    btnTransferRequest: TcxButton;
    btnTITO: TcxButton;
    btnRefresh: TcxButton;
    btnBufferShift: TcxButton;
    PopupMenu_Trans: TPopupMenu;
    Print1: TMenuItem;
    Exporttoexcel1: TMenuItem;
    PopupMenu_Values: TPopupMenu;
    PopupMenu_Balance: TPopupMenu;
    exporttoexcel2: TMenuItem;
    exporttoexcel3: TMenuItem;
    PopupMenu_uncorfirmed: TPopupMenu;
    exporttoexcel4: TMenuItem;
    PopupMenu_left: TPopupMenu;
    PopupMenu_Right: TPopupMenu;
    exporttoexcel5: TMenuItem;
    exporttoexcel6: TMenuItem;
    btnContinuousInfo: TcxButton;
    ImageList1: TImageList;
    cxDBTreeList1gaming_date: TcxDBTreeListColumn;
    ActionList_ShortCount: TActionList;
    ScrollBox1: TScrollBox;

    procedure cxTabSheet1Show(Sender: TObject);
    procedure btnAddCashTransactionClick(Sender: TObject);
    procedure btnAddMultipleCashTransactionClick(Sender: TObject);

    procedure btnSaveClick(Sender: TObject);

    procedure btnOpenCashdeskClick(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure btnConfirmPendingTransactionClick(Sender: TObject);
    procedure btnCloseCashDeskClick(Sender: TObject);
    procedure btnIntermediateClick(Sender: TObject);
    procedure cxGridDBTableView7FocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure btnChangeCashierClick(Sender: TObject);
    procedure cxGrid1DBTableView1nrPropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1multiplierPropertiesEditValueChanged
      (Sender: TObject);

    procedure cbTransactionPropertiesEditValueChanged(Sender: TObject);

    procedure cbCashdeskPropertiesEditValueChanged(Sender: TObject);
    procedure btnClearCashdeskClick(Sender: TObject);
    procedure cxGridDBTableView8FocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnStartTransferClick(Sender: TObject);
    procedure cxGridDBTableView8CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView8Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView8amount_OUTPropertiesEditValueChanged
      (Sender: TObject);
    procedure cxGridDBTableView8amount_INPropertiesEditValueChanged
      (Sender: TObject);
    procedure btnReverseTransactionClick(Sender: TObject);
    procedure btnCancelPendingTransactionClick(Sender: TObject);
    procedure cxGridDBTableView7CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnTransferRequestClick(Sender: TObject);
    procedure cbAccountPropertiesEditValueChanged(Sender: TObject);
    procedure cbDirectionPropertiesEditValueChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure cxGrid1DBTableView1nrPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnTITOClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);

    procedure btnBufferShiftClick(Sender: TObject);
    procedure cxDBTreeList1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);

    procedure Print1Click(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure exporttoexcel2Click(Sender: TObject);
    procedure exporttoexcel3Click(Sender: TObject);
    procedure exporttoexcel4Click(Sender: TObject);
    procedure exporttoexcel5Click(Sender: TObject);
    procedure exporttoexcel6Click(Sender: TObject);
    procedure btnContinuousInfoClick(Sender: TObject);
    procedure btnTran1Click(Sender: TObject);

  private
    procedure OnShowShortCutManager(Amultiple: Boolean);
    procedure OnClickButtonShortCutManager(Sender: TObject);
  public
    { Public declarations }
    FCurrency: TResultHandle;

    MultipleTransaction: Boolean;
    CurrentCashdeskDefaultCarryover: Boolean;

    TransactionTypeId: Integer;

    CashDeskOpened: Boolean;
    CashDeskIsAlwaysActive: Boolean;

    WhileSetupBalancing: Boolean;

    UseCashDeskAccountInsteadOfFromAccount: Boolean;
    UseCashDeskAccountInsteadOfToAccount: Boolean;
    UseTransferAccount: Boolean;

    TransactionAccountFrom: WideString;
    TransactionAccountTo: WideString;
    CurrentCashDeskAccount: WideString;

    MultipleAccountsManual: Boolean;
    NoDefaultAccount: string;
    DestinationAccount: WideString;
    DestinationAccountCashdeskId: WideString;
    DestinationAccountIsCashdeskAccount: Boolean;
    FLastShift: WideString;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure ExecSQL(Q: WideString);
    procedure ExecSQL_W(Q: WideString; WMsg: WideString);

    function ValidateFields(): Boolean;
    function NextShiftNumber(TypeId: Integer): WideString;
    function GetNextCashTransactionNumber(): Integer;
    // --------
    procedure PrepareShift(ShiftFrame: TAddShiftFrame; CTNumber: WideString;
      TypeId: Integer);

    procedure PrepareContinuousBalance(CIF: TContinuousInfoForm;
      CTNumber: WideString);

    function GetFieldAsString(Q: WideString; FieldName: WideString): WideString;
    function GetFieldAsSQLTimeStamp(Q: WideString; FieldName: WideString)
      : TSQLTimeStamp;
    procedure PrepareShiftButtons;
    function GetCurrentExchangeRate(IdCurrency: WideString): Double;
    procedure DoBilancing();
    procedure SetupBalancing();
    function IIf(B: Boolean; S1: WideString; S2: WideString): WideString;

    procedure ConfirmTransaction(CTNr: WideString);
    procedure DeleteTransaction(CTNr: WideString);
    procedure ShowTransaction(CTNr: WideString);

    function AmountsExpectedSQL(IdCashDesk: WideString; CTNr: WideString;
      IdCdTransaction: WideString; IdCdSubTransaction: WideString;
      FromShiftType: WideString): WideString;

    procedure SetGroupBox_GamingDay;
    procedure SetFocusAfterTransactions;
    procedure UpdateAccounts();
    procedure checkCurrency;

    function checkTransactionSave: Boolean;
    procedure UpdateExchangeRates(ct_number: string; TypeId: Integer);

    procedure ShowPendingTransactions();

    procedure ShowShift(CTNr: WideString);

  end;

var
  ListOfCashTransactionsFrame: TListOfCashTransactionsFrame;

implementation

uses
  uAddCashTransactionFrame,
  uFrmMain,
  uSystem,
  uGlobals,
  uStrings,
  uExceptions,
  uPermissions,
  cxGridDBDataDefinitions,
  DateUtils,
  StrUtils,
  uListOfShiftsFrame,
  uFrmCashierRelogin,
  uListOfTITOForm,
  uReportTransfer,
  uReportPreview,
  PgObjects,
  uExportsGrid;

{$R *.dfm}
// ---------------------------------------------------------------------------
// High-level transaction handling
// ---------------------------------------------------------------------------

procedure TListOfCashTransactionsFrame.ConfirmTransaction(CTNr: WideString);
begin

end;

constructor TListOfCashTransactionsFrame.Create(AOwner: TComponent);
begin
  inherited;
  MainTabs.ActivePage := cxTabSheet2;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel3.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel2.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel4.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel6.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel5.Caption := cPopMenu_eksport_toExcel;

end;

procedure TListOfCashTransactionsFrame.DeleteTransaction(CTNr: WideString);
begin

end;

destructor TListOfCashTransactionsFrame.Destroy;
begin
  inherited;
end;

function TListOfCashTransactionsFrame.GetFieldAsString(Q: WideString;
  FieldName: WideString): WideString;
begin

  GenericQuery.Active := False;
  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(Q);
  GenericQuery.Open();
  if (GenericQuery.RecordCount > 0) then
  begin
    Result := GenericQuery.FieldByName(FieldName).AsWideString;
  end
  else
  begin
    Result := '';
  end;
  GenericQuery.Close();

end;

function TListOfCashTransactionsFrame.GetFieldAsSQLTimeStamp(Q: WideString;
  FieldName: WideString): TSQLTimeStamp;
var

  PgTS: TPgTimeStamp;

  TS: TSQLTimeStamp;

  L: TStrings;

begin

  L := TStrings.Create();

  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(Q);
  GenericQuery.Open();
  if (GenericQuery.RecordCount > 0) then
  begin
    PgTS := GenericQuery.GetPgTimeStamp(FieldName);
    Result := PgTS.AsSQLTimeStamp;
  end
  else
  begin
    TS.Year := 0;
    TS.Month := 0;
    TS.Day := 0;
    TS.Hour := 0;
    TS.Minute := 0;
    TS.Second := 0;
    TS.Fractions := 0;
    Result := TS;
  end;
  GenericQuery.Close();

end;

procedure TListOfCashTransactionsFrame.ExecSQL_W(Q: WideString;
  WMsg: WideString);
begin
  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(Q);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', WMsg);
        Exit;
      end
      else
      begin
        HandleException(E, 'TListOfCashTransactionsFrame.ExecSQL()');
      end;
    end;
  end;
end;

procedure TListOfCashTransactionsFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList1.Count > 0 then
  begin
    TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList1);
    cxDBTreeList1.FullCollapse;
  end;
end;

procedure TListOfCashTransactionsFrame.exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView6.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid7);
  end;
end;

procedure TListOfCashTransactionsFrame.exporttoexcel3Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView5.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid6);
  end;
end;

procedure TListOfCashTransactionsFrame.exporttoexcel4Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView7.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid8);
  end;
end;

procedure TListOfCashTransactionsFrame.exporttoexcel5Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView8.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid9);
  end;
end;

procedure TListOfCashTransactionsFrame.exporttoexcel6Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

procedure TListOfCashTransactionsFrame.ExecSQL(Q: WideString);
begin
  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(Q);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'ExecSQL() internal error');
        Exit;
      end
      else
      begin
        HandleException(E, 'TListOfCashTransactionsFrame.ExecSQL()');
      end;
    end;
  end;
end;

procedure TListOfCashTransactionsFrame.PrepareShift(ShiftFrame: TAddShiftFrame;
  CTNumber: WideString; TypeId: Integer);
var
  QueryStr: WideString;
  IdUser, IdCdTransaction, IdCdSubTransaction: WideString;
  xIdLastShift: WideString;
  // xlastshiftdate: WideString;
  xTrans: TResultHandle;
begin

  Screen.Cursor := crHourGlass;

  // ExecSQL('begin;');

  xTrans := TResultHandle.Create;

  if CashDeskIsAlwaysActive then
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  ALWAYS ACTIVE';
  end
  else if CashDeskOpened then
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  OPENED';
  end
  else
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  CLOSED';
  end;

  ShiftFrame.TransactionType := TypeId;

  // ----------------------------------------------------------------------------

  FLastShift := GetFieldAsString
    ('select max(datetime) - time ''00:00:00.01'' as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ') and ' + '  (datetime < now()) and ' +
    // '  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5)) ', 'dt');

  if FLastShift = EmptyStr then
  begin
    FLastShift := DateToStr(now())
  end;

  ShiftFrame.ShiftDate := StrToDatetime(FLastShift);

  // TODO: Zrobi� funkcj� globaln�

  xIdLastShift := GetFieldAsString('select id, max(datetime) ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ') and ' + '  (datetime < now()) and ' +
    // '  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5,6)) ' + 'group by id order by id desc limit 1', 'id');

  IdUser := GetFieldAsString('select id from tbl_users ' +
    'where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  QueryStr := 'insert into tbl_cd_cash_transactions ' + '( ' + '  id_cashdesk, '
    + '  type, ' + '  ct_number, ' + '  datetime, ' + '  id_user, ' +
    '  is_multiple_cd_transaction, ' + '  confirmed, ' + '  direction ' + ') ' +
    'values ' + '(' + VarToStr(cbCashdesk.EditValue) + ', ' + IntToStr(TypeId) +
    ', ' + '''' + CTNumber + ''', ' + 'now(), ' + IdUser + ', ' + '  0, ' +
    '  1,' + '  1 ' + '); ';

  ExecSQL(QueryStr);

  IdCdTransaction := GetFieldAsString('select id from tbl_cd_cash_transactions '
    + 'where ct_number = ''' + CTNumber + '''', 'id');

  ShiftFrame.FromShiftType := '-1'; // IntToStr(FromShiftType);
  ShiftFrame.IdCdTransaction := IdCdTransaction;
  ShiftFrame.edId.Text := IdCdTransaction;

  // ----------------------------------------------------------------------------

  // Cash subtransaction

  QueryStr := 'insert into tbl_cd_cash_transactions_subt ' + '( ' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number ' + ') ' +
    'values ' + '(' + VarToStr(cbCashdesk.EditValue) + ', ' + IdCdTransaction +
    ', ' + '''' + CTNumber + ''' ' + ')';

  ExecSQL(QueryStr);

  IdCdSubTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions_subt ' + 'where ct_number = ''' +
    CTNumber + '''', 'id');

  // ----------------------------------------------------------------------------

  // Cash transaction categories

  QueryStr := 'insert into tbl_cd_cash_transactions_subt_categories ' + '(' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
    '  id_cd_sub_transaction, ' + '  id_cd_category' + ') ' + 'select ' +
    VarToStr(cbCashdesk.EditValue) + ', ' + IdCdTransaction + ', ' + '''' +
    CTNumber + ''', ' + IdCdSubTransaction + ', ' + '  id_category ' + 'from ' +
    '  tbl_cd_values ' + 'where ' + '  id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ' ' + 'group by ' + '  id_category; ';

  ExecSQL(QueryStr);

  // ----------------------------------------------------------------------------

  // Cash transaction values

  ShiftFrame.CurrentCashDesk := VarToStr(cbCashdesk.EditValue);
  ShiftFrame.CashDeskDefaultCarryOver := CurrentCashdeskDefaultCarryover;
  ShiftFrame.TransactionType := TypeId;

  QueryStr := 'insert into tbl_cd_cash_transactions_subt_categories_values ' +
    '(' + '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
    '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  id_cd_value, ' +
    '  count, ' + '  amount_in, ' + '  amount_out, ' + '  nr, ' +
    '  exchange_rate, direction, multiplier,goes_into_amount_expected,datetime, '
    + ' last_shift_datetime, currency_symbol, category_name  ' + ') ' +

    'select ' + VarToStr(cbCashdesk.EditValue) + ', ' + IdCdTransaction + ', ' +
    '''' + CTNumber + ''', ' + IdCdSubTransaction + ', ' + '  cdv.id_category, '
    + '  cdv.id_value, ' + '  0, ' + '  0, ' + '  0, ' + '  0, ' +
  // '  case when ch.buying is not null then ch.buying else c.buying end , 1, v.multiplier,1,  ' +
    ' c.buying  , 1, v.multiplier, 1, now(), ' + 'last_shift_date(' +
    ShiftFrame.CurrentCashDesk + '), ' + '  curr.symbol,cat.name ' + 'from ' +
    '  tbl_cd_values as cdv ' +
    '  left join tbl_values as v on v.id = cdv.id_value ' +
    '  left join tbl_currencies_exchange_rates as c on v.id_currency = c.id_currency '
    + '  left join tbl_currencies curr on c.id_currency=curr.id ' +
    '  left join tbl_categories cat on cat.id=v.id_category ' + 'where ' +
    '  cdv.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue);

  ExecSQL(QueryStr);

  // ----------------------------------------------------------------------------

  if xIdLastShift <> EmptyStr then
  begin

    QueryStr := 'update tbl_cd_cash_transactions_subt_categories_values ' +
      'set nr = ' +
      '  (select nr from tbl_cd_cash_transactions_subt_categories_values A ' +
      '   where A.id_cd_value = tbl_cd_cash_transactions_subt_categories_values.id_cd_value '
      + '     and A.id_cd_transaction = %s) ' +
      '  where tbl_cd_cash_transactions_subt_categories_values.ct_number= ''%s''';
    QueryStr := Format(QueryStr, [xIdLastShift, CTNumber]);

    ExecSQL(QueryStr);

  end;

  // Values ostatnia

  UpdateExchangeRates(CTNumber, TypeId);

  // Values query

  ShiftFrame.PgQuery3.Active := False;
  ShiftFrame.PgQuery3.SQL.Clear();
  ShiftFrame.PgQuery3.SQL.Add('select ' + '  c.id, ' + '  c.nr as value_nr, ' +
    '  v.multiplier as value_multiplier, ' +
    '  c.nr * v.multiplier as amount_base, ' +
    '  c.exchange_rate as change_chf, ' +
    '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
    '  cat.name as category_name, ' + '  v.name as value_name ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    '  ct_number = ''' + CTNumber + ''' and ' + '  c.id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' + 'order by '
    + '  v.sort_order asc ');
  ShiftFrame.PgQuery3.Active := True;

  // ----------------------------------------------------------------------------

  QueryStr := 'select ' + '  t1.category_name, ' + '  t2.currency_symbol, ' +
    '  t1.amount_0 as actual_amount_fc, ' + '  t1.amount_1 as actual_amount, ' +
    '  t2.amount_0 as amount_expected_fc, ' +
    '  t2.amount_1 as amount_expected, ' +
    '  t1.amount_1 - t2.amount_1 as difference ' + 'from ' + '( ' +

  // Actual amounts entered by cashier in current cashdesk
    'select ' + '  category_name(c.id_cd_category) as category_name, ' +
    '  curr.symbol as currency_symbol, ' +
    '  sum(c.nr * v.multiplier) as amount_0, ' +
    '  sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat, ' +
    '  tbl_currencies_exchange_rates as cer, ' + '  tbl_currencies as curr ' +
    'where ' + '  ct_number = ''' + CTNumber + ''' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id and ' +
    '  c.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  cer.valid_from <= now() and cer.valid_to >= now() and ' +
    '  cer.id_currency = curr.id and ' + '  v.id_currency = curr.id ' +
    'group by ' + '  c.id_cd_category, curr.symbol ' + ') ' +
    '  as t1, ' + '( ' +

  // Amounts expected
  // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
  // (we have no direction)
    'select ' + '  s.cat_name as category_name, ' +
    '  s.currency_symbol as currency_symbol, ' +
    '  sum(s.amount0) as amount_0, ' + '  sum(s.amount1) as amount_1 ' + 'from '
    + '(' + '  select ' +
  // Here we calculate amount expected for shifts  after click button open or close shift
    '    v.category_name as cat_name, ' +
    '    v.currency_symbol as currency_symbol, ' +
    '    sum(v.nr * v.multiplier ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount0, ' +
    '    sum(v.nr * v.multiplier * v.exchange_rate ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount1 ' +
    '  from ' + '    tbl_cd_cash_transactions_subt_categories_values as v ' +
    '  where ' + '    v.ct_number <> ''' + CTNumber + ''' and ' +
    '    (v.datetime <= now() and v.datetime >= ''' +
    StringToDataBAse(FLastShift) + ''')' + '     and ' + // > or >=
    '    v.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '    v.category_name is not null and ' +
  // '    substring(v.ct_number, 1, 2) <> ''CH'' and ' +
    '    substring(v.ct_number, 1, 3) <> ''INF''' + '  group by ' +
    '    cat_name, currency_symbol ' + ') ' + '  as s ' + 'group by ' +
    '  s.cat_name, s.currency_symbol ' + ') as t2 ' + 'where ' +
    '  t1.category_name = t2.category_name and ' +
    '  t1.currency_symbol = t2.currency_symbol';

  ShiftFrame.PgQuery4.Active := False;
  ShiftFrame.PgQuery4.SQL.Clear();
  ShiftFrame.PgQuery4.SQL.Add(QueryStr);
  ShiftFrame.PgQuery4.Active := True;

  ShiftFrame.mUserExplanation.Lines.Clear();

  // xTrans.query.Connection.Commit;
  xTrans.Free;

  // ExecSQL('commit;');

  Screen.Cursor := crDefault;

end;

procedure TListOfCashTransactionsFrame.btnSaveClick(Sender: TObject);
label
  IntermediateAuthorisation;
var
  QueryStr: WideString;
  CopiedFromCTNr, CTNr, CTNr2, CTNr3, TempCTNr, BaseCTNr, SourceAccount,
    DestinationAccount, TransferAccount, IdCdSubTransaction, IdCurrency,
    DirectionStr: WideString;
  NewCashDeskId: Integer;
  dDay, dMonth, dYear: Word;
  Direction, DestinationDirection: Integer;
  NeedsConfirmation, TransactionHasNoValues: Boolean;
  AmountCategory: WideString;
  xAllow_change_gd: string;
  xMain_transaction_gd: string;
  xAccount_from_gd: string;
  xAccount_to_gd: string;
  xQuery: string;
  xData_Main, xData_from, xData_to: string;
  xObject: TReportsPrinter;
  // xObject_2: TReportsPrinter;
  AuthMinValue, TotalValue: Double;
  MinTransactionValue, MaxTransactionValue : Double;
  NeedsAuthorisation: Boolean;
  ConfirmationMessage: WideString;
  LoginForm : TFrmCashierRelogin;
begin

  cxGridDBTableView8.DataController.Post();
  cxGrid1DBTableView1.DataController.Post();

  if not checkTransactionSave() then
  begin
    Information('Warning', 'Transaction is not completed and cannot be saved');
    Exit;
  end;

  // ------------------------------------------------------------------------------
  //
  // Authorisation
  //
  // ------------------------------------------------------------------------------

  if not MultipleTransaction then
  begin

    NeedsAuthorisation :=
      StrToBool(GetFieldAsString
      ('select needs_authorisation_before_transaction ' +
      'from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue),
      'needs_authorisation_before_transaction'));

    AuthMinValue := StrFloat(GetFieldAsString('select confirmation_min_value ' +
      'from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue), 'confirmation_min_value'));

    TotalValue :=
      StrFloat(GetFieldAsString
      ('select abs(sum(nr * (case when direction = 1 then 1 when direction = 2 then -1 else 0 end) * exchange_rate * multiplier)) as sum '
      + 'from tbl_cd_cash_transactions_subt_categories_values ' +
      'where ct_number = ''' + VarToStr(edTransactionNo.Text) + '''', 'sum'));

    // Min/max transaction values

    MinTransactionValue := StrFloat(GetFieldAsString('select min_value ' +
      'from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue), 'min_value'));
    MaxTransactionValue := StrFloat(GetFieldAsString('select max_value ' +
      'from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue), 'max_value'));

    if (MinTransactionValue > 0) and (TotalValue < MinTransactionValue) then
    begin
      Information('Warning', 'The total sum of transaction is below minimum value. Enter new values.');
      Exit;
    end;

    if (MaxTransactionValue > 0) and (TotalValue > MaxTransactionValue) then
    begin
      Information('Warning', 'The total sum of transaction is above maximum value. Enter new values.');
      Exit;
    end;

    // End of Min/max transaction values

    ConfirmationMessage := GetFieldAsString('select confirmation_message ' +
      'from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue), 'confirmation_message');

    if NeedsAuthorisation and ((TotalValue > AuthMinValue) or
      (Abs(TotalValue - AuthMinValue) < FLOAT_ZERO_MARGIN)) then
    begin

      Information('Warning',
        'Total value of transaction exceeds authorisation value. Transaction must be authorised');

    IntermediateAuthorisation:

      LoginForm := TFrmCashierRelogin.Create(Self);

      LoginForm.lbLogin.Caption := 'Authorisation by cashier: (' +
        ConfirmationMessage + ')';
      LoginForm.PgQuery1.Active := False;
      LoginForm.PgQuery1.SQL.Clear();
      LoginForm.PgQuery1.SQL.Add
        ('select ' + '  u.id as id_user, u.user_name ' + 'from ' +
        '  tbl_cd_cash_transactions as cd ' +
        '  left join tbl_transactions as t on cd.id_cd_transaction = t.id ' +
        '  left join tbl_transactions_users as tu on t.id = tu.id_transaction '
        + '  left join tbl_users as u on tu.id_user = u.id ' + 'where ' +
        '  u.id is not null and ' + '  cd.ct_number = ''' +
        VarToStr(edTransactionNo.Text) + '''');
      LoginForm.PgQuery1.Active := True;
      LoginForm.PgQuery6.Active := False;
      LoginForm.PgQuery6.SQL.Clear();
      LoginForm.PgQuery6.SQL.Add
        ('select ' + '  u.id as id_user, u.user_name ' + 'from ' +
        '  tbl_cd_cash_transactions as cd ' +
        '  left join tbl_transactions as t on cd.id_cd_transaction = t.id ' +
        '  left join tbl_transactions_users as tu on t.id = tu.id_transaction '
        + '  left join tbl_users as u on tu.id_user = u.id ' + 'where ' +
        '  u.id is not null and ' + '  cd.ct_number = ''' +
        VarToStr(edTransactionNo.Text) + '''');
      LoginForm.PgQuery6.Active := True;

      LoginForm.btnLogin.Caption := 'Authorise';
      LoginForm.ShowModal;

      if LoginForm.ModalResult = mrOk then
      begin
        if CheckUserPassword('Program',
          VarToStr(LoginForm.cbCashier.Text),
          LoginForm.edPassword.Text) <> 1 then
        begin
          Information('Warning', 'Invalid password - please try again');
          goto IntermediateAuthorisation;
        end;
        LoginForm.Free();
      end
      else if LoginForm.ModalResult = mrCancel then
      begin
        LoginForm.Free();
        Exit;
      end;

    end;

  end;

  cxGrid1DBTableView1.DataController.Post(True);

  SourceAccount := '';
  DestinationAccount := '';
  TransferAccount := '';

  Direction := StrToInt(IIf(lbTransactionDirection.Caption = 'In', '1',
    IIf(lbTransactionDirection.Caption = 'Out', '2',
    IIf(cbDirection.Text = 'In', '1', IIf(cbDirection.Text = 'Out',
    '2', '0')))));

  // ------------------------------------------------------------------------------
  //
  // Accounts
  //
  // ------------------------------------------------------------------------------

  if TransactionTypeId in [CT_TRANSFER_REQUEST_START,
    CT_TRANSFER_REQUEST_ACCEPTANCE, CT_ACTUAL_TRANSFER_START] then // Transfer
  begin
    SourceAccount := VarToStr(cbAccount.EditValue);
    DestinationAccount := // Current cashdesk account
      GetFieldAsString('select account_id from tbl_cd ' + 'where id = ''' +
      VarToStr(edCashDesk.Text) + '''', 'account_id');
    if (TransactionTypeId = CT_TRANSFER_REQUEST_START) or
      (TransactionTypeId = CT_TRANSFER_REQUEST_ACCEPTANCE) then
    begin
      Direction := 0;
    end
    else if (TransactionTypeId = CT_ACTUAL_TRANSFER_START) then
    begin
      Direction := 2;
    end;
  end
  else if MultipleTransaction then
  begin

    SourceAccount := 'NULL';
    DestinationAccount := 'NULL';

  end
  else if not MultipleTransaction then
  begin

    DirectionStr := IIf(lbTransactionDirection.Caption = 'In', '2',
      IIf(lbTransactionDirection.Caption = 'Out', '1',
      IIf(cbDirection.Text = 'In', '2', IIf(cbDirection.Text = 'Out',
      '1', '0'))));

    if DirectionStr = '2' then
    begin
      if cxGrid1.Visible then
      begin
        edAmountIN.Text :=
          FloatStr(cxGrid1DBTableView1.DataController.Summary.
          FooterSummaryValues[1]);
      end;
      edAmountOUT.Text := '0';
    end
    else if DirectionStr = '1' then
    begin
      edAmountIN.Text := '0';
      if cxGrid1.Visible then
      begin
        edAmountOUT.Text :=
          FloatStr(cxGrid1DBTableView1.DataController.Summary.
          FooterSummaryValues[1]);
      end;
    end
    else
    begin
      edAmountIN.Text := '0';
      edAmountOUT.Text := '0';
    end;

    UseCashDeskAccountInsteadOfFromAccount :=
      GetFieldAsString('select ' +
      '  use_current_cashdesk_account_instead_of_from ' + 'from ' +
      '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue),
      'use_current_cashdesk_account_instead_of_from') = '1';

    xAllow_change_gd := GetFieldAsString('select ' + '  allow_change_gd ' +
      'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue), 'allow_change_gd');

    xMain_transaction_gd := GetFieldAsString
      ('select ' + '  main_transaction_gd ' + 'from ' + '  tbl_transactions ' +
      'where ' + '  id = ' + VarToStr(cbTransaction.EditValue),
      'main_transaction_gd');

    xAccount_from_gd := GetFieldAsString('select ' + '  account_from_gd ' +
      'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue), 'account_from_gd');

    xAccount_to_gd := GetFieldAsString('select ' + '  Account_to_gd ' + 'from '
      + '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue), 'Account_to_gd');

    if UseCashDeskAccountInsteadOfFromAccount then
    begin
      SourceAccount := GetFieldAsString('select account_id from tbl_cd ' +
        'where id = ''' + VarToStr(edCashDesk.Text) + '''', 'account_id');
    end
    else
    begin
      SourceAccount := GetFieldAsString
        ('select account_id_from from tbl_transactions ' + 'where id = ''' +
        VarToStr(cbTransaction.EditValue) + '''', 'account_id_from');
    end;

    UseCashDeskAccountInsteadOfToAccount :=
      GetFieldAsString('select ' +
      '  use_current_cashdesk_account_instead_of_to ' + 'from ' +
      '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue),
      'use_current_cashdesk_account_instead_of_to') = '1';

    if UseCashDeskAccountInsteadOfToAccount then
    begin
      DestinationAccount := GetFieldAsString('select account_id from tbl_cd ' +
        'where id = ''' + VarToStr(edCashDesk.Text) + '''', 'account_id');
    end
    else if not MultipleAccountsManual then
    begin
      DestinationAccount := GetFieldAsString
        ('select account_id_to from tbl_transactions ' + 'where id = ''' +
        VarToStr(cbTransaction.EditValue) + '''', 'account_id_to');
    end
    else if MultipleAccountsManual then
    begin
      DestinationAccount := VarToStr(cbAccount.EditValue);
    end;

    UseTransferAccount := GetFieldAsString('select ' + '  use_in_transfer ' +
      'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
      VarToStr(cbTransaction.EditValue), 'use_in_transfer') = '1';

    if UseTransferAccount then
    begin
      TransferAccount := GetFieldAsString
        ('select account_id_transfer from tbl_transactions ' + 'where id = ''' +
        VarToStr(cbTransaction.EditValue) + '''', 'account_id_transfer');
    end
    else
    begin
      TransferAccount := '';
    end;

    if ((Trim(SourceAccount) = '') or (Trim(DestinationAccount) = '')) then
    begin
      Information('Warning',
        'The transaction is not completed, please fill out the account value');
      Exit;
    end;
  end;

  // ------------------------------------------------------------------------------
  //
  // End of: Accounts
  //
  // ------------------------------------------------------------------------------

  AmountCategory := GetFieldAsString('select id_category from tbl_transactions '
    + 'where id = ' + VarToStr(cbTransaction.EditValue), 'id_category');

  // TODO: if NORM has no values we write to system value !

  if AmountCategory <> '' then
  begin

    if GetFieldAsString
      ('select id_cd_category from tbl_cd_cash_transactions_subt_categories ' +
      'where ct_number = ''' + VarToStr(edTransactionNo.Text) + ''' and ' +
      'id_cd_category = ' + AmountCategory, 'id_cd_category') = '' then
    begin
      ExecSQL('insert into tbl_cd_cash_transactions_subt_categories ' +
        '(id_cashdesk, id_cd_transaction, id_cd_category, ct_number, ' +
        'id_cd_sub_transaction, nr) ' + 'values (' + VarToStr(edCashDesk.Text) +
        ', ' + VarToStr(cbTransaction.EditValue) + ', ' + AmountCategory +
        ', ''' + VarToStr(edTransactionNo.Text) + ''', ' + edId.Text + ', ' +
        '''' + FloatToStr(
        // Because only one of edAmount is > 0,
        // so we can add them to simplify things and multiply the sum by Direction
        (StrFloat(edAmountIN.Text) + StrFloat(edAmountOUT.Text)) * Direction) +
        '''::money::numeric::float8 ' + ')');
    end
    else
    begin
      ExecSQL('update tbl_cd_cash_transactions_subt_categories ' + 'set nr = ' +
        '''' + FloatToStr((StrFloat(edAmountIN.Text) +
        StrFloat(edAmountOUT.Text)) * Direction) + '''::money::numeric::float8 '
        + 'where id_cd_category = ' + AmountCategory + ' and ' +
        'ct_number = ''' + VarToStr(edTransactionNo.Text) + '''');
    end;

  end;

  QueryStr := 'update tbl_cd_cash_transactions_subt_categories_values ' +
    'set direction = ' + IntToStr(Direction) + 'where ct_number = ''' +
    VarToStr(edTransactionNo.Text) + '''';
  ExecSQL(QueryStr);

  xData_Main := 'NULL';
  xData_from := 'NULL';
  xData_to := 'NULL';
  if xAllow_change_gd = '1' then
  begin
    if ComboBox_MainGD.Visible then
    begin
      xData_Main := QuotedStr(ComboBox_MainGD.Text);
    end;
    if ComboBox_Account_From_gd.Visible then
    begin
      xData_from := QuotedStr(ComboBox_Account_From_gd.Text);
    end;
    if ComboBox_Account_To_GD.Visible then
    begin
      xData_to := QuotedStr(ComboBox_Account_To_GD.Text);
    end;

    xQuery := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  account_id_from = ''' + SourceAccount + ''', ' + '  account_id_to = '''
      + DestinationAccount + ''', ' + '  account_id_transfer = ''' +
      TransferAccount + ''', ' + '  remarks = ''' +
      mTransactionExplanation.Lines.Text + ''', ' + '  amount_in  = ''' +
      FloatStr(StrFloat(edAmountIN.Text)) + '''::money::numeric::float8, ' +
      '  amount_out = ''' + FloatStr(StrFloat(edAmountOUT.Text)) +
      '''::money::numeric::float8, ' + '  direction = ' + IntToStr(Direction) +
      ',' + '  allow_change_gd=' + xAllow_change_gd + ',' +
      '  main_transaction_gd=' + xMain_transaction_gd + ',' +
      '  account_from_gd=' + xAccount_from_gd + ',' + '  account_to_gd=' +
      xAccount_to_gd + ',' + '  acc_from_gd=' + xData_from + ',' +
      '  acc_to_gd=' + xData_to + ',' + '  gaming_date=' + xData_Main + ' ' +
      ' where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';
  end
  else
  begin

    if Trim(xAllow_change_gd) = '' then
    begin
      xAllow_change_gd := 'NULL';
    end;
    if Trim(xMain_transaction_gd) = '' then
    begin
      xMain_transaction_gd := 'NULL';
    end;
    if Trim(xAccount_from_gd) = '' then
    begin
      xAccount_from_gd := 'NULL';
    end;

    if Trim(xAccount_to_gd) = '' then
    begin

      xAccount_to_gd := 'NULL';
    end;

    xQuery := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  account_id_from = ''' + SourceAccount + ''', ' + '  account_id_to = '''
      + DestinationAccount + ''', ' + '  account_id_transfer = ''' +
      TransferAccount + ''', ' + '  remarks = ''' +
      mTransactionExplanation.Lines.Text + ''', ' + '  amount_in  = ''' +
      FloatStr(StrFloat(edAmountIN.Text)) + '''::money::numeric::float8, ' +
      '  amount_out = ''' + FloatStr(StrFloat(edAmountOUT.Text)) +
      '''::money::numeric::float8, ' + '  direction = ' + IntToStr(Direction) +
      ',' + '  allow_change_gd=' + xAllow_change_gd + ',' +
      '  main_transaction_gd=' + xMain_transaction_gd + ',' +
      '  account_from_gd=' + xAccount_from_gd + ',' + '  account_to_gd=' +
      xAccount_to_gd + ' '

      + ' where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';
  end;

  ExecSQL(xQuery);

  if TransactionTypeId = CT_NORMAL then
  begin

    if not MultipleTransaction then
    begin

      // TODO: If normal transaction has no values

      TransactionHasNoValues :=
        GetFieldAsString('select ' + '  count(tv.*) as cnt ' + 'from ' +
        '  tbl_transactions_values as tv ' +
        '  left join tbl_values as v on v.id = tv.id_value ' + 'where ' +
        '  tv.id_transaction = ' + VarToStr(cbTransaction.EditValue) + ' and ' +
        '  v.is_system_value <> ''1''', 'cnt') = '0';

      if TransactionHasNoValues then
      begin

        IdCdSubTransaction :=
          GetFieldAsString('select id from tbl_cd_cash_transactions_subt ' +
          'where ct_number = ''' + VarToStr(edTransactionNo.Text) + '''', 'id');

        IdCurrency := GetFieldAsString
          ('select id_currency from tbl_transactions ' + 'where id = ' +
          VarToStr(cbTransaction.EditValue), 'id_currency');

        QueryStr := 'update ' +
          '  tbl_cd_cash_transactions_subt_categories_values ' + 'set ' +
          '  nr = ''' + FloatStr(StrFloat(edAmountIN.Text) +

          StrFloat(edAmountOUT.Text)) + '''::money::numeric::float8 ' + 'where '
          + '  id_cd_sub_transaction = ' + IdCdSubTransaction + ' and ' +
          '  id_cd_value in ' + '(' + '  select id from tbl_values where ' +
          '  is_system_value = ''1'' and ' +
          '  id_category = id_cd_category and ' + '  id_currency = ' +
          IdCurrency + '  limit 1 ' + ')' + 'and ' + '  ct_number = ''' +
          VarToStr(edTransactionNo.Text) + '''';

        ExecSQL(QueryStr);

      end;

      if
        MultipleAccountsManual or
        DestinationAccountIsCashdeskAccount
      then
      begin
        if DestinationAccountIsCashdeskAccount then
        begin
          DecodeDate(now(), dYear, dMonth, dDay);
          CTNr2 := frmMain.ShiftInfo[CT_NORMAL].Mnemonic + // TODO: Unsafe
            '/' + DestinationAccountCashdeskId + '/' + IntToStr(dDay) + '/' +
            IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
            IntToStr(GetNextCashTransactionNumber());

          DestinationDirection :=
            StrToInt(IIf(lbTransactionDirection.Caption = 'In', '2',
            IIf(lbTransactionDirection.Caption = 'Out', '1',
            IIf(cbDirection.Text = 'In', '2', IIf(cbDirection.Text = 'Out',
            '1', '0')))));

          frmMain.CopyTransaction(VarToStr(edTransactionNo.Text), CTNr2,
            CT_NORMAL, StrToInt(DestinationAccountCashdeskId),
            DestinationDirection, VarToStr(edTransactionNo.Text));

          ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
            '  confirmed_from_other_transaction = 1' + 'where ' +
            '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''');

          NeedsConfirmation :=
            GetFieldAsString('select needs_confirmation from tbl_transactions '
            + 'where id = ' + VarToStr(cbTransaction.EditValue),
            'needs_confirmation') = '1';

          if not NeedsConfirmation then
          begin

            ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
              '  confirmed = 1' + 'where ' + '  ct_number = ''' +
              VarToStr(edTransactionNo.Text) + '''');

            ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
              '  confirmed = 1' + 'where ' + '  ct_number = ''' + CTNr2 + '''');

          end;
        end
        else
        begin
          NeedsConfirmation :=
            GetFieldAsString('select needs_confirmation from tbl_transactions '
            + 'where id = ' + VarToStr(cbTransaction.EditValue),
            'needs_confirmation') = '1';

          if not NeedsConfirmation then
          begin

            ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
              '  confirmed = 1' + 'where ' + '  ct_number = ''' +
              VarToStr(edTransactionNo.Text) + '''');
          end;
        end;

      end;
    end;
  end
  else if TransactionTypeId = CT_ACTUAL_TRANSFER_START then
  begin
    if MultipleAccountsManual then
    begin
      if DestinationAccountIsCashdeskAccount then
      begin
        DecodeDate(now(), dYear, dMonth, dDay);
        CTNr2 := frmMain.ShiftInfo[CT_ACTUAL_TRANSFER_ACCEPTANCE].Mnemonic +
        // TODO: Unsafe
          '/' + DestinationAccountCashdeskId + '/' + IntToStr(dDay) + '/' +
          IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
          IntToStr(GetNextCashTransactionNumber());

        DestinationDirection :=
          StrToInt(IIf(lbTransactionDirection.Caption = 'In', '2',
          IIf(lbTransactionDirection.Caption = 'Out', '1',
          IIf(cbDirection.Text = 'In', '2', IIf(cbDirection.Text = 'Out',
          '1', '0')))));

        frmMain.CopyTransaction(VarToStr(edTransactionNo.Text), CTNr2,
          CT_ACTUAL_TRANSFER_ACCEPTANCE, StrToInt(DestinationAccountCashdeskId),
          DestinationDirection, VarToStr(edTransactionNo.Text));

        ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
          '  confirmed_from_other_transaction = 1' + 'where ' +
          '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''');

        NeedsConfirmation := GetFieldAsString
          ('select needs_confirmation from tbl_transactions ' + 'where id = ' +
          VarToStr(cbTransaction.EditValue), 'needs_confirmation') = '1';

        if not NeedsConfirmation then
        begin

          ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
            '  confirmed = 1' + 'where ' + '  ct_number = ''' +
            VarToStr(edTransactionNo.Text) + '''');

          ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
            '  confirmed = 1' + 'where ' + '  ct_number = ''' + CTNr2 + '''');

        end;
      end
      else
      begin
        NeedsConfirmation := GetFieldAsString
          ('select needs_confirmation from tbl_transactions ' + 'where id = ' +
          VarToStr(cbTransaction.EditValue), 'needs_confirmation') = '1';

        if not NeedsConfirmation then
        begin

          ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' +
            '  confirmed = 1' + 'where ' + '  ct_number = ''' +
            VarToStr(edTransactionNo.Text) + '''');
        end;
      end;

    end;

  end
  else if TransactionTypeId = CT_TRANSFER_REQUEST_START then
  begin

    // Copy transaction (create TRANSFER_REQUEST_ACCEPT)

    try
      NewCashDeskId :=
        StrToInt(GetFieldAsString('select ' + '  cd.id ' + 'from ' +
        '  tbl_accounts as a ' +
        '  left join tbl_cd as cd on cd.account_id = a.account_id ' + 'where ' +
        '  a.account_id = ''' + SourceAccount + '''', 'id'));
    except

    end;

    DecodeDate(now(), dYear, dMonth, dDay);
    CTNr2 := frmMain.ShiftInfo[CT_TRANSFER_REQUEST_ACCEPTANCE].Mnemonic +
    // TODO: Unsafe
      '/' + IntToStr(NewCashDeskId) + '/' + IntToStr(dDay) + '/' +
      IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
      IntToStr(GetNextCashTransactionNumber());

    frmMain.CopyTransaction(edTransactionNo.Text, CTNr2,
      CT_TRANSFER_REQUEST_ACCEPTANCE, NewCashDeskId, 1,
      VarToStr(edTransactionNo.Text));

  end
  else if TransactionTypeId = CT_TRANSFER_REQUEST_ACCEPTANCE then
  begin

    CTNr := edTransactionNo.Text;

    ExecSQL('update tbl_cd_cash_transactions ' + 'set confirmed = 1 ' + 'where '
      + '  ct_number = ''' + CTNr + '''');

    BaseCTNr := GetFieldAsString('select base_ct_number ' +
      'from tbl_cd_cash_transactions ' + 'where ct_number = ''' + CTNr + '''',
      'base_ct_number');

    ExecSQL('update tbl_cd_cash_transactions ' + 'set confirmed = 1 ' + 'where '
      + '  ct_number = ''' + BaseCTNr + '''');

    // Create ACTUAL_TRANSFER_REQUEST & ACCEPTANCE in cashdesk 1 & 2

    NewCashDeskId := StrToInt(GetFieldAsString('select ' + '  id_cashdesk ' +
      'from ' + '  tbl_cd_cash_transactions ' + 'where ' + '  ct_number = ''' +
      BaseCTNr + '''', 'id_cashdesk'));

    DecodeDate(now(), dYear, dMonth, dDay);

    CTNr2 := frmMain.ShiftInfo[CT_ACTUAL_TRANSFER_START].Mnemonic +
    // TODO: Unsafe
      '/' + VarToStr(cbCashdesk.EditValue) + '/' + IntToStr(dDay) + '/' +
      IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
      IntToStr(GetNextCashTransactionNumber());

    frmMain.CopyTransaction(CTNr, CTNr2, CT_ACTUAL_TRANSFER_START,
      StrToInt(VarToStr(cbCashdesk.EditValue)), 2, '');

    DecodeDate(now(), dYear, dMonth, dDay);

    CTNr3 := frmMain.ShiftInfo[CT_ACTUAL_TRANSFER_ACCEPTANCE].Mnemonic +
    // TODO: Unsafe
      '/' + IntToStr(NewCashDeskId) + '/' + IntToStr(dDay) + '/' +
      IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
      IntToStr(GetNextCashTransactionNumber());

    frmMain.CopyTransaction(CTNr, CTNr3, CT_ACTUAL_TRANSFER_ACCEPTANCE,
      NewCashDeskId, 1, CTNr2);

    NeedsConfirmation := GetFieldAsString
      ('select needs_confirmation from tbl_transactions ' + 'where id = ' +
      VarToStr(cbTransaction.EditValue), 'needs_confirmation') = '1';

    if not NeedsConfirmation then
    begin

      ExecSQL('update tbl_cd_cash_transactions set ' +
        'confirmed = 1 where ct_number = ''' + CTNr2 + '''');

      ExecSQL('update tbl_cd_cash_transactions set ' +
        'confirmed = 1 where ct_number = ''' + CTNr3 + '''');

    end;
  end;

  UpdateAccounts();

  if MultipleTransaction then
  begin

    xObject := TReportsPrinter.Create;
    xObject.FIdReport := frmMain.GetFieldAsInteger
      ('Select id_report from tbl_multiple_transactions where id=' +
      VarToStr(cbTransaction.EditValue), 'id_report');
    try
      xObject.FidCashDesk := StrInt(edCashDesk.Text);
    except
      xObject.FidCashDesk := 0;
    end;
    xObject.FCopies := frmMain.GetFieldAsInteger
      ('Select how_many_copies from tbl_multiple_transactions where id=' +
      VarToStr(cbTransaction.EditValue), 'how_many_copies');
    xObject.Fct_number := edTransactionNo.Text;
    xObject.PrintReport;
    xObject.Free;

  end
  else
  begin

    xObject := TReportsPrinter.Create;
    xObject.FIdReport := frmMain.GetFieldAsInteger
      ('Select id_report from tbl_transactions where id=' +
      VarToStr(cbTransaction.EditValue), 'id_report');
    try
      xObject.FidCashDesk := StrInt(edCashDesk.Text);
    except
      xObject.FidCashDesk := 0;
    end;
    xObject.FCopies := frmMain.GetFieldAsInteger
      ('Select how_many_copies from tbl_transactions where id=' +
      VarToStr(cbTransaction.EditValue), 'how_many_copies');
    xObject.Fct_number := edTransactionNo.Text;
    xObject.PrintReport;
    xObject.Free;

  end;

  if not MultipleTransaction then
  begin
    cxGrid1DBTableView1.DataController.Post(True);
  end
  else
  begin
    cxGrid1DBTableView1.DataController.Post(True);
  end;

  cxTabSheet1.TabVisible := False;
  cxTabSheet1.Enabled := False;
  cxTabSheet1.Caption := '    Cash transaction    ';

  cxTabSheet2.Enabled := True;
  // 1 cxTabSheet_ShortCut.Enabled := True;

  MainTabs.Properties.ActivePage := cxTabSheet2;

  PgQuery22.Active := False;
  PgQuery22.Active := True;

  if cxDBTreeList1.Count > 0 then
  begin
    cxDBTreeList1.FocusedNode := cxDBTreeList1.Items[0];
    cxDBTreeList1.SetFocus;
  end;

  PgQuery9.Active := False;
  PgQuery9.Active := True;

  PgQuery12.Active := False;
  PgQuery12.Active := True;

  PgQuery13.Active := False;
  PgQuery13.Active := True;

end;

procedure TListOfCashTransactionsFrame.UpdateAccounts;
var
  i: Integer;
  QueryStr: string;
  xidSub: string;
  xDirection: string;
  xAccount_id_from, xAccount_id_to: string;
  xName_from, xName_to: string;
  DestinationAccount: string;
  DestinationAccountName: string;

begin

  DestinationAccount := // Current cashdesk account
    GetFieldAsString('select account_id from tbl_cd ' + 'where id = ''' +
    VarToStr(edCashDesk.Text) + '''', 'account_id');

  QueryStr :=

    'select name from tbl_accounts ' +
    'where account_id in (select account_id from tbl_cd where id=%s) ';
  QueryStr := Format(QueryStr, [edCashDesk.Text]);

  DestinationAccountName := GetFieldAsString(QueryStr, 'name');

  for i := 0 to cxGridDBTableView8.DataController.RecordCount - 1 do
  begin

    xidSub := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]);
    xDirection := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[6]);

    if TopGenericQuery.Active then
      TopGenericQuery.Close;
    TopGenericQuery.SQL.Clear;
    QueryStr :=
      ' Select account_id_from, account_id_to,a1.name as Name_from ,a2.name as Name_to, '
      + ' use_current_cashdesk_account_instead_of_to, use_current_cashdesk_account_instead_of_from '
      + ' from tbl_multiple_transactions_transactions mp ' +
      ' join  tbl_transactions tran on tran.id=mp.id_transaction ' +
      ' left join tbl_accounts a1 on a1.account_id = tran.account_id_from ' +
      ' left join tbl_accounts a2 on a2.account_id = tran.account_id_to ' +
      ' where id_transaction=%s ';

    QueryStr := Format(QueryStr, [xidSub]);
    TopGenericQuery.SQL.Add(QueryStr);
    TopGenericQuery.Open;

    if ((xDirection = '1') and
      (TopGenericQuery.FieldByName('use_current_cashdesk_account_instead_of_to')
      .AsInteger = 0)) then
    begin
      xAccount_id_from := TopGenericQuery.FieldByName('account_id_to').AsString;
      xName_from := TopGenericQuery.FieldByName('Name_to').AsString;
    end
    else if ((xDirection = '1') and
      (TopGenericQuery.FieldByName('use_current_cashdesk_account_instead_of_to')
      .AsInteger = 1)) then
    begin

      xAccount_id_from := DestinationAccount;
      xName_from := DestinationAccountName;
    end
    else if ((xDirection = '2') and
      (TopGenericQuery.FieldByName('use_current_cashdesk_account_instead_of_to')
      .AsInteger = 0)) then
    begin

      xAccount_id_from := TopGenericQuery.FieldByName
        ('account_id_from').AsString;
      xName_from := TopGenericQuery.FieldByName('Name_from').AsString;

    end
    else if ((xDirection = '2') and
      (TopGenericQuery.FieldByName('use_current_cashdesk_account_instead_of_to')
      .AsInteger = 1)) then
    begin
      xAccount_id_from := DestinationAccount;
      xName_from := DestinationAccountName;
    end;

    // -----------------------------------------------------------------------------------------

    if ((xDirection = '1') and
      (TopGenericQuery.FieldByName
      ('use_current_cashdesk_account_instead_of_from').AsInteger = 0)) then
    begin

      xAccount_id_to := TopGenericQuery.FieldByName('account_id_from').AsString;

      xName_to := TopGenericQuery.FieldByName('Name_from').AsString;

    end
    else if ((xDirection = '1') and
      (TopGenericQuery.FieldByName
      ('use_current_cashdesk_account_instead_of_from').AsInteger = 1)) then
    begin

      xAccount_id_to := DestinationAccount;
      xName_to := DestinationAccountName;
    end
    else if ((xDirection = '2') and
      (TopGenericQuery.FieldByName
      ('use_current_cashdesk_account_instead_of_from').AsInteger = 0)) then
    begin

      xAccount_id_to := TopGenericQuery.FieldByName('account_id_from').AsString;
      xName_to := TopGenericQuery.FieldByName('Name_from').AsString;

    end
    else if ((xDirection = '2') and
      (TopGenericQuery.FieldByName
      ('use_current_cashdesk_account_instead_of_from').AsInteger = 1)) then
    begin
      xAccount_id_to := DestinationAccount;
      xName_to := DestinationAccountName;
    end;

    QueryStr :=
      'Update tbl_cd_cash_transactions_subt set account_from=''%s'', account_to=''%s'','
      + 'id_account_from=%s, id_account_to=%s where multiple_subtransaction_id =%s and id_cd_transaction=%s';
    if xName_from = EmptyStr then
      xName_from := 'NULL';
    if xName_to = EmptyStr then
      xName_to := 'NULL';
    if xAccount_id_from = EmptyStr then
      xAccount_id_from := 'NULL';
    if xAccount_id_to = EmptyStr then
      xAccount_id_to := 'NULL';

    QueryStr := Format(QueryStr, [xName_from, xName_to, xAccount_id_from,
      xAccount_id_to, xidSub, edId.Text]);

    if TopGenericQuery.Active then
      TopGenericQuery.Close;
    TopGenericQuery.SQL.Clear;
    TopGenericQuery.SQL.Add(QueryStr);
    TopGenericQuery.Execute;

  end;

end;

procedure TListOfCashTransactionsFrame.cbAccountPropertiesEditValueChanged
  (Sender: TObject);
var
  SelectedCashDeskOpened, SelectedCashDeskAlwaysActive: Boolean;
begin

  if VarToStr(cbAccount.EditValue) <> '' then
  begin

    DestinationAccount := VarToStr(cbAccount.EditValue);

    DestinationAccountIsCashdeskAccount :=
      GetFieldAsString('select cd_name from tbl_cd ' + 'where account_id = ''' +
      DestinationAccount + '''', 'cd_name') <> '';

    DestinationAccountCashdeskId :=
      GetFieldAsString('select id from tbl_cd ' + 'where account_id = ''' +
      DestinationAccount + '''', 'id');

    // Now we check if this cashdesk is opened

    if DestinationAccountCashdeskId <> '' then
    begin

      SelectedCashDeskOpened := GetFieldAsString('select ' + '  type ' + 'from '
        + '  tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
        DestinationAccountCashdeskId + ') and ' + '  (type = ' +
        IntToStr(CT_CLOSE_SHIFT) + ' or ' + '   type = ' +
        IntToStr(CT_OPEN_SHIFT) + ') ' + 'order by datetime desc ' + 'limit 1',
        'type') = IntToStr(CT_OPEN_SHIFT);

      SelectedCashDeskAlwaysActive :=
        GetFieldAsString('select always_active from tbl_cd ' + 'where id = ' +
        DestinationAccountCashdeskId, 'always_active') = '1';

      if not(SelectedCashDeskOpened or SelectedCashDeskAlwaysActive) then
      begin
        Warning('The selected cashdesk is closed - please select another cashdesk');
        cbAccount.EditValue := VarToStr('');
        Exit;
      end;

    end
    else
    begin
      if TransactionTypeId = CT_TRANSFER_REQUEST_START then
      begin
        if cbAccount.Visible then
        begin
          Warning('Selected account is not valid cashdesk account. Please select another cashdesk.');
          if cbAccount.CanFocus then
            cbAccount.SetFocus;
        end;
      end;
    end;
  end;

end;

function TListOfCashTransactionsFrame.AmountsExpectedSQL(IdCashDesk: WideString;
  CTNr: WideString; IdCdTransaction: WideString; IdCdSubTransaction: WideString;
  FromShiftType: WideString): WideString;
var
  AlwaysActive: Boolean;
  ZeroTimeStamp, LastShiftDateTime, LastShiftDateTimeByType: TSQLTimeStamp;
  FromDatetimeStrPlus1, FromDateTimeStrMinus1, LastShiftDateTimeStr,
    LastShiftDateTimeByTypeStr, TransactionType, TimeStampFormatString
    : WideString;
begin

  TimeStampFormatString := frmMain.FormatSettings.ShortDateFormat + ' ' +
    'hh:nn:ss.zzz';

  ZeroTimeStamp.Year := 0;
  ZeroTimeStamp.Month := 0;
  ZeroTimeStamp.Day := 0;
  ZeroTimeStamp.Hour := 0;
  ZeroTimeStamp.Minute := 0;
  ZeroTimeStamp.Second := 0;
  ZeroTimeStamp.Fractions := 0;

  AlwaysActive := GetFieldAsString
    ('select always_active from tbl_cd where id = ' + IdCashDesk,
    'always_active') = '1';

  if FromShiftType <> '' then
  begin
    LastShiftDateTimeByType := GetFieldAsSQLTimeStamp
      ('select max(datetime) as maxd ' + 'from tbl_cd_cash_transactions ' +
      'where (type = ' + FromShiftType + ') and (id_cashdesk = ' + IdCashDesk +
      ')', 'maxd');
    if LastShiftDateTimeByType.Year = 0 then
      LastShiftDateTimeByType := ZeroTimeStamp;
  end
  else
  begin
    LastShiftDateTime := GetFieldAsSQLTimeStamp('select max(datetime) as maxd '
      + 'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
      IdCashDesk + ') and ' + '  (datetime < now()) and ' +
      '  (type in (1, 3, 5, 7, 8, 9))', 'maxd');
    if LastShiftDateTime.Year = 0 then
      LastShiftDateTime := ZeroTimeStamp;
  end;

  LastShiftDateTimeByTypeStr := SQLTimeStampToStr(TimeStampFormatString,
    LastShiftDateTimeByType);
  LastShiftDateTimeStr := SQLTimeStampToStr(TimeStampFormatString,
    LastShiftDateTime);

  FromDatetimeStrPlus1 := SQLTimeStampToStr(TimeStampFormatString,
    GetFieldAsSQLTimeStamp(
    // PROBLEM:
    // 1) For multiple transactions
    // there can be differences about of 0.1 ms between subtransactions
    // BUT :
    // 2) For values we can have differences about of f.e. 500 ms
    // so we have to take timestamp of the last value for given transaction
    'select max(datetime) + time ''00:00:00.01''  as dt ' +
    // + time ''00:00:00.01''
    'from tbl_cd_cash_transactions_subt_categories_values ' +
    'where ct_number = ''' + CTNr + '''', 'dt'));

  FromDateTimeStrMinus1 := SQLTimeStampToStr(TimeStampFormatString,
    GetFieldAsSQLTimeStamp(
    // PROBLEM:
    // 1) For multiple transactions
    // there can be differences about of 0.1 ms between subtransactions
    // BUT :
    // 2) For values we can have differences about of f.e. 500 ms
    // so we have to take timestamp of the last value for given transaction
    'select max(datetime) - time ''00:00:00.01''  as dt ' +
    // + time ''00:00:00.01''
    'from tbl_cd_cash_transactions_subt_categories_values ' +
    'where ct_number = ''' + CTNr + '''', 'dt'));

  Result := '    select ' + '      v.category_name, ' +
    '      v.currency_symbol, ' + '      v.exchange_rate as exchange_rate, ' +
    '      sum((v.multiplier * v.nr) * (case when v.direction = 1 then 1 else -1 end)) as amount_foreign, '
    + '      sum((v.multiplier * v.nr * v.exchange_rate) * (case when v.direction = 1 then 1 else -1 end)) as amount_base '
    + '    from ' +
    '      tbl_cd_cash_transactions_subt_categories_values as v ' + '    where '
    + '      (v.id_cashdesk = ' + IdCashDesk + ') and ' +
    '      (v.datetime <= ''' + FromDatetimeStrPlus1 + ''') and ' +
  // WARNING: <=
    IIf(FromShiftType <> '',
    // 1) Je�eli klikn�li�my na Open lub Close Shift:
    '(v.datetime >= ''' + FromDateTimeStrMinus1 + ''')',
    // LastShiftDateTimeByTypeStr
    // 2) Je�eli klikn�li�my na transakcj�:
    IIf(AlwaysActive, '(v.datetime >= ''' + LastShiftDateTimeStr + ''')',
    '(v.datetime >= ''' + LastShiftDateTimeStr + ''')')) + ' and ' +
    '      (v.id_cd_transaction <= ' + IdCdTransaction + ') and ' +
    '      (v.category_name is not null) and  ' +
    '      (substring(v.ct_number, 1, 3) <> ''INF'') and ' +
    '      (substring(v.ct_number, 1, 10) <> ''TRREQSTART'') and ' +
    '      (substring(v.ct_number, 1, 10) <> ''TRACTSTART'')' + '    group by '
    + '      v.category_name, ' + '      v.currency_symbol, ' +
    '      v.exchange_rate ';

end;

procedure TListOfCashTransactionsFrame.cbCashdeskPropertiesEditValueChanged
  (Sender: TObject);
var
  SelectedRow: Integer;

  QueryShifts, IdCashDesk, DateTime, FromShiftType, CTNr, LoggedCashier,
    CurrentCashier: WideString;

  xQuery: string;

  AlwaysActive, AnotherCashierIsLoggedIn: Boolean;
  ZeroTimeStamp, LastShiftDateTime: TSQLTimeStamp;
  FromDatetimeStr, LastShiftDateTimeStr, TimeStampFormatString: WideString;

begin

  TimeStampFormatString := frmMain.FormatSettings.ShortDateFormat + ' ' +
    'hh:nn:ss.zzz';

  ZeroTimeStamp.Year := 0;
  ZeroTimeStamp.Month := 0;
  ZeroTimeStamp.Day := 0;
  ZeroTimeStamp.Hour := 0;
  ZeroTimeStamp.Minute := 0;
  ZeroTimeStamp.Second := 0;
  ZeroTimeStamp.Fractions := 0;

  Screen.Cursor := crHourGlass;

  frmMain.InitializeShifts();

  IdCashDesk := VarToStr(cbCashdesk.EditValue);
  if IdCashDesk <> '' then
  begin

    LoggedCashier := GetFieldAsString
      ('select id_user from tbl_cd_login where id_cashdesk = ' + IdCashDesk,
      'id_user');

    CurrentCashier := GetFieldAsString
      ('select id from tbl_users where user_name = ''' + frmMain.CurrentUserName
      + '''', 'id');

    // We check whether another cashier is already logged in

    AnotherCashierIsLoggedIn := False;
    if (LoggedCashier <> '') then
    begin
      AnotherCashierIsLoggedIn := (LoggedCashier <> CurrentCashier);
    end;

    if AnotherCashierIsLoggedIn then
    begin

      Information('Warning',
        'Another cashier is logged in to selected cashdesk');
      cbCashdesk.ItemIndex := 0;
      Exit;

    end
    else // If not we add current cashier to tbl_cd_login
    begin

      if (LoggedCashier <> '') then
      begin
        ExecSQL('delete from tbl_cd_login where id_user = ' + LoggedCashier);
      end;

      ExecSQL('delete from tbl_cd_login where id_cashdesk = ' +
        VarToStr(cbCashdesk.EditValue));

      ExecSQL('insert into tbl_cd_login (id_cashdesk, id_user, datetime) ' +
        'values (' + IdCashDesk + ', ' + CurrentCashier + ', now())');

    end;

    // End of check

    AlwaysActive := GetFieldAsString
      ('select always_active from tbl_cd where id = ' + IdCashDesk,
      'always_active') = '1';

    LastShiftDateTime := GetFieldAsSQLTimeStamp('select max(datetime) as maxd '
      + 'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
      IdCashDesk + ') and ' + '  (datetime < now()) and ' +
      '  (type in (1, 3, 5, 7, 8, 9))', 'maxd');
    if LastShiftDateTime.Year = 0 then
      LastShiftDateTime := ZeroTimeStamp;
    LastShiftDateTimeStr := SQLTimeStampToStr(TimeStampFormatString,
      LastShiftDateTime);

    CurrentCashDeskAccount := GetFieldAsString('select account_id from tbl_cd '
      + 'where id = ' + IdCashDesk, 'account_id');

    QueryShifts := 'select types.name, t.* ' +
      'from tbl_cd_cash_transactions as t, tbl_cd_cash_transactions_types as types '
      + 'where ' + '(' + '  t.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) +
      ')' + ' and ' + '(' + '  t.type in ' +
      '    (select type from tbl_cd_cash_transactions_types where is_shift = 1) '
      + ')' + ' and ' + '   t.type = types.type';

    PgQuery10.Close();
    PgQuery10.SQL.Clear();
    PgQuery10.SQL.Add(QueryShifts);
    PgQuery10.Open();

    PgQuery22.Close();
    PgQuery22.SQL.Clear();
    xQuery := 'select * from ' + '( ' + 'select ' + '  subt.id_cd_transaction, '
      + '  subt.id, ' + '  '''', ' + '  ''---->'' as indicator, ' +
      '  cdt.ct_number, ' + '  t.name as t_name, ' +
      '  case when subt.direction = ''1'' then ''In'' else ''Out'' end as t_direction, '
      + '  subt.account_from as name_1, subt.account_to as name_2,'' '' as name_3,   '
      + '  sum(subt.amount_in) as amount_in,  ' +
      '  sum(subt.amount_out) as amount_out,  ' +
      '  max(cdt.datetime) as datetime,subt.multiple_subtransaction_id as trans, '
      + ' 0 as mp,cdt.gaming_date ' + 'from  ' +
      '  tbl_cd_cash_transactions as cdt  ' +
      '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number  '
      + '  left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id  '
      + '  left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id  '
      + '  left join tbl_accounts as a2 on cdt.account_id_to = a2.account_id  '
      + '  left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id '

      + 'where  ' + '  cdt.confirmed = 1 and ' +
      '  cdt.is_multiple_cd_transaction = ''1'' and  ' + '  cdt.id_cashdesk = '
      + IdCashDesk + '  and  ' + '  cdt.datetime >= ''' + LastShiftDateTimeStr +
      ''' ' + 'group by ' +

      '  subt.id_cd_transaction, subt.id, indicator, cdt.ct_number, t_name, t_direction, a1.name, a2.name, a3.name,subt.multiple_subtransaction_id,cdt.gaming_date '
      + ' ' + 'union ' + ' ' + 'select  ' + '  cdt.id,  ' +
      '  subt.id_cd_transaction,  ' + '  '''', ' +
      '  cdt.ct_number as indicator,  ' + '  cdt.ct_number,  ' +
      '  case when cdt.is_multiple_cd_transaction = ''1'' then mt.name else t.name end as t_name, '
      + '  case when cdt.direction = ''1'' then ''In'' else ''Out'' end as t_direction, '
      + '  a1.name as name_1, a2.name as name_2, a3.name as name_3, ' +
      '  sum(cdt.amount_in) as amount_in, ' +
      '  sum(cdt.amount_out) as amount_out, ' +
      '  max(cdt.datetime) as datetime, cdt.id_cd_transaction as trans, ' +
      ' cdt.is_multiple_cd_transaction as mp,cdt.gaming_date ' + 'from  ' +
      '  tbl_cd_cash_transactions as cdt  ' +
      '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number '
      + '  left join tbl_transactions as t on cdt.id_cd_transaction = t.id ' +
      '  left join tbl_multiple_transactions as mt on cdt.id_cd_transaction = mt.id  '
      + '  left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id  '
      + '  left join tbl_accounts as a2 on cdt.account_id_to = a2.account_id  '
      + '  left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id  '
      + '  left join tbl_cd as cd on cdt.id_cashdesk = cd.id ' + 'where  ' +
      '  cdt.confirmed = 1 and ' + '  cdt.id_cashdesk = ' + IdCashDesk +
      '  and  ' + '  (( cdt.datetime >= ''' + LastShiftDateTimeStr + ''' ) or '
      + '  (cd.always_active = ''1'') ) ' + 'group by  ' +
      '  cdt.id, subt.id_cd_transaction, subt.id, indicator, cdt.ct_number, t_name, t_direction, a1.name, a2.name, a3.name,cdt.id_cd_transaction, cdt.is_multiple_cd_transaction,cdt.gaming_date  '
      + ' ' + ') as s ' + 'order by datetime desc ';
    PgQuery22.SQL.Add(xQuery);
    PgQuery22.Open();

    PgQuery9.Close();
    PgQuery9.SQL.Clear();
    PgQuery9.SQL.Add('select ' + '  cdt.*, t.name, a1.name, a2.name, a3.name ' +
      'from ' + '  tbl_cd_cash_transactions as cdt ' +
      '  left join tbl_transactions as t on cdt.id_cd_transaction = t.id ' +
      '  left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id ' +
      '  left join tbl_accounts as a2 on cdt.account_id_to = a2.account_id ' +
      '  left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id '
      + 'where ' + '  is_multiple_cd_transaction = 0 and ' +
      '  cdt.confirmed = 0 and ' + '  cdt.type in (0, 10, 11, 12, 13) and ' +
      '  cdt.id_cashdesk = ' + IdCashDesk + ' ' + 'union ' + ' ' + 'select ' +
      '  cdt.*, t.name, a1.name, a2.name, a3.name ' + 'from ' +
      '  tbl_cd_cash_transactions as cdt ' +
      '  left join tbl_multiple_transactions as t on cdt.id_cd_transaction = t.id '
      + '  left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id '
      + '  left join tbl_accounts as a2 on cdt.account_id_to = a2.account_id ' +
      '  left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id '
      + 'where ' + '  is_multiple_cd_transaction = 1 and ' +
      '  cdt.confirmed = 0 and ' + '  cdt.type in (0, 10, 11, 12, 13) and ' +
      '  cdt.id_cashdesk = ' + IdCashDesk);
    PgQuery9.Open();

    SelectedRow := -1;
    if Assigned(cxDBTreeList1.FocusedNode) then
    begin
      SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;
    end;
    if SelectedRow >= 0 then
    begin

      CTNr := VarToStr(cxDBTreeList1.DataController.Values[SelectedRow, 2]);

      if Pos(WideString('OP'), CTNr) > 0 then // open
      begin
        FromShiftType := '1';
      end
      else if Pos(WideString('CL'), CTNr) > 0 then
      begin
        FromShiftType := '3';
      end
      else
      begin
        FromShiftType := '';
      end;

      PgQuery16.SQL.Clear();

      PgQuery16.SQL.Add(AmountsExpectedSQL(IdCashDesk, CTNr, '0', '0',
        FromShiftType));

      PgQuery16.Active := True;

    end
    else
    begin

      FromShiftType := '';

      PgQuery16.SQL.Clear();

      PgQuery16.SQL.Add(AmountsExpectedSQL(IdCashDesk, CTNr, '0', '0',
        FromShiftType));

      PgQuery16.Active := True;

    end;

    PgQuery17.Close();
    PgQuery17.SQL.Clear();
    PgQuery17.SQL.Add
      ('select ct_number, datetime from tbl_cd_cash_transactions ' +
      'where id_cashdesk = ' + IdCashDesk);
    PgQuery17.Open();

    PgQuery18.Close();
    PgQuery18.SQL.Clear();
    PgQuery18.SQL.Add
      ('select ct_number, datetime from tbl_cd_cash_transactions ' +
      'where id_cashdesk = ' + IdCashDesk);
    PgQuery18.Open();

  end;

  PrepareShiftButtons();

  //cxPageControl1.ActivePageIndex := 0;

  Screen.Cursor := crDefault;

end;

procedure TListOfCashTransactionsFrame.cbDirectionPropertiesEditValueChanged
  (Sender: TObject);
var
  DirectionStr, Count: WideString;
  TransactionHasNoValues: Boolean;
begin

  DirectionStr := GetFieldAsString('select direction from tbl_transactions ' +
    'where id = ' + VarToStr(cbTransaction.EditValue), 'direction');

  Count := GetFieldAsString('select ' + '  count(c.id) as cnt ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c ' + 'where ' +
    '  (c.ct_number = ''' + edTransactionNo.Text + ''') and ' +
    '  (c.id_cd_value in (select id from tbl_values where is_system_value = 0))',
    'cnt');
  TransactionHasNoValues := (Count = '0');
  if TransactionHasNoValues then
  begin
    cxLabel7.Visible := ((DirectionStr[1] = '1') or ((DirectionStr[1] = '3') and
      (cbDirection.Text = 'In'))) and TransactionHasNoValues;
    edAmountIN.Visible := ((DirectionStr[1] = '1') or
      ((DirectionStr[1] = '3') and (cbDirection.Text = 'In'))) and
      TransactionHasNoValues;

    cxLabel8.Visible := ((DirectionStr[1] = '2') or ((DirectionStr[1] = '3') and
      (cbDirection.Text = 'Out'))) and TransactionHasNoValues;
    edAmountOUT.Visible := ((DirectionStr[1] = '2') or
      ((DirectionStr[1] = '3') and (cbDirection.Text = 'Out'))) and
      TransactionHasNoValues;
  end
  else
  begin
    cxLabel7.Visible := False;
    edAmountIN.Visible := False;
    cxLabel8.Visible := False;
    edAmountOUT.Visible := False;
  end;
end;

procedure TListOfCashTransactionsFrame.cbTransactionPropertiesEditValueChanged
  (Sender: TObject);
var
  DirectionStr, CategoryName, CurrencySymbol, MultiplierStr: WideString;
  QueryStr, SubQueryStr, ValuesQueryStr, Count: WideString;
  ShouldBeConfirmed: WideString;
  IdUser, IdTransaction, IdOfCashTransaction, IdOfCashSubtransaction,
    IdCategory: WideString;
  TransactionHasNoValues, MultipleSubtransactionHasNoValues,
    BilancingMultipleSubtransaction, SubtransactionHasValues: Boolean;
  i: Integer;
  NoDefaultAccount: Boolean;
  Count2: string;
  TransactionId, SubTransactionId, SystemValueId: WideString;
  IsForChange: WideString;
  xQuery: string;
  xAllow_change_gd, xMain_transaction_gd, xAccount_from_gd,
    xAccount_to_gd: string;
  TITOTransactionId: WideString;
  SourceAccount, DestinationAccount : WideString;
  UseCashDeskAccountInsteadOfFromAccount,
  UseCashDeskAccountInsteadOfToAccount : Boolean;
begin

  // These types are only attached, cannot be created

  if TransactionTypeId in [11, 13] then
  begin
    Exit;
  end;

  TITOTransactionId := GetFieldAsString
    ('select idtitotransaction from tbl_parametres limit 1',
    'idtitotransaction');

  btnTITO.Visible := (TITOTransactionId = VarToStr(cbTransaction.EditValue));

  IdUser := GetFieldAsString('select id from tbl_users ' +
    'where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  cbDirection.Hide();
  // hide or not hide gaming day
  xAllow_change_gd := Trim(GetFieldAsString('select ' + '  allow_change_gd ' +
    'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
    VarToStr(cbTransaction.EditValue), 'allow_change_gd'));

  xMain_transaction_gd :=
    Trim(GetFieldAsString('select ' + '  main_transaction_gd ' + 'from ' +
    '  tbl_transactions ' + 'where ' + '  id = ' +
    VarToStr(cbTransaction.EditValue), 'main_transaction_gd'));

  xAccount_from_gd := Trim(GetFieldAsString('select ' + '  account_from_gd ' +
    'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
    VarToStr(cbTransaction.EditValue), 'account_from_gd'));

  xAccount_to_gd := Trim(GetFieldAsString('select ' + '  Account_to_gd ' +
    'from ' + '  tbl_transactions ' + 'where ' + '  id = ' +
    VarToStr(cbTransaction.EditValue), 'Account_to_gd'));

  if xAllow_change_gd = '1' then
  begin
    GroupBox_Gaming_Day_GD.Visible := True;
    if xMain_transaction_gd = '1' then
    begin
      ComboBox_MainGD.Visible := True;
      Label_MainTransaction.Visible := True;
    end
    else
    begin
      ComboBox_MainGD.Visible := False;
      Label_MainTransaction.Visible := False;
    end;
    if xAccount_from_gd = '1' then
    begin
      ComboBox_Account_From_gd.Visible := True;
      Label_Account_from.Visible := True;
    end
    else
    begin
      ComboBox_Account_From_gd.Visible := False;
      Label_Account_from.Visible := False;
    end;
    if xAccount_to_gd = '1' then
    begin
      ComboBox_Account_To_GD.Visible := True;
      Label_Account_to.Visible := True;
    end
    else
    begin
      ComboBox_Account_To_GD.Visible := False;
      Label_Account_to.Visible := False;
    end;
  end
  else
  begin
    GroupBox_Gaming_Day_GD.Visible := False;
  end;

  if (VarToStr(cbTransaction.EditValue) <> '0') and
    (VarToStr(cbTransaction.EditValue) <> '') then
  begin
    if MultipleTransaction then
    begin
      DirectionStr := '1';
    end
    else
    begin
      DirectionStr := GetFieldAsString('select direction from tbl_transactions '
        + 'where id = ' + VarToStr(cbTransaction.EditValue), 'direction');
    end;

    if DirectionStr <> '' then
    begin
      lbTransactionDirection.Enabled := True;
      lbTransactionDirection.Show();
      case DirectionStr[1] of
        '1':
          lbTransactionDirection.Caption := 'In';
        '2':
          lbTransactionDirection.Caption := 'Out';
        '3':
          lbTransactionDirection.Caption := 'In <-> Out';
      end;
      cbDirection.Visible := (DirectionStr[1] = '3');
      cbDirection.Enabled := (DirectionStr[1] = '3');
    end
    else
    begin
      lbTransactionDirection.Hide();
    end;

    // -----------------------------------------------------------------------------------------------
    // -----------------------------------------------------------------------------------------------
    //
    // 1) Add empty cash transaction (if not exists)
    // which serves as container for ordinary transaction
    // or transactions from multiple transaction
    // (see: intermediate table tbl_cd_cash_transactions_subt)
    // with according values
    //
    // -----------------------------------------------------------------------------------------------
    // -----------------------------------------------------------------------------------------------

    if not ValidateFields() then
      Exit;

    IdTransaction := VarToStr(cbTransaction.EditValue);

    if TransactionTypeId in [10, 12] then
    begin
      ShouldBeConfirmed := '1';
    end
    else if not MultipleTransaction then
    begin
      ShouldBeConfirmed := GetFieldAsString
        ('select needs_confirmation from tbl_transactions ' + 'where id = ' +
        IdTransaction, 'needs_confirmation');
    end
    else
    begin // TODO: needs_confirmation for multiple transactions
      ShouldBeConfirmed := '0';
    end;

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('SELECT * FROM tbl_cd_cash_transactions WHERE ct_number = '''
      + edTransactionNo.Text + '''');
    PgSQL1.Execute();
    if (PgSQL1.RowsAffected > 0) then
    begin
      Information('Warning',
        'Cash transaction with this transaction number has been already created');
      edTransactionNo.Text := '';
      edTransactionNo.SetFocus();
      Exit;
    end
    else
    begin
      QueryStr := 'INSERT INTO tbl_cd_cash_transactions ' + '( ' +
        '  id_cashdesk, ' + '  ct_number, ' + '  datetime, ' +
        '  id_cd_transaction, ' + '  type, ' + '  is_multiple_cd_transaction, '
        + '  confirmed, ' + '  direction, ' + '  account_id_from, ' +
        '  account_id_to, ' + '  account_id_transfer, id_user ' + ') ' +
        'VALUES ' + '(' + VarToStr(cbCashdesk.EditValue) + ', ' + '''' +
        edTransactionNo.Text + ''', ' + 'now(), ' + IdTransaction + ', ' +
        IntToStr(TransactionTypeId) + ', ' + // type
        MyBoolToIntStr(MultipleTransaction) + ', ' +
      // is_multiple_cd_transaction
        IIf(ShouldBeConfirmed = '1', '0', '1') + ', ' + // confirmed
        IIf(lbTransactionDirection.Caption = 'In', '1',
        IIf(lbTransactionDirection.Caption = 'Out', '2',
        IIf(cbDirection.Text = 'In', '1', IIf(cbDirection.Text = 'Out', '2',
        '0')))) + ', ' + ''''', ' + ''''', ' + ''''', ' + IdUser + ')';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Cash transaction with this transaction number has been already created');
            Exit;
          end
          else
          begin
            HandleException(E,
              'TAddCashTransactionFrame.edTransactionNoExit()');
          end;
        end;
      end;

      IdOfCashTransaction := GetFieldAsString
        ('SELECT id ' + 'FROM tbl_cd_cash_transactions ' +
        'WHERE ct_number = ''' + edTransactionNo.Text + '''', 'id');

      edId.Text := IdOfCashTransaction;

      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------
      //
      // 2) Add cash dummy subtransaction for ordinary transaction
      // or subtransaction(s) for multiple transaction
      //
      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------

      // ------------------------------------------------------------------------------------------
      if MultipleTransaction then
      begin


        // Subtransaction(s) for multiple transaction with id =

        QueryStr := 'INSERT INTO tbl_cd_cash_transactions_subt ' + '( ' +
          '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
          '  multiple_subtransaction_id, ' + // For copying purposes
          '  direction ' + ') ' + 'SELECT ' + edCashDesk.Text + ', ' + edId.Text
          + ', ' + '''' + edTransactionNo.Text + ''', ' + 'id_transaction, ' +
          'direction ' + 'FROM ' + '  tbl_multiple_transactions_transactions ' +
          'WHERE ' + '  id_multiple_transaction = ' + IdTransaction;

      end
      else
      begin

        QueryStr := 'INSERT INTO tbl_cd_cash_transactions_subt ' + '( ' +
          '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
          '  multiple_subtransaction_id, ' + '  direction' + ') ' + 'VALUES ' +
          '(' + edCashDesk.Text + ', ' + edId.Text + ', ' + '  ''' +
          edTransactionNo.Text + ''', ' + '  0, ' + '  0' + ')';

      end;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Cash transaction subtransaction with this transaction id has been already added');
            Exit;
          end
          else
          begin
            HandleException(E,
              'TAddCashTransactionFrame.edTransactionNoExit()');
          end;
        end;
      end;

      xQuery := 'select ' + '  subt.*, ' + '  t.name, ' + '  t.is_for_change, '
        + '  t.id_currency  ' + 'from ' +
        '  tbl_cd_cash_transactions_subt as subt ' +
        '  left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id '
        + 'where ' + '  subt.multiple_subtransaction_id > 0 and ' +
        '  subt.ct_number = ''' + edTransactionNo.Text + '''' + 'order by ' +
        '  t.sort_order asc ';
      PgQuery5.SQL.Clear();
      PgQuery5.SQL.Add(xQuery);
      PgQuery5.Active := False;
      PgQuery5.Active := True;

      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------
      //
      // 3) Add transaction or subtransaction(s) proper categories
      //
      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------

      if MultipleTransaction then
      begin

        // Kategorie systemowe dla warto�ci (system category for system values)
        // s� potrzebne w przypadku braku values w og�le dla podtransakcji
        // lub w przypadku podtransakcji bilansuj�cej dla kolumny Out

        // 1) Najpierw wstawiamy te kategorie domy�lne dla podtransakcji,
        // kt�re nie maj� values

        SubQueryStr := 'select ' + '  t.id, ' + '  t.is_for_change ' + 'from ' +
          '  tbl_cd_multiple_transactions as cdmt ' +
          '  left join tbl_multiple_transactions as mt on cdmt.id_multiple_transaction = mt.id '
          + '  left join tbl_multiple_transactions_transactions as mtt on mt.id = mtt.id_multiple_transaction '
          + '  left join tbl_transactions as t on mtt.id_transaction = t.id ' +
          'where ' + '  cdmt.id_cashdesk = ' + VarToStr(edCashDesk.Text) +
          ' and ' + '  cdmt.id_multiple_transaction = ' +
          VarToStr(cbTransaction.EditValue) + ' ' + 'group by ' + '  t.id, ' +
          '  t.is_for_change ';

        TopGenericQuery.Active := False;
        TopGenericQuery.SQL.Clear();
        TopGenericQuery.SQL.Add(SubQueryStr);
        TopGenericQuery.Active := True;
        TopGenericQuery.Open();

        if TopGenericQuery.RecordCount > 0 then
        begin

          TopGenericQuery.First();

          // Dla ka�dej podtransakcji sprawdzamy, czy trzeba doda� systemow� kategori�

          for i := 1 to TopGenericQuery.RecordCount do
          begin

            TransactionId := TopGenericQuery.FieldByName('id').AsWideString;

            if TransactionId <> '' then
            begin

              IsForChange := TopGenericQuery.FieldByName('is_for_change')
                .AsWideString;

              if TransactionId <> '' then
              begin

                SubTransactionId :=
                  GetFieldAsString('select ' + '  id ' + 'from ' +
                  '  tbl_cd_cash_transactions_subt ' + 'where ' +
                  '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
                  ''' and ' + '  multiple_subtransaction_id = ' + TransactionId
                  + ' ' + 'group by ' + '  id', 'id');

              end
              else
              begin

                SubTransactionId := '';

              end;

              // A) Podtransakcja nie ma w og�le values

              if SubTransactionId <> '' then
              begin

                MultipleSubtransactionHasNoValues :=
                  GetFieldAsString('select count(*) as cnt ' +
                  'from tbl_transactions_values ' + 'where id_transaction = ' +
                  TransactionId, 'cnt') = '0';

              end
              else
              begin

                MultipleSubtransactionHasNoValues := True;
                // No multiple subtransaction

              end;

              // B) Podtransakcja jest bilansuj�ca
              // (UWAGA: mo�e mie� values u�ywane w In)

              BilancingMultipleSubtransaction := (IsForChange = '1');

              if (SubTransactionId <> '') and
                (MultipleSubtransactionHasNoValues or
                BilancingMultipleSubtransaction) then
              begin

                IdCategory :=
                  GetFieldAsString('select id_category from tbl_transactions ' +
                  'where id = ' + TransactionId, 'id_category');

                ExecSQL('insert into tbl_cd_cash_transactions_subt_categories '
                  + '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' +
                  '  id_cd_category, ' + '  ct_number, ' +
                  '  id_cd_sub_transaction, ' + '  nr' + ') ' + 'values ' + '( '
                  + VarToStr(edCashDesk.Text) + ', ' +
                  IdOfCashTransaction + ', ' +
                  // id z tbl_cd_cash_transactions
                  IdCategory + ', ' +
                  // Category for virtual value from tran. conf.
                  '  ''' + VarToStr(edTransactionNo.Text) + ''', ' +
                  SubTransactionId + ', ' +
                  // id z tbl_cd_cash_transactions_subt
                  '  0' + ') ');

              end;

              TopGenericQuery.Next();

            end;

          end;

          TopGenericQuery.Close();

        end;

        // 2) Potem wstawiamy kategorie dla normalnych podtransakcji z values
        // patrz: warunek EXISTS

        QueryStr := 'INSERT INTO tbl_cd_cash_transactions_subt_categories ' +
          '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' +
          '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  ct_number, ' +
          '  nr ' + ') ' + 'SELECT ' + edCashDesk.Text + ', ' + edId.Text + ', '
          + 'subt.id, ' + // SubTransaction
          'v.id_category, ' + '''' + edTransactionNo.Text + ''', ' + '0 ' +
          'FROM ' + '  tbl_cd_cash_transactions_subt as subt ' +
          '  left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id'
          + '  left join tbl_transactions_values as tv on t.id = tv.id_transaction '
          + '  left join tbl_values v on tv.id_value = v.id ' + 'WHERE ' +
          '  subt.ct_number = ''' + edTransactionNo.Text + ''' and ' +
        // UWAGA: Transakcja bilansuj�ca te� mo�e mie� values,
        // Wi�c dodajemy jej te� zwyk�e kategorie
          '  EXISTS ' + '  ( ' + '    select * from tbl_transactions_values ' +
          '    where id_transaction = subt.multiple_subtransaction_id ' +
        // IdSubTransaction
          '  ) ' + 'GROUP BY ' + '  v.id_category,' + '  subt.id';

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr);
        PgSQL1.Execute();

      end
      else // Normal transaction
      begin

        TransactionHasNoValues := GetFieldAsString('select count(*) as cnt ' +
          'from tbl_transactions_values ' + 'where id_transaction = ' +
          IdTransaction, 'cnt') = '0';

        if TransactionHasNoValues then
        begin

          IdCategory := GetFieldAsString
            ('select id_category from tbl_transactions ' + 'where id = ' +
            IdTransaction, 'id_category');

          SubTransactionId := GetFieldAsString('select ' + '  id ' + 'from ' +
            '  tbl_cd_cash_transactions_subt ' + 'where ' + '  ct_number = ''' +
            VarToStr(edTransactionNo.Text) + ''' ' + 'group by ' +
            '  id', 'id');

          ExecSQL('insert into tbl_cd_cash_transactions_subt_categories ' + '( '
            + '  id_cashdesk, ' + '  id_cd_transaction, ' + '  id_cd_category, '
            + '  ct_number, ' + '  id_cd_sub_transaction, ' + '  nr' + ') ' +
            'values ' + '( ' + VarToStr(edCashDesk.Text) + ', ' +
            IdOfCashTransaction + ', ' + // id z tbl_cd_cash_transactions
            IdCategory + ', ' + // Category for virtual value from tran. conf.
            '  ''' + VarToStr(edTransactionNo.Text) + ''', ' + SubTransactionId
            + ', ' + // id z tbl_cd_cash_transactions_subt
            '  0' + ') ');

        end
        else
        begin

          QueryStr := 'INSERT INTO tbl_cd_cash_transactions_subt_categories ' +
            '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, '
            + '  id_cd_sub_transaction, ' + '  id_cd_category ' + ') ' +
            'SELECT ' + edCashDesk.Text + ', ' + edId.Text + ', ' + '''' +
            edTransactionNo.Text + ''', ' + IdTransaction + ', ' +
            'c.id_category ' + 'FROM ' + '  ( ' +
            '    SELECT id_category, id_value FROM tbl_cd_values ' +
            '    WHERE id_cashdesk = ' + edCashDesk.Text + '  ) ' + '  as c ' +
            '  left join ' + '  tbl_transactions_values as v ' +
            '    on v.id_value = c.id_value ' + 'WHERE ' +
            '  v.id_transaction = ' + IdTransaction + ' ' + 'GROUP BY ' +
            '  c.id_category';

          PgSQL1.SQL.Clear();
          PgSQL1.SQL.Add(QueryStr);
          PgSQL1.Execute();

        end;
      end;

      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------
      //
      // 4) Add transaction or subtransaction(s) proper values for each category
      //
      // -----------------------------------------------------------------------------------------------
      // -----------------------------------------------------------------------------------------------

      if MultipleTransaction then
      begin

        // W tym miejscu mamy ju� wstawione systemowe kategorie dla podtransakcji
        // (je�li by�y potrzebne)

        // Warto�ci systemowe dla ilo�ci (system values dla nr)
        // s� potrzebne w przypadku braku values w og�le dla podtransakcji
        // lub w przypadku podtransakcji bilansuj�cej dla kolumny Out

        // 1) Najpierw wstawiamy te system values
        // dla tych podtransakcji, kt�re nie maj� zwyk�ych values
        // oraz/i podtransakcja jest bilansuj�ca

        // UWAGA: W wypadku gdy podtransakcja jest bilansuj�ca i nie ma values,
        // a jest w konfiguracji Out wymagaj�cej wpisania warto�ci po stronie In
        // u�ywamy jednej systemowej value do wpisania In - Out,
        // natomiast warto�ci In i Out wpisujemy do p�l amount_in i amount_out przy value

        SubQueryStr :=
          'select t.id, t.is_for_change, t.id_category, t.id_currency ' +
          'from ' + '  tbl_cd_multiple_transactions as cdmt ' +
          '  left join tbl_multiple_transactions as mt on cdmt.id_multiple_transaction = mt.id '
          + '  left join tbl_multiple_transactions_transactions as mtt on mt.id = mtt.id_multiple_transaction '
          + '  left join tbl_transactions as t on mtt.id_transaction = t.id ' +
          'where ' + '  cdmt.id_cashdesk = ' + VarToStr(edCashDesk.Text) +
          ' and ' + '  cdmt.id_multiple_transaction = ' +
          VarToStr(cbTransaction.EditValue);

        TopGenericQuery.Active := False;
        TopGenericQuery.SQL.Clear();
        TopGenericQuery.SQL.Add(SubQueryStr);
        TopGenericQuery.Active := True;
        TopGenericQuery.Open();
        if TopGenericQuery.RecordCount > 0 then
        begin

          TopGenericQuery.First();

          if TopGenericQuery.FieldByName('id').AsWideString <> '' then
          begin

            // Dla ka�dej podtransakcji sprawdzamy, czy trzeba doda� systemow� value

            for i := 1 to TopGenericQuery.RecordCount do
            begin

              CategoryName :=
                GetFieldAsString('select name from tbl_categories ' +
                'where id = ' + TopGenericQuery.FieldByName('id_category')
                .AsWideString, 'name');

              CurrencySymbol :=
                GetFieldAsString('select symbol from tbl_currencies ' +
                'where id = ' + TopGenericQuery.FieldByName('id_currency')
                .AsWideString, 'symbol');

              // WARNING: DirectionStr := ; // Already set at the top of procedure

              MultiplierStr := '1'; // Because it's system value

              TransactionId := TopGenericQuery.FieldByName('id').AsWideString;
              IsForChange := TopGenericQuery.FieldByName('is_for_change')
                .AsWideString;

              SubTransactionId := GetFieldAsString('select ' + '  id ' + 'from '
                + '  tbl_cd_cash_transactions_subt ' + 'where ' +
                '  ct_number = ''' + VarToStr(edTransactionNo.Text) + ''' and '
                + '  multiple_subtransaction_id = ' + TransactionId + ' ' +
                'group by ' + '  id', 'id');

              SystemValueId := GetFieldAsString('select ' + '  id ' + 'from ' +
                '  tbl_values ' + 'where ' + '  id_category = ' +
                TopGenericQuery.FieldByName('id_category').AsWideString +
                ' and ' + '  id_currency = ' + TopGenericQuery.FieldByName
                ('id_currency').AsWideString + ' and ' +
                '  is_system_value = 1', 'id');

              // A) Podtransakcja nie ma w og�le values

              MultipleSubtransactionHasNoValues :=
                GetFieldAsString('select count(*) as cnt ' +
                'from tbl_transactions_values ' + 'where id_transaction = ' +
                TransactionId, 'cnt') = '0';

              // B) Podtransakcja jest bilansuj�ca
              // (UWAGA: mo�e mie� values u�ywane w In)

              BilancingMultipleSubtransaction := (IsForChange = '1');

              if MultipleSubtransactionHasNoValues or BilancingMultipleSubtransaction
              then
              begin
                // Dodajemy jedn� systemow� value
                // wg warto�ci kategorii i waluty zapisanych w konfiguracji podtransakcji

                ExecSQL('insert into tbl_cd_cash_transactions_subt_categories_values '
                  + '( ' + '  id_cd_sub_transaction, ' + '  id_cd_transaction, '
                  + '  id_cd_value, ' + '  id_cashdesk, ' + '  count, ' +
                  '  amount_in, ' + '  amount_out, ' + '  id_cd_category, ' +
                  '  ct_number, ' + '  nr, ' + '  exchange_rate, ' +
                  '  category_name, ' + '  currency_symbol, ' + '  direction, '
                  + '  goes_into_amount_expected, ' + '  multiplier, ' +
                  '  datetime, ' + '  last_shift_datetime ' + ') ' + 'values ' +
                  '( ' + SubTransactionId + ', ' + IdOfCashTransaction + ', ' +
                  SystemValueId + ', ' + VarToStr(edCashDesk.EditValue) + ', ' +
                  '0, ' + '0, ' + '0, ' + TopGenericQuery.FieldByName
                  ('id_category').AsWideString + ', ' + '''' +
                  VarToStr(edTransactionNo.Text) + ''', ' + '0, ' +
                  'current_exchange_rate(' + TopGenericQuery.FieldByName
                  ('id_currency').AsWideString + ', now()), ' + '''' +
                  CategoryName + ''', ' + '''' + CurrencySymbol + ''', ' + '1, '
                  + DirectionStr + ', ' + MultiplierStr + ', ' + 'now(), ' +
                  'last_shift_date(' + edCashDesk.Text + ') ' + ') ');

              end;

              TopGenericQuery.Next();

            end;

          end;

          TopGenericQuery.Close();

        end;

        QueryStr := 'INSERT INTO tbl_cd_cash_transactions_subt_categories ' +
          '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' +
          '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  ct_number, ' +
          '  nr ' + ') ' + 'SELECT ' + edCashDesk.Text + ', ' + edId.Text + ', '
          + 'subt.id, ' + // SubTransaction
          't.id_category, ' + '''' + edTransactionNo.Text + ''', ' + '0 ' +
          'FROM ' + '  tbl_cd_cash_transactions_subt as subt ' +
          '  left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id '
          + 'WHERE ' + '  subt.ct_number = ''' + edTransactionNo.Text +
          ''' and ' + '  NOT EXISTS ' + '  ( ' +
          '    select * from tbl_transactions_values ' +
          '    where id_transaction = subt.multiple_subtransaction_id ' +
        // IdSubTransaction
          '  ) ' + 'GROUP BY ' + '  t.id_category,' + '  subt.id';

        ExecSQL(QueryStr);

        // 2) Potem wstawiamy zwyk�e values dla normalnych podtransakcji z values
        // patrz: warunek EXISTS

        ValuesQueryStr :=
          'INSERT INTO tbl_cd_cash_transactions_subt_categories_values ' + '( '
          + '  id_cashdesk, ' + '  id_cd_transaction, ' +
          '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  id_cd_value,'
          + '  ct_number, ' + '  count, ' + '  amount_in, ' + '  amount_out, ' +
          '  nr, ' + '  exchange_rate, ' + '  category_name, ' +
          '  currency_symbol, ' + '  direction, ' +
          '  goes_into_amount_expected, ' + '  multiplier, ' + '  datetime, ' +
          '  last_shift_datetime ' + ') ' + 'SELECT ' + edCashDesk.Text + ', ' +
          'subt.id_cd_transaction, ' + 'subt.id, ' + 'cdv.id_category, ' +
          'tv.id_value, ' + '''' + edTransactionNo.Text + ''', ' + '0, ' + '0, '
          + '0, ' + '0, ' +
          'current_exchange_rate_by_value_id(tv.id_value, now()), ' +
          'category_name(cdv.id_category), ' +
          'currency_symbol_of_cd_value(tv.id_value) as currency_symbol, ' +
          DirectionStr + ', ' + '1, ' +
          'multiplier_of_cd_value(tv.id_value) as multiplier, ' + 'now(), ' +
          'last_shift_date(' + edCashDesk.Text + ') ' + 'FROM ' +
          '  tbl_cd_cash_transactions_subt as subt ' +
          '  left join tbl_cd_cash_transactions_subt_categories as subtc on subt.ct_number = subtc.ct_number '
          + '  left join tbl_cd_values as cdv on subtc.id_cd_category = cdv.id_category '
          + '  left join tbl_transactions_values as tv on cdv.id_value = tv.id_value, '
          + '  tbl_transactions as t ' + 'WHERE ' + '  subt.ct_number = ''' +
          edTransactionNo.Text + ''' and ' + '  cdv.id_cashdesk = ' +
          edCashDesk.Text + ' and ' +
          '  t.id = subt.multiple_subtransaction_id and ' +
          '  tv.id_transaction = t.id and ' + '  EXISTS ' + '  ( ' +
          '    select * from tbl_transactions_values ' +
          '    where id_transaction = subt.multiple_subtransaction_id ' +
        // IdSubTransaction
          '  ) ' + 'GROUP BY ' + '  subt.id_cd_transaction, ' + '  subt.id, ' +
          '  cdv.id_category, ' + '  tv.id_value';

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(ValuesQueryStr);
        PgSQL1.Execute();

        if SubTransactionId = '' then
          SubTransactionId := '-1';

        PgQuery1.SQL.Clear();
        PgQuery1.SQL.Add('select ' + '  cd.id, ' + '  c.id_cashdesk, ' +
          '  c.nr, ' + '  v.multiplier, ' +
          '  c.nr * v.multiplier as amount_0, ' +
          '  c.exchange_rate as change_chf, ' +
          '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          '  cat.name as category, ' + '  v.name as value_name, ' + '  cdv.ord '
          + 'from ' + '  tbl_cd_cash_transactions_subt_categories_values as c '
          + '  left join tbl_cd_cash_transactions_subt as cd on cd.ct_number=c.ct_number, '
          + '  tbl_cd_values as cdv, ' + '  tbl_values as v, ' +
          '  tbl_categories as cat ' + 'where ' + '  c.id_cd_sub_transaction = '
          + SubTransactionId + ' and ' + '  c.id_cd_category = cat.id and ' +
          '  c.id_cd_value = cdv.id_value and ' + '  c.id_cd_value = v.id and '
          + '  v.is_system_value <> 1 and ' +
          '  c.id_cd_sub_transaction = -1 ' + // <--
          'order by ' + '  v.sort_order asc');

        PgQuery1.Active := False;
        PgQuery1.Active := True;

      end
      else // Normal transaction
      begin

        TransactionHasNoValues := GetFieldAsString('select count(*) as cnt ' +
          'from tbl_transactions_values ' + 'where id_transaction = ' +
          IdTransaction, 'cnt') = '0';

        if TransactionHasNoValues then
        begin

          SubQueryStr :=
            'select t.id, t.is_for_change, t.id_category, t.id_currency ' +
            'from ' + '  tbl_cd_transactions as cdt ' +
            '  left join tbl_transactions as t on cdt.id_transaction = t.id ' +
            'where ' + '  cdt.id_cashdesk = ' + VarToStr(edCashDesk.Text) +
            ' and ' + '  cdt.id_transaction = ' +
            VarToStr(cbTransaction.EditValue);

          TopGenericQuery.Active := False;
          TopGenericQuery.SQL.Clear();
          TopGenericQuery.SQL.Add(SubQueryStr);
          TopGenericQuery.Active := True;
          TopGenericQuery.Open();
          if TopGenericQuery.RecordCount > 0 then
          begin

            TopGenericQuery.First();

            // Dla ka�dej podtransakcji sprawdzamy, czy trzeba doda� systemow� value

            for i := 1 to TopGenericQuery.RecordCount do
            begin

              TransactionId := TopGenericQuery.FieldByName('id').AsWideString;
              IsForChange := TopGenericQuery.FieldByName('is_for_change')
                .AsWideString;

              SubTransactionId := GetFieldAsString('select ' + '  id ' + 'from '
                + '  tbl_cd_cash_transactions_subt ' + 'where ' +
                '  ct_number = ''' + VarToStr(edTransactionNo.Text) + ''' ' +
                'group by ' + '  id', 'id');
              SubQueryStr := 'select ' + '  id ' + 'from ' + '  tbl_values ' +
                'where ' + '  id_category = ' + TopGenericQuery.FieldByName
                ('id_category').AsWideString + ' and ' + '  id_currency = ' +
                TopGenericQuery.FieldByName('id_currency').AsWideString +
                ' and ' + '  is_system_value = 1';
              SystemValueId := GetFieldAsString(SubQueryStr, 'id');

              CategoryName :=
                GetFieldAsString('select name from tbl_categories ' +
                'where id = ' + TopGenericQuery.FieldByName('id_category')
                .AsWideString, 'name');

              CurrencySymbol :=
                GetFieldAsString('select symbol from tbl_currencies ' +
                'where id = ' + TopGenericQuery.FieldByName('id_currency')
                .AsWideString, 'symbol');

              // A) Podtransakcja zwyk�ej transakcji, czyli po prostu transakcja
              // nie ma w og�le values

              TransactionHasNoValues :=
                GetFieldAsString('select count(*) as cnt ' +
                'from tbl_transactions_values ' + 'where id_transaction = ' +
                IdTransaction, 'cnt') = '0';

              if TransactionHasNoValues then
              begin
                // Dodajemy jedn� systemow� value
                // wg warto�ci kategorii i waluty zapisanych w konfiguracji podtransakcji

                SubQueryStr :=
                  'insert into tbl_cd_cash_transactions_subt_categories_values '
                  + '( ' + '  id_cd_sub_transaction, ' + '  id_cd_transaction, '
                  + '  id_cd_value, ' + '  id_cashdesk, ' + '  count, ' +
                  '  amount_in, ' + '  amount_out, ' + '  id_cd_category, ' +
                  '  ct_number, ' + '  nr, ' + '  exchange_rate, ' +
                  '  category_name, ' + '  currency_symbol, ' + '  direction, '
                  + '  goes_into_amount_expected, ' + '  multiplier, ' +
                  '  datetime, ' + '  last_shift_datetime ' + ') ' + 'values ' +
                  '( ' + SubTransactionId + ', ' + IdOfCashTransaction + ', ' +
                  SystemValueId + ', ' + VarToStr(edCashDesk.EditValue) + ', ' +
                  '0, ' + '0, ' + '0, ' + TopGenericQuery.FieldByName
                  ('id_category').AsWideString + ', ' + '''' +
                  VarToStr(edTransactionNo.Text) + ''', ' + '0, ' +
                  'current_exchange_rate(' + TopGenericQuery.FieldByName
                  ('id_currency').AsWideString + ', now()), ' + '''' +
                  CategoryName + ''', ' + '''' + CurrencySymbol + ''', ' +
                  DirectionStr + ', ' + '1, ' + '1, ' + 'now(), ' +
                  'last_shift_date(' + edCashDesk.Text + ') ' + ') ';
                ExecSQL(SubQueryStr);
              end;

              TopGenericQuery.Next();

            end;

            TopGenericQuery.Close();

          end;

        end
        else
        begin

          ValuesQueryStr :=
            'INSERT INTO tbl_cd_cash_transactions_subt_categories_values ' +
            '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' +
            '  id_cd_sub_transaction, ' + '  id_cd_category, ' +
            '  id_cd_value,' + '  ct_number, ' + '  count, ' + '  amount_in, ' +
            '  amount_out, ' + '  nr, ' + '  exchange_rate, ' +
            '  category_name, ' + '  currency_symbol, ' + '  direction, ' +
            '  goes_into_amount_expected, ' + '  multiplier, ' + '  datetime, '
            + '  last_shift_datetime ' + ') ' + 'SELECT ' + edCashDesk.Text +
            ', ' + edId.Text + ', ' + IdTransaction + ', ' + 'cdv.id_category, '
            + 'tv.id_value, ' + '''' + edTransactionNo.Text + ''', ' + '0, ' +
            '0, ' + '0, ' + '0, ' +
            'current_exchange_rate_by_value_id(tv.id_value, now()), ' +
            'category_name(cdv.id_category), ' +
            'currency_symbol_of_cd_value(tv.id_value) as currency_symbol, ' +
            DirectionStr + ', ' + '1,' +
            'multiplier_of_cd_value(tv.id_value) as multiplier, ' + 'now(), ' +
            'last_shift_date(' + edCashDesk.Text + ') ' + 'FROM ' +
            '  tbl_transactions_values as tv, ' + '  tbl_cd_values as cdv ' +
            'WHERE ' + '  cdv.id_value = tv.id_value AND ' +
            '  tv.id_transaction = ' + IdTransaction + ' AND ' +
            '  cdv.id_cashdesk = ' + edCashDesk.Text + ' ' + 'GROUP BY ' +
            '  cdv.id_category, ' + '  tv.id_value';

          PgSQL1.SQL.Clear();
          PgSQL1.SQL.Add(ValuesQueryStr);
          // PgSQL1.SQL.SaveToFile('c:\trans.txt');
          PgSQL1.Execute();

        end;

        if MultipleTransaction = False then
        begin
          QueryStr :=
            ' select  cdv.ord, c.*,   v.multiplier,   c.nr * v.multiplier as amount_0, '
            + ' c.exchange_rate as change_chf, ' +
            ' c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
            ' cat.name as category,   v.name as value_name from ' +
            ' tbl_cd_cash_transactions_subt_categories_values as c ' +
            ' join tbl_values as v on c.id_cd_value =v.id ' +
            ' join  tbl_categories as cat on  c.id_cd_category = cat.id ' +
            ' right join  tbl_cd_values cdv on c.id_cd_value = cdv.id_value and  cdv.id_CashDesk='
            + edCashDesk.Text + ' where ' + '  c.ct_number = ''' +
            edTransactionNo.Text + ''' and ' +
            ' v.is_system_value <> ''1'' and ' +
            ' c.id_cd_value = v.id order by  cdv.ord asc ';
        end
        else
        begin

          QueryStr := '  select  cd.Multiple_subtransaction_id, c.*, ' +
            'v.multiplier,   c.nr * v.multiplier as amount_0,' +
            ' c.exchange_rate as change_chf, ' +
            ' c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
            ' cat.name as category,   v.name as value_name, cdv.ord from ' +
            ' tbl_cd_cash_transactions_subt_categories_values as c ' +
            '  left join tbl_cd_cash_transactions_subt as cd on cd.id=c.id_cd_sub_transaction '
            + ' left join tbl_values as v on c.id_cd_value =v.id ' +
            ' left join  tbl_categories as cat on  c.id_cd_category = cat.id ' +
            ' left join  tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and '
            + '  cdv.id_transaction=' + IdTransaction + ' where ' +
            '  c.ct_number = ''' + edTransactionNo.Text + ''' and ' +
            '  v.is_system_value <> ''1'' and   ' +
            '  c.id_cd_value = v.id order by  cdv.ord asc';
        end;

        // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

        PgQuery1.SQL.Clear();
        PgQuery1.SQL.Add(QueryStr);

        PgQuery1.Active := False;
        PgQuery1.Active := True;

      end;

      // Visibility of controls

      cbTransaction.Properties.ReadOnly := True;

      cxLabel6.Visible := True;
      mTransactionExplanation.Visible := True;
      cbTransaction.Visible := True;
      // cbAccount.Visible := True;

      {
        btnTran1.Visible := True;
        btnTran2.Visible := True;
        btnTran3.Visible := True;
        btnTran4.Visible := True;
        btnTran5.Visible := True;
        btnTran6.Visible := True;
        btnTran7.Visible := True;
        btnTran8.Visible := True;
        btnTran9.Visible := True;
        btnTran10.Visible := True;
        btnTran11.Visible := True;
        btnTran12.Visible := True;
        btnTran13.Visible := True;
        btnTran14.Visible := True;
        btnTran15.Visible := True;
        btnTran16.Visible := True;
      }


      cxGrid1.Visible := True;
      cxLabel64.Show();
      cxLabel65.Visible := MultipleTransaction;
      cxGrid9.Visible := MultipleTransaction; // <--

      // If there's no values with ordinary cash transaction

      if MultipleTransaction then
      begin
        TransactionHasNoValues :=
          GetFieldAsString('select ' + '  count(c.id) as cnt ' + 'from ' +
          '  tbl_cd_cash_transactions_subt_categories_values as c ' + 'where ' +
          '  c.ct_number = ''' + edTransactionNo.Text + '''', 'cnt') = '';
      end
      else // Normal transaction
      begin

        Count := GetFieldAsString('select ' + '  count(c.id) as cnt ' + 'from '
          + '  tbl_cd_cash_transactions_subt_categories_values as c ' +
          '  left join tbl_values as v on v.id = c.id_cd_value ' + 'where ' +
          '  c.ct_number = ''' + edTransactionNo.Text + ''' and ' +
          '  v.is_system_value <> ''1''', 'cnt');

        TransactionHasNoValues := (Count = '0');

      end;

      if not MultipleTransaction then
      begin

        // We check multiple accounts manual

        MultipleAccountsManual :=
          StrToBool(GetFieldAsString('select is_multiple_accounts_manual ' +
          'from tbl_transactions ' + 'where id = ' + IdTransaction,
          'is_multiple_accounts_manual'));

        if MultipleAccountsManual then
        begin
          cxLabel5.Show();
          cxLabel5.Caption := 'Select account:';
          cbAccount.Show();

          // ----kuba\

          Count2 := GetFieldAsString('select count(is_default) as cnt' +
            ' from tbl_transactions_accounts_manual t ' +
            ' where is_default = 1 and t.id_transaction = ' +
            IdTransaction, 'cnt');

          NoDefaultAccount := StrToBool(Count2);

          if NoDefaultAccount then
          begin

            PgQuery20.Active := False;
            PgQuery20.SQL.Clear();

            PgQuery20.SQL.Add('select t.account_id, a.name ' +
              'from tbl_transactions_accounts_manual as t ' +
              'left join tbl_accounts as a on t.account_id = a.account_id ' +
              'where t.id_transaction = ' + IdTransaction +
              'order by is_default'
              // -------- zmiana kuby dodanie pustego rekordu do grida i posortowanie
              // + ' and ' +
              // '  t.account_id in (select account_id from tbl_cd)'
              );

          end
          else
          begin
            PgQuery20.Active := False;
            PgQuery20.SQL.Clear();

            PgQuery20.SQL.Add('select t.account_id, a.name ' +
              'from tbl_transactions_accounts_manual as t ' +
              'left join tbl_accounts as a on t.account_id = a.account_id ' +
              'where t.id_transaction = ' + IdTransaction + ' union ' +
              'select '''' as account_id , '''' as name ' + 'order by name');
          end;

          PgQuery20.Active := True;
          PgQuery21.Active := False;
          PgQuery21.SQL.Clear();
          PgQuery21.SQL.Add('select t.account_id, a.name ' +
            'from tbl_transactions_accounts_manual as t ' +
            'left join tbl_accounts as a on t.account_id = a.account_id ' +
            'where t.id_transaction = ' + IdTransaction // + ' and ' +
            // '  t.account_id in (select account_id from tbl_cd)'
            );
          PgQuery21.Active := True;

          cbAccount.Enabled := True;
          cbAccount.ItemIndex := 0;

        end;

      end;

      if DirectionStr = '' then
      begin

        cxLabel7.Visible := False;
        edAmountIN.Visible := False;

        cxLabel8.Visible := False;
        edAmountOUT.Visible := False;

      end
      else
      begin

        cxLabel7.Visible := ((DirectionStr[1] = '1') or
          ((DirectionStr[1] = '3') and (cbDirection.Text = 'In'))) and
          TransactionHasNoValues;
        edAmountIN.Visible :=
          ((DirectionStr[1] = '1') or ((DirectionStr[1] = '3') and
          (cbDirection.Text = 'In'))) and TransactionHasNoValues;

        cxLabel8.Visible := ((DirectionStr[1] = '2') or
          ((DirectionStr[1] = '3') and (cbDirection.Text = 'Out'))) and
          TransactionHasNoValues;
        edAmountOUT.Visible :=
          ((DirectionStr[1] = '2') or ((DirectionStr[1] = '3') and
          (cbDirection.Text = 'Out'))) and TransactionHasNoValues;

      end;

      cxGrid1.Visible := not TransactionHasNoValues;
      cxLabel64.Visible := not TransactionHasNoValues;

      btnSave.Visible := True;
      btnCancel.Visible := True;

      cbTransaction.Enabled := False;
      edTransactionNo.Enabled := False;
      lbTransactionDirection.Enabled := False;

      SetFocusAfterTransactions();

    end;

  end;

end;

procedure TListOfCashTransactionsFrame.ShowTransaction(CTNr: WideString);
var
  HasTransactions: Boolean;
  TypeId, TransactionId: Integer;
  xQuery: string;
begin

  TypeId := frmMain.TransactionTypeByMnemonic
    (Copy(CTNr, 1, Pos('/', CTNr) - 1));
  // 0, 10, 11, 12, 13

  TransactionTypeId := TypeId; // for btnSaveClick() event

  TransactionId :=
    StrToInt(GetFieldAsString
    ('select id_cd_transaction from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + CTNr + '''', 'id_cd_transaction'));

  edId.Text := GetFieldAsString('select id from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + CTNr + '''', 'id');

  // We goes into 11 & 13 from 10 & 12

  if TypeId in [11, 13] then
  begin

    // xQUery:=  'select ' +
    // '  cd.Multiple_subtransaction_id, ' +
    // 'c.*, ' + '  v.multiplier, ' + '  c.nr * v.multiplier as amount, ' +
    // '  c.exchange_rate as change_chf, ' +
    // '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
    // '  cat.name as category, ' + '  v.name as value_name, cdv.ord ' + 'from '
    // + '  tbl_cd_cash_transactions_subt_categories_values as c ' +
    // '  left join tbl_cd_cash_transactions_subt as cd on cd.id=c.id_cd_sub_transaction, '
    // + '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    // '  c.ct_number = ''' + CTNr + ''' and ' +
    // '  c.id_cd_category = cat.id and ' + '  v.is_system_value <> ''1'' and ' +
    // '  c.id_cd_value = v.id ' + 'order by ' + '  v.sort_order asc' ;

    xQuery := 'select ' + '  cd.id, ' + '  c.*, ' + '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount, ' + '  c.exchange_rate as change_chf, '
      + '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' + '  v.name as value_name, ' + '  cdv.ord ' +
      'from ' + '  tbl_cd_cash_transactions_subt_categories_values as c ' +
      '  left join tbl_cd_cash_transactions_subt as cd ' +
      '    on cd.id=c.id_cd_sub_transaction ' +
      '  left join tbl_values as v on c.id_cd_value = v.id ' +
      '  left join tbl_categories as cat on c.id_cd_category = cat.id ' +
      '  left join tbl_transactions_values cdv ' +
      '    on c.id_cd_value = cdv.id_value and cdv.id_transaction= c.id_transaction '
      + 'where ' + '  c.ct_number = ''' + CTNr + ''' and ' +
      '  v.is_system_value <> 1 ' + 'order by ' + '  v.sort_order asc';

    PgQuery1.SQL.Clear();

    PgQuery1.SQL.Add(xQuery);
    PgQuery1.Active := False;
    PgQuery1.Active := True;

    cxTabSheet1.TabVisible := True;
    cxTabSheet1.Enabled := True;

    if TypeId = 11 then
    begin
      cxTabSheet1.Caption := '    Transfer request acceptance    ';
    end
    else if TypeId = 12 then
    begin
      cxTabSheet1.Caption := '    Confirm transfer request    ';
    end
    else if TypeId = 13 then
    begin
      cxTabSheet1.Caption := '    Actual transfer acceptance    ';
    end;

    cxTabSheet2.Enabled := False;
    // 1 cxTabSheet_ShortCut.Enabled := False;

    MainTabs.Properties.ActivePage := cxTabSheet1;

    cbTransaction.Enabled := True;
    edTransactionNo.Enabled := True;
    cbDirection.Enabled := True;

    cxGrid9.Hide();
    cxLabel65.Hide();

    cxLabel4.Caption := 'Transaction:';
    cxLabel65.Caption := 'Cash transaction';
    cxLabel64.Left := 3;
    cxGrid1.Left := 3;
    cxGrid1.Width := 688;

    PgQuery20.Active := False;
    PgQuery20.SQL.Clear();
    PgQuery20.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery20.Active := True;
    PgQuery21.Active := False;
    PgQuery21.SQL.Clear();
    PgQuery21.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery21.Active := True;

    cbAccount.Show();
    cbAccount.Properties.ReadOnly := False;
    cbAccount.Enabled := True;
    cbAccount.EditValue := GetFieldAsString
      ('select account_id_to from tbl_cd_cash_transactions ' +
      'where ct_number = ''' + CTNr + '''', 'account_id_to');
    cxLabel5.Show();

    MultipleTransaction := False;

    // Transactions combo-boxes
    // We select only ONE transaction with given id

    // TODO: Problem - selected transaction MUST BE assigned
    // to both cashdesks !

    PgQuery3.SQL.Clear();
    PgQuery3.SQL.Add('select cdt.id_transaction, t.name ' +
      'from tbl_cd_transactions as cdt ' +
      'left join tbl_transactions as t on cdt.id_transaction = t.id ' + 'where '
      + '  cdt.id_transaction = ' + IntToStr(TransactionId) + ' ' +
      'group by cdt.id_transaction, t.name');
    PgQuery3.Active := False;
    PgQuery3.Active := True;

    PgQuery15.SQL.Clear();
    PgQuery15.SQL.Add('select cdt.id_transaction, t.name ' +
      'from tbl_cd_transactions as cdt ' +
      'left join tbl_transactions as t on cdt.id_transaction = t.id ' + 'where '
      + '  cdt.id_transaction = ' + IntToStr(TransactionId) + ' ' +
      'group by cdt.id_transaction, t.name');
    PgQuery15.Active := False;
    PgQuery15.Active := True;

    // Attaching of grid datasources

    cbTransaction.EditValue := IntToStr(TransactionId);
    cbTransaction.PostEditValue();
    cbTransaction.Properties.ReadOnly := False;

    edTransactionNo.Text := CTNr;

    cbTransaction.Enabled := False;
    edTransactionNo.Enabled := False;
    cbDirection.Enabled := False;
    cbAccount.Enabled := False;
    lbTransactionDirection.Enabled := False;

    cxGrid1.Visible := True;
    cxLabel64.Show();

  end
  else
  begin

    Information('Warning', 'ShowTransaction for TypeId = ' + IntToStr(TypeId) +
      ' not implemented');

  end;

end;

procedure TListOfCashTransactionsFrame.Timer1Timer(Sender: TObject);
begin

  if cxLabel10.Style.TextColor = $004080FF then
  begin
    cxLabel10.Style.TextColor := clWhite;
  end
  else
  begin
    cxLabel10.Style.TextColor := $004080FF;
  end;

end;

procedure TListOfCashTransactionsFrame.btnConfirmPendingTransactionClick
  (Sender: TObject);
label IntermediateConfirmation,
  IntermediateConfirmation2;
var
  SelectedRow, IntermediateConfirmationCount: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddCashTransactionFrame;
  QueryStr: WideString;
  BaseCTNr, CTNr, CTNr2, CTNr3, CTNrNew: WideString;
  DestinationAccount: WideString;
  dDay, dMonth, dYear: Word;
  TransactionType: WideString;
  TransferTransaction: Boolean;
  NewCashDeskId, PendingTransactionsCount: Integer;
  IdUserController: Integer;
  CtNumber2: string;
  Cashierconfirm: string;
  cashier: string;
  cashierid: string;
  LoginForm : TFrmCashierRelogin;
begin

  DC := Self.cxGridDBTableView7.DataController;
  SelectedRow := DC.FocusedRowIndex;

  TransactionType := VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow]
    .Values[13]);

  CtNumber2 := VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow]
    .Values[2]);

  if TransactionType = IntToStr(CT_TRANSFER_REQUEST_ACCEPTANCE) then
  begin

    // We can change the values in case of CT_TRANSFER_REQUEST_ACCEPTANCE

    ShowTransaction(VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow]
      .Values[2]));

  end
  else
  begin

    // Check if current user can confirm, if not - do login

    IntermediateConfirmationCount := 0;

  IntermediateConfirmation:

    Cashierconfirm := frmMain.GetFieldAsString
      (Format(' select  tr.cashier_can_confirm from tbl_cd_cash_transactions t '
      + 'left join tbl_transactions  tr on t.id_cd_transaction= tr.id ' +
      'where t.ct_number = ''%s''', [CtNumber2]), 'cashier_can_confirm');

    if Cashierconfirm = '0' then
    begin

      if IntermediateConfirmationCount = 3 then
      begin
        Exit;
      end;

      if Question('Confirm transaction ?') then
      begin


        // 2) Show relogin window for second cashier without save as dialog window
        // -- confirmation_id_user_second (for Intermediate only)

        LoginForm := TfrmCashierRelogin.Create(Self);

        LoginForm.lbLogin.Caption := 'Confirmation by supervisor';

        LoginForm.PgQuery1.Active := False;
        LoginForm.PgQuery1.SQL.Clear();
        LoginForm.PgQuery1.SQL.Add
          (
          'select u.id as id_user, u.user_name ' +
          'from ' +
          '  tbl_users as u ' +
          '  left join tbl_transactions_users as tu on tu.id_user = u.id ' +
          '  left join tbl_transactions as t on t.id = tu.id_transaction ' +
          '  left join tbl_cd_cash_transactions as cd on cd.id_cd_transaction = t.id ' +
          'where ' +
          '  cd.ct_number = ''' +
          VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow].Values
          [2]) + ''''
          );
        LoginForm.PgQuery1.Active := True;

        LoginForm.PgQuery6.Active := False;
        LoginForm.PgQuery6.SQL.Clear();
        LoginForm.PgQuery6.SQL.Add
          (
          'select u.id as id_user, u.user_name ' +
          'from ' +
          '  tbl_users as u ' +
          '  left join tbl_transactions_users as tu on tu.id_user = u.id ' +
          '  left join tbl_transactions as t on t.id = tu.id_transaction ' +
          '  left join tbl_cd_cash_transactions as cd on cd.id_cd_transaction = t.id ' +
          'where ' +
          '  cd.ct_number = ''' +
          VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow].Values
          [2]) + ''''
          );
        LoginForm.PgQuery6.Active := True;

      IntermediateConfirmation2:

        if IntermediateConfirmationCount = 3 then
        begin
          Exit;
        end;

        LoginForm.btnLogin.Caption := 'Confirm';
        LoginForm.ShowModal;

        if LoginForm.ModalResult = mrOk then
        begin
          if CheckUserPassword('Program',
            VarToStr(LoginForm.cbCashier.Text),
            LoginForm.edPassword.Text) = 1 then
          begin
            // Information('Information', 'Successfully confirmed');
          end
          else
          begin
            Information('Warning', 'Invalid password - please try again');
            goto IntermediateConfirmation2;
          end;
        end
        else if LoginForm.ModalResult = mrCancel then
        begin
          Inc(IntermediateConfirmationCount);
          goto IntermediateConfirmation;
        end;
        LoginForm.Free();
      end
      else
      begin
        LoginForm.Free();
        Exit;
      end;
      // i wskoczyc tutaj �eby zrobic od razu confirmations
      // Do confirmation
    end;

    cashierid := frmMain.GetFieldAsString
      ('select id from  tbl_users where user_name =' +
      QuotedStr(frmMain.CurrentUserName), 'id');

    cashier := frmMain.CurrentUserName;
    if Assigned(frmCashierRelogin) then
    begin
      cashier := VarToStr(frmCashierRelogin.cbCashier.Text);
    end;

    QueryStr := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  confirmed = 1, ' + '  confirmation_id_user = ' +
      GetFieldAsString('select id from tbl_users where user_name = ''' +
      frmMain.CurrentUserName + '''', 'id') + ', ' +
      '  confirmation_id_user_controller = ' + cashierid + ' ' + 'where ' +
      '  ct_number = ''' + VarToStr(cxGridDBTableView7.ViewData.Rows
      [SelectedRow].Values[2]) + '''';

    ExecSQL(QueryStr);

    // Confirms

    QueryStr := 'update tbl_cd_cash_transactions ' + 'set confirmed = 1 ' +
      'where ct_number = ''' + VarToStr(cxGridDBTableView7.ViewData.Rows
      [SelectedRow].Values[17]) + '''';

    ExecSQL(QueryStr);

    PgQuery9.Active := False;
    PgQuery9.Active := True;

    PgQuery17.Active := False;
    PgQuery17.Active := True;

    ShowPendingTransactions();

    PendingTransactionsCount :=
      StrToInt(GetFieldAsString
      ('select count(*) as cnt from tbl_cd_cash_transactions ' +
      'where id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
      'confirmed = 0 and type in (0, 10, 11, 12, 13)', 'cnt'));

    if PendingTransactionsCount = 0 then
    begin
      cxPageControl1.ActivePageIndex := 0;
    end
    else
    begin
      cxPageControl1.ActivePageIndex := 1;
    end;

    cbCashDesk.Properties.OnEditValueChanged(Self);

  end;

end;

procedure TListOfCashTransactionsFrame.cxButton1Click(Sender: TObject);
begin

  SetupBalancing();

end;

procedure TListOfCashTransactionsFrame.cxDBTreeList1CustomDrawDataCell
  (Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
var
  RowId: Integer;
  CTNr, TypeId: WideString;
begin

  RowId := AViewInfo.Node.AbsoluteIndex;
  if RowId > 0 then
  begin

    CTNr := VarToStr(cxDBTreeList1.DataController.Values[RowId, 2]);

    TypeId := GetFieldAsString('select type from tbl_cd_cash_transactions ' +
      'where ct_number = ''' + CTNr + '''', 'type');

    if (TypeId = '15') then
    begin
      ACanvas.FillRect(AViewInfo.EditRect, RGB(250, 180, 180));
    end;

  end;

end;

procedure TListOfCashTransactionsFrame.cxDBTreeList1FocusedNodeChanged
  (Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
var
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  CTNr: WideString;
  DateTimeStr, Indicator, Indicator1, IdCdTransaction, IdCdSubTransaction,
    FromShiftType: WideString;
  xQuery: WideString;
  CTNr2: WideString;
  Multi: WideString;
begin

  SelectedRow := -1;
  DC := cxDBTreeList1.DataController;

  if Assigned(cxDBTreeList1.FocusedNode) then
  begin
    SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;
  end;

  CTNr2 := EmptyStr;

  if SelectedRow >= 0 then
  begin

    CTNr := VarToStr(DC.Values[SelectedRow, 2]);
    Indicator := VarToStr(DC.Values[SelectedRow, 12]);
    CTNr2 := VarToStr(DC.Values[SelectedRow, 13]);
    Multi := VarToStr(DC.Values[SelectedRow, 14]);

    if Multi = '1' then
    begin
      cxGridDBTableView6id_cd_category.SortOrder := soAscending;
      cxGridDBTableView6Column_ord.SortOrder := soNone;
    end
    else
    begin
      cxGridDBTableView6id_cd_category.SortOrder := soNone;
      cxGridDBTableView6Column_ord.SortOrder := soAscending;
    end;

    IdCdTransaction := VarToStr(DC.Values[SelectedRow, 12]);

    if Indicator = '---->' then
    begin

      IdCdSubTransaction := VarToStr(DC.Values[SelectedRow, 1]);

      xQuery := ' Select   c.*,   v.multiplier,   c.nr * v.multiplier as amount_base, '
        + ' c.exchange_rate as change_chf, ' +
        '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
        ' cat.name as category,   v.name as value_name, cdv.ord ' +
        '  from   tbl_cd_cash_transactions_subt_categories_values as c ' +
        ' left join tbl_values as v on  c.id_cd_value = v.id ' +
        ' left join tbl_categories as cat  on  c.id_cd_category = cat.id ' +
        ' left join tbl_cd_cash_transactions_subt as cd on cd.id=c.id_cd_sub_transaction '
        + ' left join  tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and cdv.id_transaction='
        + CTNr2 + 'where ' + '  c.ct_number = ''' + CTNr + ''' and ' +
        '  c.id_cd_sub_transaction = ' + IdCdSubTransaction + ' and c.nr<>0 ' +
        ' order by ' + ' cdv.ord asc';

      PgQuery12.SQL.Clear();
      PgQuery12.SQL.Add(xQuery);
      PgQuery12.Active := False;
      PgQuery12.Active := True;

    end
    else
    begin

      IdCdSubTransaction := '';

      if CTNr2 = EmptyStr then
      begin

        xQuery := 'select ' + '  c.*, ' + '  v.multiplier, ' +
          '  c.nr * v.multiplier as amount, ' +
          '  c.exchange_rate as change_chf, ' +
          '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          '  cat.name as category, ' + '  v.name as value ' + 'from ' +
          '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
          '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
          '  ct_number = ''' + CTNr + ''' and ' +
          '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' +
          ' and c.nr<>0 ' + 'order by ' + '  v.sort_order asc';
      end
      else
      begin
        xQuery := '  select  cdv.ord, c.*,   v.multiplier,   c.nr * v.multiplier as amount_base,'
          + ' c.exchange_rate as change_chf, ' +
          ' c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          ' cat.name as category,   v.name as value_name from ' +
          ' tbl_cd_cash_transactions_subt_categories_values as c ' +
          ' join tbl_values as v on c.id_cd_value =v.id ' +
          '  join  tbl_categories as cat on  c.id_cd_category = cat.id ' +
          ' left join  tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and '
          + '  cdv.id_transaction=' + CTNr2 + ' where ' + '  ct_number = ''' +
          CTNr + ''' and ' +
        // '  v.is_system_value <> ''1'' and   '+
          '  c.id_cd_value = v.id  and c.nr<>0   order by  cdv.ord asc';
      end;
      PgQuery12.SQL.Clear();
      PgQuery12.SQL.Add(xQuery);
      PgQuery12.Active := False;
      PgQuery12.Active := True;

    end;

    if VarToStr(cbCashdesk.EditValue) <> '' then
    begin

      DateTimeStr := VarToStr(DC.Values[SelectedRow, 10]);

      if Pos(WideString('OP'), CTNr) > 0 then // open
      begin
        FromShiftType := '1';
      end
      else if Pos(WideString('CL'), CTNr) > 0 then
      begin
        FromShiftType := '3';
      end
      else
      begin
        FromShiftType := '';
      end;

      PgQuery16.SQL.Clear();

      PgQuery16.SQL.Add(AmountsExpectedSQL(VarToStr(cbCashdesk.EditValue), CTNr,
        IdCdTransaction, IdCdSubTransaction, FromShiftType));

      PgQuery16.Active := False;
      PgQuery16.Active := True;

    end;

  end
  else
  begin

    // We get empty recordset by SQL

    PgQuery12.SQL.Clear();
    PgQuery12.SQL.Add('select ' + '  c.*, ' + '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount_base, ' +
      '  c.exchange_rate as change_chf, ' +
      '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' + '  v.name as value_name ' + 'from ' +
      '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
      '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
      '  ct_number = ''-1'' and ' + // <-- HERE ct_number = '-1'
      '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' +
      'order by ' + '  v.sort_order asc');
    PgQuery12.Active := False;
    PgQuery12.Active := True;

  end;

end;

procedure TListOfCashTransactionsFrame.btnAddCashTransactionClick
  (Sender: TObject);
var
  HasTransactions: Boolean;
begin
  cbCashdesk.Enabled := False;
  TransactionTypeId := CT_NORMAL;

  // Check if cashdesk has transactions

  cbTransaction.Properties.ReadOnly := False;

  HasTransactions := StrToInt(GetFieldAsString('select count(*) as cnt ' +
    'from tbl_cd_transactions ' + 'where id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue), 'cnt')) > 0;

  if HasTransactions then
  begin

    cxTabSheet1.TabVisible := True;
    cxTabSheet1.Enabled := True;
    cxTabSheet1.Caption := '    Cash transaction    ';

    cxTabSheet2.Enabled := False;
    // 1 cxTabSheet_ShortCut.Enabled := False;

    MainTabs.Properties.ActivePage := cxTabSheet1;

    cbTransaction.Enabled := True;
    edTransactionNo.Enabled := True;
    cbDirection.Enabled := True;

    cxLabel64.Hide();
    cxLabel65.Hide();
    cxGrid1.Hide();
    cxGrid9.Hide();
    mTransactionExplanation.Clear;
    cxLabel8.Visible := False;
    cxLabel7.Visible := False;
    edAmountIN.Visible := False;
    edAmountOUT.Visible := False;

    cxLabel4.Caption := 'Transaction:';
    cxLabel65.Caption := 'Cash transaction';
    cxLabel64.Left := 3;
    cxGrid1.Left := 3;
    cxGrid1.Width := 905;

    cbAccount.Hide();
    cxLabel5.Hide();

    MultipleTransaction := False;

    // Transactions combo-boxes

    PgQuery3.SQL.Clear();
    PgQuery3.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where ' + '  cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) +
      ') as t order by id_transaction asc ');
    PgQuery3.Active := False;
    PgQuery3.Active := True;

    PgQuery15.SQL.Clear();
    PgQuery15.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where ' + '  cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) +
      ') as t order by id_transaction asc ');
    PgQuery15.Active := False;
    PgQuery15.Active := True;

    btnSave.Caption := 'Save';
    SetGroupBox_GamingDay;
    OnShowShortCutManager(False);
  end
  else
  begin

    Information('Warning', 'Selected cashdesk has no assigned transactions');
    cbCashdesk.Enabled := True;

  end;
end;

procedure TListOfCashTransactionsFrame.btnAddMultipleCashTransactionClick
  (Sender: TObject);
var
  HasMultipleTransactions: Boolean;
begin

  TransactionTypeId := CT_NORMAL;

  cbTransaction.Properties.ReadOnly := False;

  // Check if cashdesk has multiple transactions

  HasMultipleTransactions :=
    StrToInt(GetFieldAsString('select count(*) as cnt ' +
    'from tbl_cd_multiple_transactions ' + 'where id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue), 'cnt')) > 0;

  if HasMultipleTransactions then
  begin
    cbCashdesk.Enabled := False;
    cxTabSheet1.Visible := True;
    cxTabSheet1.Enabled := True;
    cxTabSheet1.Caption := '    Multiple cash transaction    ';

    cxTabSheet2.Enabled := False;
    // 1 cxTabSheet_ShortCut.Enabled := False;

    MainTabs.Properties.ActivePage := cxTabSheet1;

    cbTransaction.Enabled := True;
    edTransactionNo.Enabled := True;
    cbDirection.Enabled := True;

    cxLabel64.Hide();
    cxLabel65.Hide();
    cxGrid1.Hide();
    cxGrid9.Hide();

    mTransactionExplanation.Clear;
    cxLabel8.Visible := False;
    cxLabel7.Visible := False;
    edAmountIN.Visible := False;
    edAmountIN.Visible := False;

    cxLabel4.Caption := 'Multiple tran.:';
    cxLabel65.Caption := 'Multiple cash transaction';
    cxLabel64.Left := 535;
    cxGrid1.Left := 535;
    cxGrid1.Width := 465;

    MultipleTransaction := True;

    cbAccount.Hide();
    cxLabel5.Hide();

    // Transactions combo-boxes

    PgQuery3.SQL.Clear();
    PgQuery3.SQL.Add
      ('select 0 as id_transaction, ''Select transaction'' as name ' + 'union '
      + 'select cdt.id_multiple_transaction as id_transaction, t.name ' +
      'from tbl_cd_multiple_transactions as cdt ' +
      'left join tbl_multiple_transactions as t on cdt.id_multiple_transaction = t.id '
      + 'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue));
    PgQuery3.Active := False;
    PgQuery3.Active := True;

    PgQuery15.SQL.Clear();
    PgQuery15.SQL.Add
      ('select 0 as id_transaction, ''Select transaction'' as name ' + 'union '
      + 'select cdt.id_multiple_transaction as id_transaction, t.name ' +
      'from tbl_cd_multiple_transactions as cdt ' +
      'left join tbl_multiple_transactions as t on cdt.id_multiple_transaction = t.id '
      + 'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue));
    PgQuery15.Active := False;
    PgQuery15.Active := True;

    btnSave.Caption := 'Save';

    SetGroupBox_GamingDay;

  end
  else
  begin

    Information('Warning',
      'Selected cashdesk has no assigned multiple transactions');
    cbCashdesk.Enabled := True;

  end;

end;

procedure TListOfCashTransactionsFrame.ShowShift(CTNr: WideString);
var
  TypeId: Integer;
  ShiftFrame: TAddShiftFrame;
  QueryStr: WideString;
  IdUser, IdCdTransaction, IdCdSubTransaction: WideString;
  FromShiftType: Integer;
  xIdLastShift: string;
  // xLastShiftDate: string;
  xbuffer: string;
  xbuffernumber: string;
  xTrans: TResultHandle;
begin

  TypeId := StrToInt
    (GetFieldAsString('select type from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + CTNr + '''', 'type'));

  frmMain.OpenFrame(frmMain.FrameNameByIdx(72));

  frmMain.btnCloseFrame.Hide;

  ShiftFrame := TAddShiftFrame(frmMain.CurrentFrame);
  ShiftFrame.edTransactionNo.Text := CTNr;
  ShiftFrame.lbShiftName.Caption := '(Buffered) ' + frmMain.ShiftInfo
    [TypeId].Name;

  Screen.Cursor := crHourGlass;

  // ExecSQL('begin;');

  xTrans := TResultHandle.Create;

  if CashDeskIsAlwaysActive then
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  ALWAYS ACTIVE';
  end
  else if CashDeskOpened then
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  OPENED';
  end
  else
  begin
    frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  CLOSED';
  end;

  ShiftFrame.TransactionType := TypeId;

  if TypeId = CT_OPEN_SHIFT then
  begin
    FromShiftType := CT_CLOSE_SHIFT;
  end
  else if TypeId = CT_CLOSE_SHIFT then
  begin
    FromShiftType := CT_OPEN_SHIFT;
  end
  else
  begin
    FromShiftType := CT_OPEN_SHIFT;
  end;
  xbuffer := GetFieldAsString('select datetime as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ') and ' + '  buffered_type = -1', 'dt');

  FLastShift := GetFieldAsString('select max(datetime) as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ') and ' + '  (datetime < ' +
    QuotedStr(xbuffer) + ' ) and ' + '  (type in (1, 3, 5, 7, 8, 9))', 'dt');

  ShiftFrame.Flastshiftdate := FLastShift;
  ShiftFrame.ShiftDate := StrToDatetime(FLastShift);
  if xbuffer = EmptyStr then
  begin

    xIdLastShift := GetFieldAsString('select id, max(datetime) ' +
      'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
      VarToStr(cbCashdesk.EditValue) + ') and ' + '  (datetime < now()) and ' +
      '  (type in (1, 3, 5, 7, 8, 9)) ' + 'group by id', 'id');
  end
  else
  begin
    xIdLastShift := GetFieldAsString
      ('select id ' + 'from tbl_cd_cash_transactions ' + 'where ' +
      '  (id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ') and ' +
      '  (datetime = ' + QuotedStr(xbuffer) + ') and ' +
      '  (type in (1, 3,6, 5, 7, 8, 9)) ', 'id');
  end;
  IdUser := GetFieldAsString('select id from tbl_users ' +
    'where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  IdCdTransaction := GetFieldAsString('select id from tbl_cd_cash_transactions '
    + 'where ct_number = ''' + CTNr + '''', 'id');

  ShiftFrame.FromShiftType := IntToStr(FromShiftType);
  ShiftFrame.IdCdTransaction := IdCdTransaction;
  ShiftFrame.edId.Text := IdCdTransaction;

  IdCdSubTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions_subt ' + 'where ct_number = ''' +
    CTNr + '''', 'id');

  ShiftFrame.CurrentCashDesk := VarToStr(cbCashdesk.EditValue);
  ShiftFrame.CashDeskDefaultCarryOver := CurrentCashdeskDefaultCarryover;
  ShiftFrame.TransactionType := TypeId;

  // ----------------------------------------------------------------------------

  if (xIdLastShift <> EmptyStr) then
  begin

    QueryStr := 'Update tbl_cd_cash_transactions_subt_categories_values set nr='
      + ' (Select nr from tbl_cd_cash_transactions_subt_categories_values A ' +
      ' where A.id_cd_value= tbl_cd_cash_transactions_subt_categories_values.id_cd_value '
      + '  and A.id_cd_transaction=%s) ' +
      '  where tbl_cd_cash_transactions_subt_categories_values.ct_number= ''%s''';
    QueryStr := Format(QueryStr, [xIdLastShift, CTNr]);

    ExecSQL(QueryStr);

  end;

  // Values ostatnia

  UpdateExchangeRates(CTNr, TypeId);

  // Values query

  ShiftFrame.PgQuery3.Active := False;
  ShiftFrame.PgQuery3.SQL.Clear();
  ShiftFrame.PgQuery3.SQL.Add('select ' + '  c.id, ' + '  c.nr as value_nr, ' +
    '  v.multiplier as value_multiplier, ' +
    '  c.nr * v.multiplier as amount_base, ' +
    '  c.exchange_rate as change_chf, ' +
    '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
    '  cat.name as category_name, ' + '  v.name as value_name ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    '  ct_number = ''' + CTNr + ''' and ' + '  c.id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' + 'order by '
    + '  v.sort_order asc ');
  ShiftFrame.PgQuery3.Active := True;

  // ----------------------------------------------------------------------------

  QueryStr := 'select ' + '  t1.category_name, ' + '  t2.currency_symbol, ' +
    '  t1.amount_0 as actual_amount_fc, ' + '  t1.amount_1 as actual_amount, ' +
    '  t2.amount_0 as amount_expected_fc, ' +
    '  t2.amount_1 as amount_expected, ' +
    '  t1.amount_1 - t2.amount_1 as difference ' + 'from ' + '( ' +

  // Actual amounts entered by cashier in current cashdesk
    'select ' + '  category_name(c.id_cd_category) as category_name, ' +
    '  curr.symbol as currency_symbol, ' +
    '  sum(c.nr * v.multiplier) as amount_0, ' +
    '  sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat, ' +
    '  tbl_currencies_exchange_rates as cer, ' + '  tbl_currencies as curr ' +
    'where ' + '  ct_number = ''' + CTNr + ''' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id and ' +
    '  c.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  cer.valid_from <= now() and cer.valid_to >= now() and ' +
    '  cer.id_currency = curr.id and ' + '  v.id_currency = curr.id ' +
    'group by ' + '  c.id_cd_category, curr.symbol ' + ') ' +
    '  as t1, ' + '( ' +

  // Amounts expected
  // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
  // (we have no direction)
    'select ' + '  s.cat_name as category_name, ' +
    '  s.currency_symbol as currency_symbol, ' +
    '  sum(s.amount0) as amount_0, ' + '  sum(s.amount1) as amount_1 ' + 'from '
    + '(' + '  select ' +
  // Here we calculate amount expected for shifts  after click button open or close shift
    '    v.category_name as cat_name, ' +
    '    v.currency_symbol as currency_symbol, ' +
    '    sum(v.nr * v.multiplier ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount0, ' +
    '    sum(v.nr * v.multiplier * v.exchange_rate ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount1 ' +
    '  from ' + '    tbl_cd_cash_transactions_subt_categories_values as v ' +
    '  where ' + '    v.ct_number <> ''' + CTNr + ''' and ' +
    '    (v.datetime <= now() and v.datetime >= ''' +
    StringToDataBAse(FLastShift) + ''')' + '     and ' + // > or >=
    '    v.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '    v.category_name is not null and ' +
  // '    substring(v.ct_number, 1, 2) <> ''CH'' and ' +
    '    substring(v.ct_number, 1, 3) <> ''INF''' + '  group by ' +
    '    cat_name, currency_symbol ' + ') ' + '  as s ' + 'group by ' +
    '  s.cat_name, s.currency_symbol ' + ') as t2 ' + 'where ' +
    '  t1.category_name = t2.category_name and ' +
    '  t1.currency_symbol = t2.currency_symbol';

  ShiftFrame.PgQuery4.Active := False;
  ShiftFrame.PgQuery4.SQL.Clear();
  ShiftFrame.PgQuery4.SQL.Add(QueryStr);
  ShiftFrame.PgQuery4.Active := True;

  ShiftFrame.mUserExplanation.Lines.Clear();

  xTrans.Free;

  // ExecSQL('commit;');

  Screen.Cursor := crDefault;
  cbCashdesk.Enabled := True;

end;

procedure TListOfCashTransactionsFrame.btnBufferShiftClick(Sender: TObject);
var
  BufferedShiftCTNr, BufferedType, DestinationShiftCTNr: WideString;
  i: Integer;
begin

  BufferedShiftCTNr := GetFieldAsString
    ('select ct_number from tbl_cd_cash_transactions ' + 'where ' +
    '  type = 15 and ' + '  id_cashdesk = ' + VarToStr(cbCashdesk.EditValue),
    'ct_number');

  BufferedType := GetFieldAsString
    ('select buffered_type from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + BufferedShiftCTNr + '''', 'buffered_type');

  // Restore buffered type

  if (BufferedType <> '-1') then
  begin
    ExecSQL('update tbl_cd_cash_transactions ' + 'set type = ' + BufferedType +
      ' ' + 'where ct_number = ''' + BufferedShiftCTNr + '''');
  end;

  // Clear buffered type

  ExecSQL('update tbl_cd_cash_transactions ' + 'set buffered_type = -1 ' +
    'where ct_number = ''' + BufferedShiftCTNr + '''');

  // Update of buffered shift datetime to Now()

  ExecSQL('update tbl_cd_cash_transactions ' + 'set datetime = now() ' +
    'where ct_number = ''' + BufferedShiftCTNr + '''');

  ExecSQL('update tbl_cd_cash_transactions_subt_categories_values ' +
    'set datetime = now() ' + 'where ct_number = ''' +
    BufferedShiftCTNr + '''');

  // Show buffered shift - modified code from PrepareShift()

  ShowShift(BufferedShiftCTNr);

end;

procedure TListOfCashTransactionsFrame.btnStartTransferClick(Sender: TObject);
var
  HasTransactions: Boolean;
begin

  cbCashdesk.Enabled := False;
  TransactionTypeId := CT_ACTUAL_TRANSFER_START;

  // Check if cashdesk has transactions

  cbTransaction.Properties.ReadOnly := False;

  HasTransactions := StrToInt(GetFieldAsString('select count(cdt.*) as cnt ' +
    'from ' + '  tbl_cd_transactions cdt ' +
    '  left join tbl_transactions as t on cdt.id_transaction = t.id ' + 'where '
    + '  cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  t.use_in_transfer = 1', 'cnt')) > 0;

  if HasTransactions then
  begin

    cxTabSheet1.TabVisible := True;
    cxTabSheet1.Enabled := True;
    cxTabSheet1.Caption := '    Actual transfer start    ';

    cxTabSheet2.Enabled := False;
    // 1 cxTabSheet_ShortCut.Enabled := False;

    MainTabs.Properties.ActivePage := cxTabSheet1;

    cbTransaction.Enabled := True;
    edTransactionNo.Enabled := True;
    cbDirection.Enabled := True;

    cxLabel64.Hide();
    cxLabel65.Hide();
    cxGrid1.Hide();
    cxGrid9.Hide();

    cxLabel4.Caption := 'Transfer:';
    cxLabel65.Caption := 'Transfer transaction';
    cxLabel64.Left := 3;
    cxGrid1.Left := 3;
    cxGrid1.Width := 688;

    cbAccount.Show();
    cbAccount.Enabled := True;
    cxLabel5.Show();

    cxLabel5.Caption := 'Select cashdesk: ';
    // TODO: We select account for given cashdesk

    PgQuery20.Active := False;
    PgQuery20.SQL.Clear();
    PgQuery20.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery20.Active := True;
    PgQuery21.Active := False;
    PgQuery21.SQL.Clear();
    PgQuery21.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery21.Active := True;

    MultipleTransaction := False;

    // Transactions combo-boxes

    PgQuery3.SQL.Clear();
    PgQuery3.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
      't.use_in_transfer = 1 ' + ') as t order by id_transaction asc ');
    PgQuery3.Active := False;
    PgQuery3.Active := True;

    PgQuery15.SQL.Clear();
    PgQuery15.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
      't.use_in_transfer = 1 ' + ') as t order by id_transaction asc ');
    PgQuery15.Active := False;
    PgQuery15.Active := True;

    btnSave.Caption := 'Make transfer';

    SetGroupBox_GamingDay;

  end
  else
  begin

    Information('Warning',
      'Selected cashdesk has no assigned transfer transactions');
    cbCashdesk.Enabled := True;

  end;

end;

procedure TListOfCashTransactionsFrame.btnTITOClick(Sender: TObject);
var
  FTito: TListOfTitoForm;
  SumH, SumT: Double;
  i: Integer;
  TITOHandpaysTransactionName : WideString;
  TITOTicketsTransactionName : WideString;
begin

  // 1) Show TITO data for selection

  FTito := TListOfTitoForm.Create(Self);
  FTito.PgQuery1.Active := False;
  FTito.PgQuery1.Active := True;
  FTito.ShowModal();

  // 2) Populate selected TITO data

  if FTito.ModalResult = mrOk then
  begin

    ExecSQL('update cd_ext_transactions set used = true where selected = true');

    SumT := StrToFloat
      (GetFieldAsString
      ('select sum(tr_value) as sum_t from cd_ext_transactions where tr_type = ''T'' and selected = true',
      'sum_t'));

    SumH := StrToFloat
      (GetFieldAsString
      ('select sum(tr_value) as sum_h from cd_ext_transactions where tr_type = ''H'' and selected = true',
      'sum_h'));

    // Information
    // (
    // 'Debug',
    // 'sum_h = ' + FloatToStr(SumH) + ', ' + 'sum_t = ' + FloatToStr(SumT)
    // );

    TITOHandpaysTransactionName :=
      GetFieldAsString
      (
        'select name from tbl_transactions ' +
        'where id in (select idtitotransactionhandpays form tbl_parameters)',
        'name'
      );

    TITOTicketsTransactionName :=
      GetFieldAsString
      (
        'select name from tbl_transactions ' +
        'where id in (select idtitotransactiontickets form tbl_parameters)',
        'name'
      );;

    for i := 0 to cxGridDBTableView8.DataController.RowCount - 1 do
    begin

      if cxGridDBTableView8.ViewData.Rows[i].Values[5] = TITOHandpaysTransactionName then
      begin
        cxGridDBTableView8.ViewData.Rows[i].Values[8] := SumH;
      end
      else if cxGridDBTableView8.ViewData.Rows[i].Values[5] = TITOTicketsTransactionName then
      begin
        cxGridDBTableView8.ViewData.Rows[i].Values[8] := SumT;
      end;

    end;

  end;

  FreeAndNil(FTito);

end;

procedure TListOfCashTransactionsFrame.btnTran1Click(Sender: TObject);
begin
  inherited;
  cbTransaction.EditValue := IntToStr(90);
  cbTransaction.refresh
end;

procedure TListOfCashTransactionsFrame.btnTransferRequestClick(Sender: TObject);
var
  HasTransactions: Boolean;
begin

  TransactionTypeId := CT_TRANSFER_REQUEST_START;

  // Check if cashdesk has transactions

  cbTransaction.Properties.ReadOnly := False;

  HasTransactions := StrToInt(GetFieldAsString('select count(cdt.*) as cnt ' +
    'from ' + '  tbl_cd_transactions cdt ' +
    '  left join tbl_transactions as t on cdt.id_transaction = t.id ' + 'where '
    + '  cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    '  t.use_in_transfer = 1', 'cnt')) > 0;

  if HasTransactions then
  begin

    cxTabSheet1.TabVisible := True;
    cxTabSheet1.Enabled := True;
    cxTabSheet1.Caption := '    Transfer request start    ';

    cxTabSheet2.Enabled := False;
    // 1 cxTabSheet_ShortCut.Enabled := False;

    MainTabs.Properties.ActivePage := cxTabSheet1;

    cbTransaction.Enabled := True;
    edTransactionNo.Enabled := True;
    cbDirection.Enabled := True;

    cxLabel64.Hide();
    cxLabel65.Hide();
    cxGrid1.Hide();
    cxGrid9.Hide();

    cxLabel4.Caption := 'Transfer:';
    cxLabel65.Caption := 'Transfer transaction';
    cxLabel64.Left := 3;
    cxGrid1.Left := 3;
    cxGrid1.Width := 688;

    cbAccount.Show();
    cbAccount.Enabled := True;
    cxLabel5.Show();

    cxLabel5.Caption := 'Select cashdesk: ';
    // TODO: We select account for given cashdesk

    PgQuery20.Active := False;
    PgQuery20.SQL.Clear();
    PgQuery20.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery20.Active := True;
    PgQuery21.Active := False;
    PgQuery21.SQL.Clear();
    PgQuery21.SQL.Add('select account_id, cd_name as name from tbl_cd');
    PgQuery21.Active := True;

    MultipleTransaction := False;

    // Transactions combo-boxes

    PgQuery3.SQL.Clear();
    PgQuery3.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
      't.use_in_transfer = 1 ' + ') as t order by id_transaction asc ');
    PgQuery3.Active := False;
    PgQuery3.Active := True;

    PgQuery15.SQL.Clear();
    PgQuery15.SQL.Add('select * from ( ' +
      'select 0 as id_transaction, ''Select transaction'' as name ' + 'union ' +
      'select cdt.id_transaction, t.name ' + 'from tbl_cd_transactions as cdt '
      + 'left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      'where cdt.id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
      't.use_in_transfer = 1 ' + ') as t order by id_transaction asc ');
    PgQuery15.Active := False;
    PgQuery15.Active := True;

    btnSave.Caption := 'Request transfer';

  end
  else
  begin

    Information('Warning',
      'Selected cashdesk has no assigned transfer transactions');
    cbCashdesk.Enabled := True;

  end;
end;

procedure TListOfCashTransactionsFrame.
  cxGrid1DBTableView1multiplierPropertiesEditValueChanged(Sender: TObject);
begin

  cxGrid1DBTableView1.DataController.Post(True);

  PgQuery1.Active := False;
  PgQuery1.Active := True;

end;

procedure TListOfCashTransactionsFrame.
  cxGrid1DBTableView1nrPropertiesEditValueChanged(Sender: TObject);
var

  SelectedRow: Integer;
  SelectedRow1: Integer;
  IdCdSubTransaction: WideString;
  xQuery: WideString;
  i: Integer;
begin

  SelectedRow := -1;
  SelectedRow1 := -1;
  if cxGrid9.Visible then
  begin
    cxGridDBTableView8.DataController.Post(True);
  end;

  if cxGrid1DBTableView1.DataController.RecordCount > 0 then
  begin
    cxGrid1DBTableView1.DataController.Post(True);
  end;

  // PgQuery1.DisableControls;
  // PgQuery5.DisableControls;

  SelectedRow1 := PgQuery1.FieldByName('id').AsInteger;
  SelectedRow := PgQuery5.FieldByName('id').AsInteger;
  if SelectedRow >= 0 then
  begin
    PgQuery1.Active := False;
    PgQuery1.Active := True;
  end
  else
  begin
    cxGrid1DBTableView1.DataController.Post(True);
    PgQuery1.Active := False;
    PgQuery1.Active := True;
  end;

  if MultipleTransaction then
  begin
    SetupBalancing();
    DoBilancing();
  end;

  if SelectedRow <> -1 then
  begin
    PgQuery5.Locate('id', SelectedRow, []);
  end;
  if SelectedRow1 <> -1 then
  begin
    PgQuery1.Locate('id', SelectedRow1, []);
  end;

  // PgQuery1.EnableControls;
  // PgQuery5.EnableControls;

end;

procedure TListOfCashTransactionsFrame.cxGrid1DBTableView1nrPropertiesValidate
  (Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if DisplayValue = '' then
  begin
    DisplayValue := 0;
  end
  else
  begin
    DisplayValue := Round(StrToFloat(VarToStr(DisplayValue)));
  end;
  Error := False;
end;

// ##############################################################################

procedure TListOfCashTransactionsFrame.cxGridDBTableView7CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  CurrentRow: Integer;
  TType: WideString;
begin

  // If we have transfer transaction, then we colour the selected row

  CurrentRow := AViewInfo.GridRecord.RecordIndex;

  // TODO: To obtain correct record in case of sorting
  // we MUST use DataController.Values[RecordIndex]
  // instead of ViewInfo.Values

  ACanvas.Font.Color := clBlack;

  TType := VarToStr(cxGridDBTableView7.DataController.Values[CurrentRow, 13]);

  if (TType = '10') or (TType = '12') then
  begin
    ACanvas.FillRect(AViewInfo.EditBounds, RGB(250, 180, 180));
  end
  else if (TType = '11') or (TType = '13') then
  begin
    ACanvas.FillRect(AViewInfo.EditBounds, RGB(180, 180, 250));
  end
  else
  begin
    ACanvas.FillRect(AViewInfo.EditBounds, clWhite);
  end;

end;

procedure TListOfCashTransactionsFrame.cxGridDBTableView7FocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  SelectedRow: Integer;
  TypeStr: WideString;
begin

  SelectedRow := cxGridDBTableView7.DataController.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    TypeStr := VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow]
      .Values[13]);

    if TypeStr = '10' then
    begin
      btnCancelPendingTransaction.Hide();
      btnConfirmPendingTransaction.Hide();
    end
    else if TypeStr = '11' then
    begin
      btnCancelPendingTransaction.Show();
      btnConfirmPendingTransaction.Show();
      btnCancelPendingTransaction.Caption :=
        'Delete transfer request acceptance';
      btnConfirmPendingTransaction.Caption :=
        'Accept transfer request acceptance';
    end
    else if TypeStr = '12' then
    begin
      btnCancelPendingTransaction.Hide();
      btnConfirmPendingTransaction.Hide();
    end
    else if TypeStr = '13' then
    begin
      btnCancelPendingTransaction.Show();
      btnConfirmPendingTransaction.Show();
      btnCancelPendingTransaction.Caption :=
        'Delete actual transfer acceptance';
      btnConfirmPendingTransaction.Caption :=
        'Accept actual transfer acceptance';
    end
    else
    begin
      btnCancelPendingTransaction.Show();
      btnConfirmPendingTransaction.Show();
      btnCancelPendingTransaction.Caption := 'Delete pending transaction';
      btnConfirmPendingTransaction.Caption := 'Confirm pending transaction';
    end;

    if VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow].Values[16]) = '1'
    then
    begin
      btnCancelPendingTransaction.Hide();
      btnConfirmPendingTransaction.Hide();
    end;

    PgQuery13.SQL.Clear();
    PgQuery13.SQL.Add('select ' + '  c.*, ' + '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount, ' + '  c.exchange_rate as change_chf, '
      + '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' + '  v.name as value ' + 'from ' +
      '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
      '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
      '  ct_number = ''' + VarToStr(cxGridDBTableView7.ViewData.Rows
      [SelectedRow].Values[2]) + ''' and ' + '  c.id_cd_category = cat.id and '
      + '  c.id_cd_value = v.id and c.nr<>0 ' + '  order by ' +
      '  v.sort_order asc');
    PgQuery13.Active := False;
    PgQuery13.Active := True;

  end
  else
  begin

    // We get empty recordset by SQL

    PgQuery13.SQL.Clear();
    PgQuery13.SQL.Add('select ' + '  c.*, ' + '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount, ' + '  c.exchange_rate as change_chf, '
      + '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' + '  v.name as value ' + 'from ' +
      '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
      '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
      '  ct_number = ''-1'' and ' + // <-- HERE ct_number = '-1'
      '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id and c.nr<>0'
      + 'order by ' + '  v.sort_order asc');
    PgQuery13.Active := False;
    PgQuery13.Active := True;

  end;

end;

function TListOfCashTransactionsFrame.GetCurrentExchangeRate
  (IdCurrency: WideString): Double;
begin
  Result := StrFloat(GetFieldAsString('select buying ' +
    'from tbl_currencies_exchange_rates ' + 'where ' + '  id_currency = ' +
    IdCurrency + ' and ' + '  valid_from <= now() and ' + '  valid_to >= now()',
    'buying'));
end;

procedure TListOfCashTransactionsFrame.DoBilancing();
var
  i, BilancingRow, BilancingRowDirection, CurrentRowDirection: Integer;
  QueryStr, xQuery, SubStr: WideString;
  TotalINStr, TotalOUTStr, CurrencyId, BilancingSubTransactionId: WideString;
  TotalIN, TotalOUT, BilancingExchangeRate, TotalAmountIn,
    TotalAmountOut: Double;
  MultipleSubtransactionHasNoValues, MultipleSubtransactionHasSystemValue,
    MultipleSubtransactionHasValidValues: Boolean;
  IdCdSubTransaction, IdCurrency, IdCategory: WideString;
begin

  // Finding bilancing cell & exchange rate

  xQuery := 'select ' + '  subt.*, ' + '  t.name, ' + '  t.is_for_change, ' +
    '  t.id_currency  ' + 'from ' + '  tbl_cd_cash_transactions_subt as subt ' +
    '  left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id '
    + 'where ' + '  subt.multiple_subtransaction_id > 0 and ' +
    '  subt.ct_number = ''' + edTransactionNo.Text + '''' + 'order by ' +
    '  t.sort_order asc ';
  PgQuery5.SQL.Clear();
  PgQuery5.SQL.Add(xQuery);
  PgQuery5.Active := False;
  PgQuery5.Active := True;
  cxGridDBTableView8.DataController.DataSource.DataSet := PgQuery5;
  BilancingRow := -1;
  BilancingRowDirection := -1;
  for i := 0 to cxGridDBTableView8.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView8.ViewData.Rows[i].Values[9] = '1' then
    begin
      BilancingRow := i;
      Break; // for
    end;
  end;

  if BilancingRow = -1 then
  begin

    BilancingExchangeRate := 1; // For division

    // Calculating totals

    for i := 0 to cxGridDBTableView8.DataController.RecordCount - 1 do
    begin

      TotalINStr := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[7]);
      TotalOUTStr := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[8]);

      CurrencyId := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[10]);

      TotalIN := TotalIN + StrFloat(TotalINStr) * GetCurrentExchangeRate
        (CurrencyId);

      TotalOUT := TotalOUT + StrFloat(TotalOUTStr) * GetCurrentExchangeRate
        (CurrencyId);

      // If subtransaction has no values or has only system values
      // we store amounts in system value

      MultipleSubtransactionHasNoValues :=
        GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_transactions_values as tv ' +
        '  left join tbl_values as v on tv.id_value = v.id ' + 'where ' +
        '  v.is_system_value = ''0'' and ' + '  tv.id_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]), 'cnt') = '0';

      MultipleSubtransactionHasValidValues :=
        StrInt(GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_transactions_values as tv ' +
        '  left join tbl_values as v on tv.id_value = v.id ' + 'where ' +
        '  v.is_system_value = ''0'' and ' + '  tv.id_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]), 'cnt')) > 0;

      MultipleSubtransactionHasSystemValue :=
        StrInt(GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
        '  left join tbl_values as v on ctv.id_cd_value = v.id ' + 'where ' +
        '  ctv.ct_number = ''' + VarToStr(edTransactionNo.Text) + ''' and ' +
        '  ctv.id_cd_sub_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]) + ' and ' +
        '  v.is_system_value = ''1''', 'cnt')) > 0;

      if MultipleSubtransactionHasValidValues then
      begin
        if i <> BilancingRow then
        begin

          QueryStr := 'update ' + '  tbl_cd_cash_transactions_subt ' + 'set ' +
            '  amount_in  = ''' + TotalINStr + '''::money::numeric::float8, ' +
            '  amount_out = ''' + TotalOUTStr + '''::money::numeric::float8 ' +
            'where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
            ''' and ' + '  multiple_subtransaction_id = ' +
            VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]);

          ExecSQL(QueryStr);

          frmMain.refresh(PgQuery5);
        end
        else // i = BilancingRow
        begin

          QueryStr := 'update ' + '  tbl_cd_cash_transactions_subt ' + 'set ' +
            '  amount_in  = ''' + TotalINStr + '''::money::numeric::float8, ' +
            '  amount_out  = ''' + TotalOUTStr + '''::money::numeric::float8 ' +
            'where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
            ''' and ' + '  multiple_subtransaction_id = ' +
            VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]);

        end;

      end;

      if MultipleSubtransactionHasSystemValue then
      begin

        IdCdSubTransaction :=
          VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]);

        IdCurrency := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[10]);

        IdCategory := '';

        // Depending on IN or OUT we take Values[7] or Values[8] for given row

        CurrentRowDirection :=
          StrToInt(VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[6]));

        if i = BilancingRow then
          BilancingRowDirection := CurrentRowDirection;

        case CurrentRowDirection of
          1:
            SubStr := '  nr = ''' +
              VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[7]);
          2:
            SubStr := '  nr = -''' +
              VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[8]);
        else
          Warning('Internal error in multiple transaction');
        end;

        QueryStr := 'update ' +
          '  tbl_cd_cash_transactions_subt_categories_values ' + 'set ' + SubStr
          + '''::money::numeric::float8 ' + 'where ' +
          '  id_cd_sub_transaction = ' + IdCdSubTransaction + ' and ' +
          '  id_cd_value in ' + '(' + '  select id from tbl_values where ' +
          '  is_system_value = ''1'' and ' +
          '  id_category = id_cd_category and ' + '  id_currency = ' +
          IdCurrency + '  limit 1 ' + ')' + 'and ' + // TODO
          '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';

        ExecSQL(QueryStr);

      end;

    end;
  end
  else // We have Bilancing row
  begin
    BilancingExchangeRate := GetCurrentExchangeRate
      (VarToStr(cxGridDBTableView8.ViewData.Rows[BilancingRow].Values[10]));

    if Abs(BilancingExchangeRate) < FLOAT_ZERO_MARGIN then
    begin
      Warning('Internal error in multiple transaction bilancing - invalid exchange rate');
      Exit;
    end;

    // Calculating totals (without bilancing cell)

    for i := 0 to cxGridDBTableView8.DataController.RecordCount - 1 do
    begin

      TotalINStr := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[7]);
      TotalOUTStr := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[8]);

      CurrencyId := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[10]);

      TotalIN := TotalIN + StrFloat(TotalINStr) * GetCurrentExchangeRate
        (CurrencyId);

      if i <> BilancingRow then
      begin

        TotalOUT := TotalOUT + StrFloat(TotalOUTStr) * GetCurrentExchangeRate
          (CurrencyId);

      end;

      // If subtransaction has no values or has only system values
      // we store amounts in system value

      MultipleSubtransactionHasNoValues :=
        GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_transactions_values as tv ' +
        '  left join tbl_values as v on tv.id_value = v.id ' + 'where ' +
        '  v.is_system_value = ''0'' and ' + '  tv.id_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]), 'cnt') = '0';

      MultipleSubtransactionHasValidValues :=
        StrInt(GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_transactions_values as tv ' +
        '  left join tbl_values as v on tv.id_value = v.id ' + 'where ' +
        '  v.is_system_value = ''0'' and ' + '  tv.id_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]), 'cnt')) > 0;

      MultipleSubtransactionHasSystemValue :=
        StrInt(GetFieldAsString('select ' + '  count(*) as cnt ' + 'from ' +
        '  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
        '  left join tbl_values as v on ctv.id_cd_value = v.id ' + 'where ' +
        '  ctv.ct_number = ''' + VarToStr(edTransactionNo.Text) + ''' and ' +
        '  ctv.id_cd_sub_transaction = ' +
        VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]) + ' and ' +
        '  v.is_system_value = ''1''', 'cnt')) > 0;

      if MultipleSubtransactionHasValidValues then
      begin
        if i <> BilancingRow then
        begin

          QueryStr := 'update ' + '  tbl_cd_cash_transactions_subt ' + 'set ' +
            '  amount_in  = ''' + TotalINStr + '''::money::numeric::float8, ' +
            '  amount_out = ''' + TotalOUTStr + '''::money::numeric::float8 ' +
            'where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
            ''' and ' + '  multiple_subtransaction_id = ' +
            VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]);

          ExecSQL(QueryStr);

          frmMain.refresh(PgQuery5);
        end
        else // i = BilancingRow
        begin

          QueryStr := 'update ' + '  tbl_cd_cash_transactions_subt ' + 'set ' +
            '  amount_in  = ''' + TotalINStr + '''::money::numeric::float8, ' +
            '  amount_out  = ''' + TotalOUTStr + '''::money::numeric::float8 ' +
            'where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
            ''' and ' + '  multiple_subtransaction_id = ' +
            VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[4]);

        end;

      end;

      if MultipleSubtransactionHasSystemValue then
      begin

        IdCdSubTransaction :=
          VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]);

        IdCurrency := VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[10]);

        IdCategory := '';

        // Depending on IN or OUT we take Values[7] or Values[8] for given row

        CurrentRowDirection :=
          StrToInt(VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[6]));

        if i = BilancingRow then
          BilancingRowDirection := CurrentRowDirection;

        case CurrentRowDirection of
          1:
            SubStr := '  nr = ''' +
              VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[7]);
          2:
            SubStr := '  nr = -''' +
              VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[8]);
        else
          Warning('Internal error in multiple transaction');
        end;

        QueryStr := 'update ' +
          '  tbl_cd_cash_transactions_subt_categories_values ' + 'set ' + SubStr
          + '''::money::numeric::float8 ' + 'where ' +
          '  id_cd_sub_transaction = ' + IdCdSubTransaction + ' and ' +
          '  id_cd_value in ' + '(' + '  select id from tbl_values where ' +
          '  is_system_value = ''1'' and ' +
          '  id_category = id_cd_category and ' + '  id_currency = ' +
          IdCurrency + '  limit 1 ' + ')' + 'and ' + // TODO
          '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';

        ExecSQL(QueryStr);

      end;

    end;

  end;

  // Filling out main transaction In & Out

  TotalAmountIn := TotalIN / BilancingExchangeRate;
  TotalAmountOut := TotalOUT / BilancingExchangeRate;
  if BilancingRow > -1 then
  begin
    QueryStr := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  amount_in = ''' + FloatStr(TotalAmountIn) +
      '''::money::numeric::float8 ' + 'where ' + '  id = ' + edId.Text;
    ExecSQL(QueryStr);

    QueryStr := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  amount_out = ''' + FloatStr(TotalAmountIn) { !!!!! } +
      '''::money::numeric::float8 ' + 'where ' + '  id = ' + edId.Text;
    ExecSQL(QueryStr);

    edAmountIN.Text := FloatStr(TotalIN / BilancingExchangeRate);
    edAmountOUT.Text := edAmountIN.Text;
  end
  else
  begin
    QueryStr := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  amount_in = ''' + FloatStr(TotalAmountIn) +
      '''::money::numeric::float8 ' + 'where ' + '  id = ' + edId.Text;
    ExecSQL(QueryStr);

    QueryStr := 'update ' + '  tbl_cd_cash_transactions ' + 'set ' +
      '  amount_out = ''' + FloatStr(TotalAmountOut) { !!!!! } +
      '''::money::numeric::float8 ' + 'where ' + '  id = ' + edId.Text;
    ExecSQL(QueryStr);

    edAmountIN.Text := FloatStr(TotalIN / BilancingExchangeRate);
    edAmountOUT.Text := FloatStr(TotalOUT / BilancingExchangeRate);

  end;

  // Updating bilancing subtransaction

  if BilancingRow > -1 then
  begin

    BilancingSubTransactionId :=
      VarToStr(cxGridDBTableView8.ViewData.Rows[BilancingRow].Values[0]);

    QueryStr := 'update ' + '  tbl_cd_cash_transactions_subt ' + 'set ' +
      '  amount_out = ''' + FloatStr(TotalAmountIn - TotalAmountOut) +
      '''::money::numeric::float8 ' + 'where ' + '  id = ' +
      BilancingSubTransactionId;

    ExecSQL(QueryStr);

    // Update of bilancing value in values
    // WARNING: We update SYSTEM value here !

    // Depending of direction we write to Nr TotalAmountIn or TotalAmountOut !

    case BilancingRowDirection of

      1:
        QueryStr := 'update ' +
          '  tbl_cd_cash_transactions_subt_categories_values ' + 'set ' +
          '  amount_in = ''' + FloatStr(TotalAmountIn) +
          '''::money::numeric::float8, ' + '  amount_out = ''' +
          FloatStr((TotalAmountIn - TotalAmountOut)) +
          '''::money::numeric::float8, ' + '  nr = ''' +
          FloatStr(TotalAmountOut) + '''::money::numeric::float8 ' + 'where ' +
          '  id_cd_sub_transaction = ' +
          VarToStr(cxGridDBTableView8.ViewData.Rows[BilancingRow].Values[0]) +
          ' and ' + '  id_cd_value in (select id from tbl_values where is_system_value = 1) and '
          + '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';

      2:
        QueryStr := 'update ' +
          '  tbl_cd_cash_transactions_subt_categories_values ' + 'set ' +
          '  amount_in = ''' + FloatStr(TotalAmountOut) +
          '''::money::numeric::float8, ' + '  amount_out = ''' +
          FloatStr((TotalAmountOut - TotalAmountIn)) +
          '''::money::numeric::float8, ' + '  nr = ''' +
          FloatStr(-TotalAmountIn) + '''::money::numeric::float8 ' + 'where ' +
          '  id_cd_sub_transaction = ' +
          VarToStr(cxGridDBTableView8.ViewData.Rows[BilancingRow].Values[0]) +
          ' and ' + '  id_cd_value in (select id from tbl_values where is_system_value = 1) and '
          + '  ct_number = ''' + VarToStr(edTransactionNo.Text) + '''';

    end;

    ExecSQL(QueryStr);

  end;

  PgQuery5.Active := False;
  PgQuery5.Active := True;

end;

procedure TListOfCashTransactionsFrame.
  cxGridDBTableView8amount_INPropertiesEditValueChanged(Sender: TObject);
begin

  cxGridDBTableView8.DataController.Post(True);

  PgQuery5.Active := False;
  PgQuery5.Active := True;

  DoBilancing();

end;

procedure TListOfCashTransactionsFrame.
  cxGridDBTableView8amount_OUTPropertiesEditValueChanged(Sender: TObject);
begin

  cxGridDBTableView8.DataController.Post(True);

  PgQuery5.Active := False;
  PgQuery5.Active := True;

  DoBilancing();

end;

procedure TListOfCashTransactionsFrame.cxGridDBTableView8CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Direction: WideString;
  RowIndex, ColumnIndex: Integer;
begin

  // Colouring

  RowIndex := AViewInfo.GridRecord.RecordIndex;
  ColumnIndex := AViewInfo.Item.Index;

  if ColumnIndex in [7, 8] then
  begin
    if VarToStr(cxGridDBTableView8.ViewData.Rows[RowIndex].Values[6]) <> '' then
    begin
      Direction := cxGridDBTableView8.ViewData.Rows[RowIndex].Values[6];

      if ((ColumnIndex - 6) <> StrToInt(Direction)) then
      begin
        ACanvas.FillRect(AViewInfo.EditBounds, clGray);
      end
      else
      begin
        ACanvas.FillRect(AViewInfo.EditBounds, clWhite);
      end;

      if (ColumnIndex - 6 = 2) and
        (cxGridDBTableView8.ViewData.Rows[RowIndex].Values[9] = '1') then
      begin
        ACanvas.FillRect(AViewInfo.EditBounds, clYellow);
      end;

    end;
  end;

end;

procedure TListOfCashTransactionsFrame.cxGridDBTableView8Editing
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  Direction, ValuesCount: WideString;
  RowIndex, ColumnIndex: Integer;
  SubTransactionHasNoValues: Boolean;
begin

  if WhileSetupBalancing then
  begin
    AAllow := True;
    Exit;
  end;

  // Editing

  // We can directly edit amounts for given transaction only if we have no values
  // for given subtransaction

  RowIndex := AItem.FocusedCellViewInfo.RecordViewInfo.GridRecord.RecordIndex;
  ColumnIndex := AItem.Index;

  ValuesCount := GetFieldAsString('select ' + '  count(c.id) as cnt ' + 'from '
    + '  tbl_cd_cash_transactions_subt_categories_values as c ' +
    '  left join tbl_values as v on v.id = c.id_cd_value ' + 'where ' +
    '  v.is_system_value = ''0'' and ' + '  c.ct_number = ''' +
    edTransactionNo.Text + ''' and ' + '  c.id_cd_sub_transaction = ' +
    VarToStr(cxGridDBTableView8.ViewData.Rows[RowIndex].Values[0]), 'cnt');

  SubTransactionHasNoValues := (ValuesCount = '0') or (ValuesCount = '');

  if SubTransactionHasNoValues then
  begin

    // TODO: If we are in the IN or OUT and the transaction is IN or OUT
    // we must check whether we can edit current cell

    if ColumnIndex in [7, 8] then
    begin
      if (ColumnIndex - 6 = 2) and
        (cxGridDBTableView8.ViewData.Rows[RowIndex].Values[9] = '1') then
      begin
        AAllow := False;
      end
      else
      begin
        Direction := cxGridDBTableView8.ViewData.Rows[RowIndex].Values[6];
        if Direction <> '' then
        begin
          AAllow := ((ColumnIndex - 6) = StrToInt(Direction));
        end;
      end;
    end;

  end
  else
  begin

    AAllow := False;

  end;

end;

procedure TListOfCashTransactionsFrame.cxGridDBTableView8FocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  SelectedRow: Integer;
  IdCdSubTransaction: WideString;
  xQuery: WideString;
begin

  // Set adequate values subgrid here

  SelectedRow := cxGridDBTableView8.DataController.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    IdCdSubTransaction := // id from subt
      cxGridDBTableView8.ViewData.Rows[SelectedRow].Values[0];

    cxGridDBTableView8.DataController.Post(True);

    PgQuery1.Active := False;
    PgQuery1.SQL.Clear();
    xQuery := 'select ' + '  c.*, ' + '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount_0, ' +
      '  c.exchange_rate as change_chf, ' +
      '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' + '  v.name as value_name ' + 'from ' +
      '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
      '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
      '  v.is_system_value <> ''1'' and ' + '  c.id_cd_category = cat.id and  '
      + '  c.id_cd_value = v.id and ' + '  c.id_cd_sub_transaction = ' +
      IdCdSubTransaction + ' ' + 'order by ' + '  v.sort_order asc';

    { xQuery :=

      'select ' +
      '  cd.id, ' +
      '  c.id_cashdesk, ' +
      '  c.nr, ' +
      '  v.multiplier, ' +
      '  c.nr * v.multiplier as amount, ' +
      '  c.exchange_rate as change_chf, ' +
      '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
      '  cat.name as category, ' +
      '  v.name as value_name, ' +
      '  cdv.ord ' +
      'from ' +
      '  tbl_cd_cash_transactions_subt_categories_values as c ' +
      '  left join tbl_cd_cash_transactions_subt as cd on c.ct_number = cd.ct_number, ' +
      '  tbl_values as v, ' +
      '  tbl_categories as cat, ' +
      '  tbl_currencies_exchange_rates as cer, ' +
      '  tbl_currencies as curr, ' +
      '  tbl_cd_values as cdv ' +
      'where ' +
      '  c.id_cd_category = cat.id and ' +
      '  c.id_cd_value = v.id and ' +
      '  cer.valid_from <= now() and ' +
      '  cer.valid_to >= now() and ' +
      '  cer.id_currency = curr.id and ' +
      '  curr.symbol = ''CHF'' and ' +
      '  c.id_cd_sub_transaction = ' + IdCdSubTransaction + ' and ' +
      '  c.id_cd_value = cdv.id_value and ' +
      '  v.is_system_value = 0 ' +
      'order by ' +
      '  cdv.ord asc'; }

    PgQuery1.SQL.Add(xQuery);
    PgQuery1.Active := True;

  end;

end;

procedure TListOfCashTransactionsFrame.SetFocusAfterTransactions;
{ var
  i: Integer;
  DC: TcxCustomDataController;
  s: string; }
begin
  { s := '';
    DC := cxGridDBTableView8.DataController;
    for i := 0 to cxGridDBTableView8.ColumnCount -1 do begin

    // DC.
    // DC.Values[DC.FocusedRecordIndex,cxGridDBTableView8.Columns[i].Index]
    end;
    if Length(s) > 0 then
    s := Copy(s,1,Length(s)-1);
    //end; }
end;

procedure TListOfCashTransactionsFrame.SetGroupBox_GamingDay;
begin

  GroupBox_Gaming_Day_GD.Visible := False;

  ComboBox_MainGD.Items.Clear;
  ComboBox_MainGD.Items.Add(DateToStr(now));
  ComboBox_MainGD.Items.Add(DateToStr(now - 1));
  ComboBox_MainGD.Items.Add(DateToStr(now - 2));
  ComboBox_MainGD.Items.Add(DateToStr(now - 3));
  ComboBox_MainGD.ItemIndex := 0;

  ComboBox_Account_From_gd.Items.Clear;
  ComboBox_Account_From_gd.Items.Add(DateToStr(now));
  ComboBox_Account_From_gd.Items.Add(DateToStr(now - 1));
  ComboBox_Account_From_gd.Items.Add(DateToStr(now - 2));
  ComboBox_Account_From_gd.Items.Add(DateToStr(now - 3));
  ComboBox_Account_From_gd.ItemIndex := 0;

  ComboBox_Account_To_GD.Items.Clear;
  ComboBox_Account_To_GD.Items.Add(DateToStr(now));
  ComboBox_Account_To_GD.Items.Add(DateToStr(now - 1));
  ComboBox_Account_To_GD.Items.Add(DateToStr(now - 2));
  ComboBox_Account_To_GD.Items.Add(DateToStr(now - 3));
  ComboBox_Account_To_GD.ItemIndex := 0;

end;

procedure TListOfCashTransactionsFrame.SetupBalancing();
var
  i: Integer;
  SumAmount: Double;
  Direction: Integer;
  QueryStr, SumAmountStr: WideString;
  ValuesCount: WideString;
  SubTransactionHasNoValues: Boolean;
  SelectedRow1: Integer;
  SelectedRow: Integer;
begin

  WhileSetupBalancing := True;

  // If we have 0 values or only 1 value (no need to show values)
  // then we edit directly balancing grid

  // PgQuery1.DisableControls;
  // PgQuery5.DisableControls;
  SelectedRow1 := PgQuery1.FieldByName('id').AsInteger;
  SelectedRow := PgQuery5.FieldByName('id').AsInteger;

  for i := 0 to cxGridDBTableView8.DataController.RecordCount - 1 do
  begin
    if cxGridDBTableView8.DataController.RecordCount = 0 then
      Break;

    ValuesCount := GetFieldAsString('select ' + '  count(c.id) as cnt ' +
      'from ' + '  tbl_cd_cash_transactions_subt_categories_values as c ' +
      '  left join tbl_values as v on v.id = c.id_cd_value ' + 'where ' +
      '  v.is_system_value = ''0'' and ' + '  c.ct_number = ''' +
      edTransactionNo.Text + ''' and ' + '  c.id_cd_sub_transaction = ' +
      VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]), 'cnt');

    SubTransactionHasNoValues := (ValuesCount = '0') or (ValuesCount = '');

    // If subtransaction has no values then skip to next row

    if SubTransactionHasNoValues then
    begin
      Continue;
    end;

    QueryStr := 'select ' + '  sum(c.nr * v.multiplier) as amount_sum ' +
      'from ' + '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
      '  tbl_values as v, ' + '  tbl_categories as cat, ' +
      '  tbl_currencies_exchange_rates as cer, ' + '  tbl_currencies as curr ' +
      'where ' + '  c.id_cd_category = cat.id and  ' +
      '  c.id_cd_value = v.id and  ' + '  cer.valid_from <= now() and  ' +
      '  cer.valid_to >= now() and  ' + '  cer.id_currency = curr.id and ' +
      '  curr.id = v.id_currency and ' + '  c.id_cd_sub_transaction = ' +
      VarToStr(cxGridDBTableView8.ViewData.Rows[i].Values[0]);

    SumAmountStr := GetFieldAsString(QueryStr, 'amount_sum');

    // Because subtransaction can has no values
    SumAmount := StrFloat(SumAmountStr);

    Direction := cxGridDBTableView8.ViewData.Rows[i].Values[6];

    if Direction = 1 then // In
    begin

      QueryStr := 'update tbl_cd_cash_transactions_subt ' + 'set amount_in = ' +
        StringReplace(Format('%f', [SumAmount]), ',', '.', [rfReplaceAll]) + ' '
        + 'where id = ' + VarToStr(cxGridDBTableView8.ViewData.Rows[i]
        .Values[0]);

      ExecSQL(QueryStr);

      // +  PgQuery5.Active := False;
      // +  PgQuery5.Active := True;

    end
    else if Direction = 2 then // Out
    begin

      QueryStr := 'update tbl_cd_cash_transactions_subt ' + 'set amount_out = '
        + StringReplace(Format('%f', [SumAmount]), ',', '.', [rfReplaceAll]) +
        ' ' + 'where id = ' + VarToStr(cxGridDBTableView8.ViewData.Rows[i]
        .Values[0]);

      ExecSQL(QueryStr);

      // +  PgQuery5.Active := False;
      // +  PgQuery5.Active := True;

    end;

  end;

  PgQuery5.Active := False;
  PgQuery5.Active := True;

  WhileSetupBalancing := False;

  if SelectedRow <> -1 then
  begin
    PgQuery5.Locate('id', SelectedRow, []);
  end;
  if SelectedRow1 <> -1 then
  begin
    PgQuery1.Locate('id', SelectedRow1, []);
  end;
  // PgQuery1.EnableControls;
  // PgQuery5.EnableControls;

end;

function TListOfCashTransactionsFrame.NextShiftNumber(TypeId: Integer)
  : WideString;
var
  dDay, dMonth, dYear: Word;
begin

  DecodeDate(now(), dYear, dMonth, dDay);
  Result := frmMain.ShiftInfo[TypeId].Mnemonic + '/' +
    IntToStr(cbCashdesk.EditValue) + '/' + IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

end;

procedure TListOfCashTransactionsFrame.btnOpenCashdeskClick(Sender: TObject);
var
  ShiftFrame: TAddShiftFrame;
begin

  checkCurrency;

  // We check fixed values here
  // Is there possibility to change fixed values while opening cashedsk ?

  frmMain.OpenFrame(frmMain.FrameNameByIdx(72));

  frmMain.btnCloseFrame.Hide;

  cbCashdesk.Enabled := False;

  // Initial of fill of cashdesk BEFORE open cashdesk

  ShiftFrame := TAddShiftFrame(frmMain.CurrentFrame);

  ShiftFrame.CurrentCashDesk := VarToStr(cbCashdesk.EditValue);

  // ShiftFrame.DoOpenMoving();

  ShiftFrame.edTransactionNo.Text := NextShiftNumber(CT_OPEN_SHIFT);
  ShiftFrame.lbShiftName.Caption := frmMain.ShiftInfo[CT_OPEN_SHIFT].Name;

  PrepareShift(ShiftFrame, ShiftFrame.edTransactionNo.Text, CT_OPEN_SHIFT);
  ShiftFrame.Flastshiftdate := Self.FLastShift;
  // If cashdesk is default_carryover and amounts_values <> amounts_expected then while closing shift
  // show another frame for moving auto transactions

end;

procedure TListOfCashTransactionsFrame.btnRefreshClick(Sender: TObject);
begin
  inherited;
  Self.cxTabSheet2Show(Sender);
end;

procedure TListOfCashTransactionsFrame.btnReverseTransactionClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  TypeId, NewTypeId, CashDesk, NewCashDesk, Direction, NewDirection: Integer;
  CTNr, NewCTNr, Confirms: WideString;
  Reversed, Confirmed: Boolean;
  dYear, dMonth, dDay: Word;
  DC: TcxDBTreeListDataController;
begin

  DC := cxDBTreeList1.DataController;

  SelectedRow := -1;

  if cxDBTreeList1.FocusedNode <> nil then
  begin

    if Assigned(cxDBTreeList1.FocusedNode) then
    begin
      SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;
    end;

    if SelectedRow >= 0 then
    begin
      if Question
        ('You are about to reverse confirmed transaction - are you sure ?') then
      begin

        CTNr := VarToStr(DC.Values[SelectedRow, 2]);

        TypeId := StrToInt
          (GetFieldAsString
          ('select type from tbl_cd_cash_transactions where ct_number = ''' +
          CTNr + '''', 'type'));
        NewTypeId := TypeId;

        DecodeDate(now(), dYear, dMonth, dDay);
        NewCTNr := frmMain.ShiftInfo[TypeId].Mnemonic + '/' +
          DestinationAccountCashdeskId + '/' + IntToStr(dDay) + '/' +
          IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
          IntToStr(GetNextCashTransactionNumber());

        CashDesk := StrToInt(VarToStr(cbCashdesk.EditValue));
        NewCashDesk := CashDesk;
        Direction :=
          StrToInt(GetFieldAsString
          ('select direction from tbl_cd_cash_transactions where ct_number = '''
          + CTNr + '''', 'direction'));
        if Direction in [1, 2] then
          NewDirection := (3 - Direction)
        else
          NewDirection := 0;
        Confirms := '';
        Reversed := True;
        Confirmed := True;

        frmMain.CopyTransaction(CTNr, NewCTNr, NewTypeId, NewCashDesk,
          NewDirection, Confirms, Reversed, Confirmed);

        frmMain.refresh(PgQuery2);
        frmMain.refresh(PgQuery16);

      end;

    end;

  end;

end;

function TListOfCashTransactionsFrame.GetNextCashTransactionNumber(): Integer;
var
  QueryStr, MaxId, TempNo: String;
  i, j: Integer;
begin

  MaxId := frmMain.GetFieldAsString('select max(id) as max_id ' +
    'from tbl_cd_cash_transactions', 'max_id');

  TempNo := frmMain.GetFieldAsString('select ct_number ' +
    'from tbl_cd_cash_transactions ' + 'where id = ' + MaxId, 'ct_number');

  if TempNo = '' then
  begin
    Result := 1;
  end
  else
  begin
    i := Pos('/', TempNo);
    j := PosEx('/', TempNo, i + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    Result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;

end;

procedure TListOfCashTransactionsFrame.cxTabSheet1Show(Sender: TObject);
var
  QueryStr: WideString;
  F: TAddCashTransactionFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  dYear, dMonth, dDay: Word;
  CurrentUserIsACashier, MultipleAccountsManual: Boolean;
begin

  edAmountIN.Text := '';
  edAmountOUT.Text := '';

  cbTransaction.EditValue := '0';

  CurrentUserIsACashier :=
    StrToInt(GetFieldAsString('select count(*) as cnt ' + 'from tbl_users ' +
    'where is_cashier = 1 and user_name = ''' + frmMain.CurrentUserName + '''',
    'cnt')) > 0;

  if not CurrentUserIsACashier then
  begin
    Information('Warning',
      'Current user is not a cashier - you cannot add cash transactions. Please re-login');
    Exit;
  end;

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  // frmMain.OpenFrame('Add cash transaction');

  lbCashier.Caption := ' Cashier: ' + frmMain.CurrentUserName;
  lbLoginTime.Caption := ' Login time: ' +
    DateTimeToStr(frmMain.CurrentLoginTime, frmMain.FormatSettings);
  edCashDesk.Text := VarToStr(cbCashdesk.EditValue);

  DecodeDate(now(), dYear, dMonth, dDay);

  if TransactionTypeId in [CT_ACTUAL_TRANSFER_START,
    CT_ACTUAL_TRANSFER_ACCEPTANCE, CT_TRANSFER_REQUEST_START,
    CT_TRANSFER_REQUEST_ACCEPTANCE] then
  begin
    edTransactionNo.Text := frmMain.ShiftInfo[TransactionTypeId].Mnemonic + '/'
      + edCashDesk.Text + '/' + IntToStr(dDay) + '/' + IntToStr(dMonth) + '/' +
      IntToStr(dYear) + '/' + IntToStr(GetNextCashTransactionNumber());
  end
  else
  begin
    edTransactionNo.Text := 'NORM/' + // Ordinary cash transaction
      edCashDesk.Text + '/' + IntToStr(dDay) + '/' + IntToStr(dMonth) + '/' +
      IntToStr(dYear) + '/' + IntToStr(GetNextCashTransactionNumber());

  end;

  PgQuery4.Active := False;
  PgQuery4.Active := True;

  PgQuery5.Active := False;
  PgQuery5.Active := True;

end;

procedure TListOfCashTransactionsFrame.ShowPendingTransactions();
var
  PendingTransactionsCount: Integer;
  bPendingTransactions: Boolean;
begin

  // Pending transactions info

  PendingTransactionsCount :=
    StrToInt(GetFieldAsString
    ('select count(*) as cnt from tbl_cd_cash_transactions ' +
    'where id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    'confirmed = 0 and type in (0, 10, 11, 12, 13)', 'cnt'));

  bPendingTransactions := (PendingTransactionsCount > 0);

  if bPendingTransactions then
  begin
    cxLabel10.Show();
    if PendingTransactionsCount = 1 then
    begin

      cxLabel10.Show();
      if PendingTransactionsCount = 1 then
      begin
        cxLabel10.Caption := '1 pending transaction';
      end
      else
      begin
        cxLabel10.Caption := IntToStr(PendingTransactionsCount) +
          ' pending transactions';
      end;
      cxPageControl1.Pages[1].TabVisible := True;
      cxPageControl1.Pages[1].Enabled := True;

    end
    else
    begin
      cxLabel10.Caption := IntToStr(PendingTransactionsCount) +
        ' pending transactions';
    end;
    cxPageControl1.Pages[1].TabVisible := True;
    cxPageControl1.Pages[1].Enabled := True;
  end
  else
  begin
    cxLabel10.Hide();
    cxPageControl1.Pages[1].TabVisible := False;
    cxPageControl1.Pages[1].Enabled := False;
  end;

end;

procedure TListOfCashTransactionsFrame.PrepareShiftButtons();
var
  BtnOffset, BufferedShiftCount: Integer;
begin

  if not VarIsNull(cbCashdesk.EditValue) then
  begin

    BufferedShiftCount :=
      StrToInt(GetFieldAsString
      ('select count(*) as cnt from tbl_cd_cash_transactions ' + 'where ' +
      '  type = 15 and ' + '  id_cashdesk = ' +
      VarToStr(cbCashdesk.EditValue), 'cnt'));

    if (BufferedShiftCount > 0) then
    begin

      btnOpenCashdesk.Visible := False;
      btnCloseCashDesk.Visible := False;
      btnChangeCashier.Visible := False;
      btnIntermediate.Visible := False;
      btnBufferShift.Visible := True;

    end
    else
    begin

      btnBufferShift.Visible := False;

      CashDeskIsAlwaysActive :=
        GetFieldAsString('select always_active from tbl_cd where id = ' +
        VarToStr(cbCashdesk.EditValue), 'always_active') = '1';

      if CashDeskIsAlwaysActive then
      begin
        CashDeskOpened := True;

        btnOpenCashdesk.Visible := False;
        btnCloseCashDesk.Visible := False;
        btnChangeCashier.Visible := True;
        btnIntermediate.Visible := False;

        btnAddCashTransaction.Visible := CashDeskOpened;
        btnAddMultipleCashTransaction.Visible := CashDeskOpened;
        btnStartTransfer.Visible := CashDeskOpened;
        btnTransferRequest.Visible := CashDeskOpened;
      end
      else
      begin
        // We check OPEN_CASHDESK, CLOSE_CASHDESK chain for last OPEN
        CashDeskOpened := GetFieldAsString
          ('select type from tbl_cd_cash_transactions ' + 'where ' +
          '  (id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ') and ' +
          '  (type = ' + IntToStr(CT_CLOSE_SHIFT) + ' or ' + '   type = ' +
          IntToStr(CT_OPEN_SHIFT) + ') ' + 'order by datetime desc ' +
          'limit 1', 'type') = IntToStr(CT_OPEN_SHIFT);

        // Check cashdesk default carryover

        CurrentCashdeskDefaultCarryover :=
          GetFieldAsString('select default_carryover from tbl_cd ' +
          'where id = ' + VarToStr(cbCashdesk.EditValue),
          'default_carryover') = '1';

        btnOpenCashdesk.Visible := not CashDeskOpened;
        btnCloseCashDesk.Visible := CashDeskOpened;
        btnChangeCashier.Visible := CashDeskOpened;
        btnIntermediate.Visible := CashDeskOpened;

        btnAddCashTransaction.Visible := CashDeskOpened;
        btnAddMultipleCashTransaction.Visible := CashDeskOpened;
        btnStartTransfer.Visible := CashDeskOpened;
        btnTransferRequest.Visible := CashDeskOpened;

      end;

      if CashDeskIsAlwaysActive then
      begin
        frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  ALWAYS ACTIVE';
      end
      else if CashDeskOpened then
      begin
        frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  OPENED';
      end
      else
      begin
        frmMain.lbMainHeader.Caption := cbCashdesk.Text + ':  CLOSED';
      end;

    end;

    ShowPendingTransactions();

  end;

end;

procedure TListOfCashTransactionsFrame.cxTabSheet2Show(Sender: TObject);
var
  DefaultCashDesk, DefaultCashDeskName: WideString;
begin
  {
    // Select default cashdesk for current user/cashier

    DefaultCashDesk :=
    GetFieldAsString
    (
    'select default_cashdesk from tbl_users ' +
    'where user_name = ''' + frmMain.CurrentUserName + '''',
    'default_cashdesk'
    );

    DefaultCashDeskName :=
    GetFieldAsString
    (
    'select cd_name from tbl_cd ' +
    'where id = ' + DefaultCashDesk,
    'cd_name'
    );

    cbCashDesk.EditText := DefaultCashDeskName;
    cbCashDesk.EditValue := DefaultCashDesk;
    cbCashDesk.PostEditValue();

    cbCashdesk.SelectedItem := 0;
  }

  // We get empty recordset by SQL

  PgQuery12.SQL.Clear();
  PgQuery12.SQL.Add('select ' + '  c.*, ' + '  v.multiplier, ' +
    '  c.nr * v.multiplier as amount_base, ' +
    '  c.exchange_rate as change_chf, ' +
    '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
    '  cat.name as category, ' + '  v.name as value_name ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    '  ct_number = ''-1'' and ' + // <-- HERE ct_number = '-1'
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' + 'order by '
    + '  v.sort_order asc');
  PgQuery12.Active := False;
  PgQuery12.Active := True;

  PrepareShiftButtons();

  cxPageControl1.ActivePageIndex := 0;

  cbCashdesk.Properties.OnEditValueChanged(Sender);

  frmMain.lbMainHeader.refresh();
  cbCashdesk.Enabled := True;

end;

procedure TListOfCashTransactionsFrame.cxTabSheet5Show(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView7.DataController.RowCount > 0 then
  begin
    cxGridDBTableView7.DataController.FocusedRecordIndex :=
      cxGridDBTableView7.DataController.RowCount - 1;

  end;
  if cxGrid8.CanFocus then
  begin
    cxGrid8.SetFocus;
  end;
end;

function TListOfCashTransactionsFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if VarToStr(cbTransaction.EditValue) = '' then
  begin
    Information('Warning',
      'Please choose transaction before creating empty cash transaction.');
    Result := False;
    Exit;
  end;

  if edTransactionNo.Text = '' then
  begin
    Information('Warning',
      'Please properly fill the cash transaction number field to initialise cash transaction');
    edTransactionNo.SetFocus();
    Result := False;
    Exit;
  end;

end;

function TListOfCashTransactionsFrame.IIf(B: Boolean; S1: WideString;
  S2: WideString): WideString;
begin
  if B then
  begin
    Result := S1;
  end
  else
  begin
    Result := S2;
  end;
end;

procedure TListOfCashTransactionsFrame.btnCancelClick(Sender: TObject);
var
  CTNr, ConfirmsCTNr: WideString;
begin

  CTNr := edTransactionNo.Text;

  ConfirmsCTNr := GetFieldAsString
    ('select confirms from tbl_cd_cash_transactions where ct_number = ''' + CTNr
    + '''', 'confirms');

  if ConfirmsCTNr <> '' then
  begin

    ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
      ConfirmsCTNr + ''';');
    ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = ''' +
      ConfirmsCTNr + ''';');
    ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
      + ConfirmsCTNr + ''';');
    ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
      + ConfirmsCTNr + ''';');

  end;

  ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
    CTNr + ''';');
  ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = ''' +
    CTNr + ''';');
  ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
    + CTNr + ''';');
  ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
    + CTNr + ''';');

  cxTabSheet1.TabVisible := False;
  cxTabSheet1.Enabled := False;
  cxTabSheet1.Caption := '    Cash transaction    ';

  cxTabSheet2.Enabled := True;
  // 1 cxTabSheet_ShortCut.Enabled := True;

  MainTabs.Properties.ActivePage := cxTabSheet2;

  PgQuery9.Active := False;
  PgQuery9.Active := True;

end;

procedure TListOfCashTransactionsFrame.btnCancelPendingTransactionClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  BaseCTNr, CTNr, CTNr2, BaseCTNr2: WideString;
begin

  SelectedRow := cxGridDBTableView7.DataController.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin
    if Question('You are about to delete pending transaction - are you sure ?')
    then
    begin

      CTNr := VarToStr(cxGridDBTableView7.ViewData.Rows[SelectedRow].Values[2]);

      BaseCTNr := GetFieldAsString
        ('select base_ct_number from tbl_cd_cash_transactions ' +
        'where ct_number = ''' + CTNr + '''', 'base_ct_number');

      BaseCTNr2 := GetFieldAsString
        ('select base_ct_number from tbl_cd_cash_transactions ' +
        'where ct_number = ''' + BaseCTNr + '''', 'base_ct_number');

      CTNr2 := GetFieldAsString
        ('select ct_number  from tbl_cd_cash_transactions ' +
        'where base_ct_number = ''' + BaseCTNr + ''' and base_ct_number<>' +
        QuotedStr(CTNr), 'ct_number');

      ExecSQL('begin;');
      ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
        CTNr + ''';');
      ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = ''' +
        CTNr + ''';');
      ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
        + CTNr + ''';');
      ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
        + CTNr + ''';');
      ExecSQL('commit;');

      if (BaseCTNr <> '') then
      begin

        ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
          BaseCTNr + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = '''
          + BaseCTNr + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
          + BaseCTNr + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
          + BaseCTNr + ''';');

        ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
          BaseCTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = '''
          + BaseCTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
          + BaseCTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
          + BaseCTNr2 + ''';');

        ExecSQL('delete from tbl_cd_cash_transactions where ct_number = ''' +
          CTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt where ct_number = '''
          + CTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
          + CTNr2 + ''';');
        ExecSQL('delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
          + CTNr2 + ''';');

      end;

      frmMain.refresh(PgQuery9);

    end;
  end;

end;

procedure TListOfCashTransactionsFrame.btnChangeCashierClick(Sender: TObject);
var
  ShiftFrame: TAddShiftFrame;
  PendingTransactionsCount: Integer;
begin

  checkCurrency;

  PendingTransactionsCount :=
    StrToInt(GetFieldAsString
    ('select count(*) as cnt from tbl_cd_cash_transactions ' +
    'where id_cashdesk = ' + VarToStr(cbCashdesk.EditValue) + ' and ' +
    'confirmed = 0 and type in (0, 10, 11, 12, 13)', 'cnt'));

  if PendingTransactionsCount > 0 then
  begin
    Information('Warning',
      'Cannot change cashier because of pending transactions');
    Exit;
  end;

  cbCashdesk.Enabled := False;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(72));

  frmMain.btnCloseFrame.Hide;

  ShiftFrame := TAddShiftFrame(frmMain.CurrentFrame);
  ShiftFrame.edTransactionNo.Text := NextShiftNumber(CT_CHANGE_CASHIER);
  ShiftFrame.lbShiftName.Caption := frmMain.ShiftInfo[CT_CHANGE_CASHIER].Name;

  PrepareShift(ShiftFrame, ShiftFrame.edTransactionNo.Text, CT_CHANGE_CASHIER);
  ShiftFrame.Flastshiftdate := Self.FLastShift;
  cbCashdesk.Enabled := True;

end;

procedure TListOfCashTransactionsFrame.btnClearCashdeskClick(Sender: TObject);
begin

  ExecSQL('DELETE FROM tbl_cd_cash_transactions WHERE id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue));

  ExecSQL('DELETE FROM tbl_cd_cash_transactions_subt WHERE id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue));

  ExecSQL('DELETE FROM tbl_cd_cash_transactions_subt_categories WHERE id_cashdesk = '
    + VarToStr(cbCashdesk.EditValue));

  ExecSQL('DELETE FROM tbl_cd_cash_transactions_subt_categories_values WHERE id_cashdesk = '
    + VarToStr(cbCashdesk.EditValue));

  cbCashdeskPropertiesEditValueChanged(Sender);

end;

procedure TListOfCashTransactionsFrame.btnCloseCashDeskClick(Sender: TObject);
var
  UnconfirmedCount: Integer;
  ShiftFrame: TAddShiftFrame;
begin
  checkCurrency;

  cbCashdesk.Enabled := False;
  // We check here if there are unconfirmed transactions

  UnconfirmedCount :=
    StrToInt(GetFieldAsString
    ('select count(*) as cnt from tbl_cd_cash_transactions ' +
    'where type in (0, 10, 12) and confirmed = 0 and id_cashdesk = ' +
    VarToStr(cbCashdesk.EditValue), 'cnt'));

  if UnconfirmedCount > 0 then
  begin
    Information('Warning', 'There are unconfirmed cash transactions');
    cbCashdesk.Enabled := True;
    Exit;
  end;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(72));

  frmMain.btnCloseFrame.Hide;

  ShiftFrame := TAddShiftFrame(frmMain.CurrentFrame);
  ShiftFrame.edTransactionNo.Text := NextShiftNumber(CT_CLOSE_SHIFT);
  ShiftFrame.lbShiftName.Caption := frmMain.ShiftInfo[CT_CLOSE_SHIFT].Name;

  PrepareShift(ShiftFrame, ShiftFrame.edTransactionNo.Text, CT_CLOSE_SHIFT);
  ShiftFrame.Flastshiftdate := Self.FLastShift;
  cbCashdesk.Enabled := True;

end;

procedure TListOfCashTransactionsFrame.btnIntermediateClick(Sender: TObject);
var
  ShiftFrame: TAddShiftFrame;
begin

  checkCurrency();

  cbCashdesk.Enabled := False;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(72));

  frmMain.btnCloseFrame.Hide;

  ShiftFrame := TAddShiftFrame(frmMain.CurrentFrame);
  ShiftFrame.edTransactionNo.Text := NextShiftNumber(CT_INFO);
  ShiftFrame.lbShiftName.Caption := frmMain.ShiftInfo[CT_INFO].Name;

  PrepareShift(ShiftFrame, ShiftFrame.edTransactionNo.Text, CT_INFO);
  ShiftFrame.Flastshiftdate := Self.FLastShift;
  cbCashdesk.Enabled := True;

end;

procedure TListOfCashTransactionsFrame.checkCurrency;
var
  xQuery: string;
  xIdCashDesk: Integer;
begin
  try
    xIdCashDesk := StrToInt(VarToStr(cbCashdesk.EditValue));
  except
    xIdCashDesk := 0;
  end;
  xQuery := ' Select tbl_currencies.symbol,tbl_currencies_exchange_rates.selling from tbl_currencies_exchange_rates,'
    + '  tbl_currencies  where valid_from between ' +
    ' (last_shift_date(%s)) and now()  ' +
    ' and  tbl_currencies.id= tbl_currencies_exchange_rates.id_currency ';
  xQuery := Format(xQuery, [IntToStr(xIdCashDesk)]);
  if Assigned(FCurrency) then
    FCurrency.Free;

  FCurrency := TResultHandle.Create;

  FCurrency.ClearResult;
  FCurrency.Add(xQuery);
  FCurrency.InvokeSQL;
end;

function TListOfCashTransactionsFrame.checkTransactionSave: Boolean;
var
  xQuery: string;
  xOk: Boolean;
begin
  xOk := True;
  if (edAmountIN.Text = '') and (edAmountOUT.Text = '') then
  begin
    xOk := True;

    xQuery := 'select count(*) as count from tbl_cd_cash_transactions_subt_categories_values where ct_number=''%s'' and nr<>0 ';
    xQuery := Format(xQuery, [edTransactionNo.Text]);

    if frmMain.GetFieldAsInteger(xQuery, 'count') = 0 then
      xOk := False;
    if xOk = False then
    begin
      Information('Warning',
        'No value(s) have been entered - transaction cannot be saved');
    end;
    Result := xOk;
  end;
  Result := xOk;
end;

procedure TListOfCashTransactionsFrame.UpdateExchangeRates(ct_number: string;
  TypeId: Integer);
var
  xString: string;
  xQuery: string;
  i: Integer;
  xDataSet: TResultHandle;
  xExec: TResultHandle;
begin
  FCurrency.First;
  xString := EmptyStr;
  for i := 0 to FCurrency.Count - 1 do
  begin
    if i = 0 then
    begin
      xString := QuotedStr(FCurrency.query.FieldByName('Symbol').AsString);
    end
    else
    begin
      xString := xString + ',' + QuotedStr(FCurrency.query.FieldByName('Symbol')
        .AsString);
    end;
    FCurrency.Next;
  end;

  if xString <> EmptyStr then
  begin
    if TypeId = CT_OPEN_SHIFT then
    begin
      xQuery := ' Select tbl_currencies_exchange_rates_hist.Selling, ' +
        ' tbl_currencies.Symbol from tbl_currencies_exchange_rates_hist,' +
        ' tbl_currencies where tbl_currencies_exchange_rates_hist.id_currency =  '
        + ' tbl_currencies.id and tbl_currencies.Symbol in (' + xString +
        '  )  ' + ' order by tbl_currencies_exchange_rates_hist.id desc LIMIT '
        + IntToStr(i);
    end
    else if ((TypeId = CT_CLOSE_SHIFT) or (TypeId = CT_CHANGE_CASHIER)) then
    begin
      xQuery := '  Select tbl_currencies_exchange_rates.Selling, ' +
        ' tbl_currencies.Symbol from tbl_currencies_exchange_rates,' +
        ' tbl_currencies where tbl_currencies_exchange_rates.id_currency =  ' +
        ' tbl_currencies.id  ';
    end
    else if TypeId = 6 then
    begin
      Exit
    end;
    xDataSet := TResultHandle.Create;
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    xDataSet.InvokeSQL;
    xDataSet.First;
    xExec := TResultHandle.Create;
    for i := 0 to xDataSet.Count - 1 do
    begin

      xQuery := 'update tbl_cd_cash_transactions_subt_categories_values ' +
        'set exchange_rate = %s ' +
        'where currency_symbol = ''%s'' and ct_number = ''%s''';
      xQuery := Format(xQuery,
        [FloatStrDataBase(xDataSet.query.FieldByName('Selling').AsFloat),
        xDataSet.query.FieldByName('Symbol').AsString, ct_number]);

      xExec.ClearResult;
      xExec.Add(xQuery);
      xExec.ExecuteSQL;
      xDataSet.Next;
    end;
    xDataSet.ClearResult;
    xDataSet.Free;
    xExec.ClearResult;
    xExec.Free;
  end;
end;

procedure TListOfCashTransactionsFrame.Print1Click(Sender: TObject);
var
  xObject: TReportsPrinter;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  xQuery: string;
  xType: Integer;
  xDataSet: TResultHandle;
begin
  inherited;
  SelectedRow := -1;
  DC := cxDBTreeList1.DataController;

  if Assigned(cxDBTreeList1.FocusedNode) then
  begin
    SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;
  end;

  if SelectedRow >= 0 then
  begin

    // CTNr       := VarToStr(DC.Values[SelectedRow, 2]);

    xQuery := ' Select id_cashdesk from tbl_cd_cash_transactions  where id in (%s)';

    xQuery := Format(xQuery,
      [StringToDataBAse(VarToStr(DC.Values[SelectedRow, 1]))]);

    xObject := TReportsPrinter.Create;
    try
      xObject.FidCashDesk := frmMain.GetFieldAsInteger(xQuery, 'id_cashdesk');
    except
      xObject.FidCashDesk := ckeyNILL;
    end;
    // je�eli shift to dajemy domy�lny wydruk dla shift�w
    xQuery := ' Select type from tbl_cd_cash_transactions  where id in (%s) ';
    xQuery := Format(xQuery,
      [StringToDataBAse(VarToStr(DC.Values[SelectedRow, 1]))]);
    xType := frmMain.GetFieldAsInteger(xQuery, 'type');

    if xType in [1, 3, 5] then
    begin
      xObject.FIdReport := cReportBalanceShifts;
      xObject.FCopies := 1;
    end
    else
    begin
      xQuery := ' Select COALESCE(how_many_copies,-1) as  how_many_copies, COALESCE(id_report,-1) as id_report from tbl_transactions  where id=%s';
      xQuery := Format(xQuery,
        [StringToDataBAse(VarToStr(DC.Values[SelectedRow, 13]))]);
      xDataSet := TResultHandle.Create;
      xDataSet.ClearResult;
      xDataSet.Add(xQuery);
      xDataSet.InvokeSQL;

      xObject.FIdReport := ckeyNILL;
      xObject.FCopies := 1;
      if xDataSet.Count > 0 then
      begin

        try
          xObject.FIdReport := StrToInt(xDataSet.query.FieldByName('id_report')
            .AsString);
        except
          xObject.FIdReport := ckeyNILL;
        end;

        try
          xObject.FCopies :=
            StrToInt(xDataSet.query.FieldByName('how_many_copies').AsString);
        except
          xObject.FCopies := 1;
        end;
        if xObject.FCopies = 0 then
          xObject.FCopies := 1;
      end;
      xDataSet.Free;
    end;
    xObject.Fct_number := VarToStr(DC.Values[SelectedRow, 2]);
    if xObject.FIdReport <> ckeyNILL then
    begin
      xObject.PrintReport;
    end;
    xObject.Free;
  end;
end;

procedure TListOfCashTransactionsFrame.PrepareContinuousBalance
  (CIF: TContinuousInfoForm; CTNumber: WideString);
var
  QueryStr, CurrentCashDesk, TransactionType, TypeId: WideString;
  IdUser, IdCdTransaction, IdCdSubTransaction: WideString;
  xIdLastShift: WideString;
  xlastshiftdate: WideString;
  AlwaysActive: Boolean;
  xifnormshift: string;
  xifcontinshift: string;
begin

  Screen.Cursor := crHourGlass;

  TypeId := IntToStr(CT_INFO);
  CIF.CTNr.Text := CTNumber;
  CurrentCashDesk := VarToStr(cbCashdesk.EditValue);
  TransactionType := TypeId;

  AlwaysActive := GetFieldAsString
    ('select always_active from tbl_cd where id = ' + CurrentCashDesk,
    'always_active') = '1';

  xlastshiftdate := GetFieldAsString
    ('select max(datetime) - time ''00:00:00.01'' as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    CurrentCashDesk + ') and ' + '  (datetime < now()) and ' +
    // '  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5)) ', 'dt');

  xifnormshift := GetFieldAsString
    ('select max(datetime) - time ''00:00:00.01'' as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    CurrentCashDesk + ') and ' + '  (datetime < now()) and ' +
    // '  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5,6)) ', 'dt');

  // TODO: Zrobi� funkcj� globaln�

  xIdLastShift := GetFieldAsString('select id, max(datetime) ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    CurrentCashDesk + ') and ' + '  (datetime < now()) and ' +
    // '  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5,6)) ' + 'group by id order by id desc limit 1', 'id');

  IdUser := GetFieldAsString('select id from tbl_users ' +
    'where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  QueryStr := 'insert into tbl_cd_cash_transactions ' + '( ' + '  id_cashdesk, '
    + '  type, ' + '  ct_number, ' + '  datetime, ' + '  id_user, ' +
    '  is_multiple_cd_transaction, ' + '  confirmed, ' + '  direction ' + ') ' +
    'values ' + '(' + CurrentCashDesk + ', ' + TypeId + ', ' + '''' + CTNumber +
    ''', ' + 'now(), ' + IdUser + ', ' + '  0, ' + '  1,' + '  1 ' + '); ';

  ExecSQL(QueryStr);

  IdCdTransaction := GetFieldAsString('select id from tbl_cd_cash_transactions '
    + 'where ct_number = ''' + CTNumber + '''', 'id');

  IdCdTransaction := IdCdTransaction;

  QueryStr := 'insert into tbl_cd_cash_transactions_subt ' + '( ' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number ' + ') ' +
    'values ' + '(' + CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' +
    CTNumber + ''' ' + ')';

  ExecSQL(QueryStr);

  IdCdSubTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions_subt ' + 'where ct_number = ''' +
    CTNumber + '''', 'id');

  QueryStr := 'insert into tbl_cd_cash_transactions_subt_categories ' + '(' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
    '  id_cd_sub_transaction, ' + '  id_cd_category' + ') ' + 'select ' +
    CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' + CTNumber + ''', ' +
    IdCdSubTransaction + ', ' + '  id_category ' + 'from ' + '  tbl_cd_values '
    + 'where ' + '  id_cashdesk = ' + CurrentCashDesk + ' ' + 'group by ' +
    '  id_category; ';

  ExecSQL(QueryStr);

  QueryStr := 'insert into tbl_cd_cash_transactions_subt_categories_values ' +
    '(' + '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
    '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  id_cd_value, ' +
    '  count, ' + '  amount_in, ' + '  amount_out, ' + '  nr, ' +
    '  exchange_rate, direction, multiplier,goes_into_amount_expected,datetime, '
    + ' last_shift_datetime, currency_symbol, category_name  ' + ') ' +

    'select ' + CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' +
    CTNumber + ''', ' + IdCdSubTransaction + ', ' + '  cdv.id_category, ' +
    '  cdv.id_value, ' + '  0, ' + '  0, ' + '  0, ' + '  0, ' +
  // '  case when ch.buying is not null then ch.buying else c.buying end , 1, v.multiplier,1,  ' +
    ' c.buying  , 1, v.multiplier, 1, now(), ' + 'last_shift_date(' +
    CurrentCashDesk + '), ' + '  curr.symbol,cat.name ' + 'from ' +
    '  tbl_cd_values as cdv ' +
    '  left join tbl_values as v on v.id = cdv.id_value ' +
    '  left join tbl_currencies_exchange_rates as c on v.id_currency = c.id_currency '
    + '  left join tbl_currencies curr on c.id_currency=curr.id ' +
    '  left join tbl_categories cat on cat.id=v.id_category ' + 'where ' +
    '  cdv.id_cashdesk = ' + CurrentCashDesk;

  ExecSQL(QueryStr);

  // ----------------------------------------------------------------------------
  { xifnormshift := GetFieldAsString('select max(datetime) - time ''00:00:00.01'' as dt ' +
    'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
    CurrentCashDesk + ') and ' + '  (datetime < now()) and ' +
    //'  (type in (1, 3, 5, 7, 8, 9)) ' +
    '(type in (1, 3, 5,6)) ',
    'dt'); }

  xifcontinshift := GetFieldAsString
    ('select max(datetime) - time ''00:00:00.01'' as dt ' +
    'from tbl_shifts_caskdesk ' + 'where ' + '  (id_cashdesk = ' +
    CurrentCashDesk + ')', 'dt');

  if (xifnormshift > xifcontinshift) then
  begin

    if xIdLastShift <> EmptyStr then
    begin

      QueryStr := 'update tbl_cd_cash_transactions_subt_categories_values ' +
        'set nr = ' +
        '  (select nr from tbl_cd_cash_transactions_subt_categories_values A ' +
        '   where A.id_cd_value = tbl_cd_cash_transactions_subt_categories_values.id_cd_value '
        + '     and A.id_cd_transaction = %s) ' +
        '  where tbl_cd_cash_transactions_subt_categories_values.ct_number= ''%s''';
      QueryStr := Format(QueryStr, [xIdLastShift, CTNumber]);

      ExecSQL(QueryStr);

    end;
  end
  else
  begin
    QueryStr := 'update tbl_cd_cash_transactions_subt_categories_values ' +
      'set nr = ' + '  (select nr from tbl_shifts_caskdesk A ' +
      '   where A.id_cd_value = tbl_cd_cash_transactions_subt_categories_values.id_cd_value '
      + '  and A.id_cashdesk= ''%s'')' +
      '  where tbl_cd_cash_transactions_subt_categories_values.ct_number= ''%s''';
    QueryStr := Format(QueryStr, [CurrentCashDesk, CTNumber]);;

    ExecSQL(QueryStr);

  end;
  UpdateExchangeRates(CTNumber, CT_INFO);

  CIF.PgQuery3.Active := False;
  CIF.PgQuery3.SQL.Clear();
  CIF.PgQuery3.SQL.Add('select ' + '  c.id, ' + '  c.nr as value_nr, ' +
    '  v.multiplier as value_multiplier, ' +
    '  c.nr * v.multiplier as amount_base, ' +
    '  c.exchange_rate as change_chf, ' +
    '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
    '  cat.name as category_name, ' + '  v.name as value_name, ' +
    '  c.id_cd_value, c.count, cat.id as id_cd_category, '' '' as currency_symbol,  '
    + '  c.id_transaction ' + ' from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    '  ct_number = ''' + CTNumber + ''' and ' + '  c.id_cashdesk = ' +
    CurrentCashDesk + ' and ' + '  c.id_cd_category = cat.id and ' +
    '  c.id_cd_value = v.id ' + 'order by ' + '  v.sort_order asc ');
  CIF.PgQuery3.Active := True;

  // ----------------------------------------------------------------------------

  QueryStr := 'select ' + '  t1.category_name, ' + '  t2.currency_symbol, ' +
    '  t1.amount_0 as actual_amount_fc, ' + '  t1.amount_1 as actual_amount, ' +
    '  t2.amount_0 as amount_expected_fc, ' +
    '  t2.amount_1 as amount_expected, ' +
    '  t1.amount_1 - t2.amount_1 as difference ' + 'from ' + '( ' +

  // Actual amounts entered by cashier in current cashdesk
    'select ' + '  category_name(c.id_cd_category) as category_name, ' +
    '  curr.symbol as currency_symbol, ' +
    '  sum(c.nr * v.multiplier) as amount_0, ' +
    '  sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat, ' +
    '  tbl_currencies_exchange_rates as cer, ' + '  tbl_currencies as curr ' +
    'where ' + '  ct_number = ''' + CTNumber + ''' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id and ' +
    '  c.id_cashdesk = ' + CurrentCashDesk + ' and ' +
    '  cer.valid_from <= now() and cer.valid_to >= now() and ' +
    '  cer.id_currency = curr.id and ' + '  v.id_currency = curr.id ' +
    'group by ' + '  c.id_cd_category, curr.symbol ' + ') ' +
    '  as t1, ' + '( ' +

  // Amounts expected
  // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
  // (we have no direction)
    'select ' + '  s.cat_name as category_name, ' +
    '  s.currency_symbol as currency_symbol, ' +
    '  sum(s.amount0) as amount_0, ' + '  sum(s.amount1) as amount_1 ' + 'from '
    + '(' + '  select ' +
  // Here we calculate amount expected for shifts  after click button open or close shift
    '    v.category_name as cat_name, ' +
    '    v.currency_symbol as currency_symbol, ' +
    '    sum(v.nr * v.multiplier ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount0, ' +
    '    sum(v.nr * v.multiplier * v.exchange_rate ' +
    '    * (case when v.direction = 1 then 1 else -1 end)) as amount1 ' +
    '  from ' + '    tbl_cd_cash_transactions_subt_categories_values as v ' +
    '  where ' + '    v.ct_number <> ''' + CTNumber + ''' and ' +
    '    (v.datetime <= now() ' + IIf(AlwaysActive, ')',
    'and v.datetime >= ''' + StringToDataBAse(xlastshiftdate) + ''')') +
    '     and ' + // > or >=
    '    v.id_cashdesk = ' + CurrentCashDesk + ' and ' +
    '    v.category_name is not null and ' +
  // '    substring(v.ct_number, 1, 2) <> ''CH'' and ' +
    '    substring(v.ct_number, 1, 3) <> ''INF''' + '  group by ' +
    '    cat_name, currency_symbol ' + ') ' + '  as s ' + 'group by ' +
    '  s.cat_name, s.currency_symbol ' + ') as t2 ' + 'where ' +
    '  t1.category_name = t2.category_name and ' +
    '  t1.currency_symbol = t2.currency_symbol';

  CIF.PgQuery4.Active := False;
  CIF.PgQuery4.SQL.Clear();
  CIF.PgQuery4.SQL.Add(QueryStr);
  CIF.PgQuery4.Active := True;

  Screen.Cursor := crDefault;

end;

procedure TListOfCashTransactionsFrame.btnContinuousInfoClick(Sender: TObject);
var
  CIF: TContinuousInfoForm;
begin

  CIF := TContinuousInfoForm.Create(Self);
  CIF.Show();
  CIF.FidCashDesk := VarToStr(cbCashdesk.EditingValue);
  checkCurrency();

  PrepareContinuousBalance(CIF, NextShiftNumber(CT_CONTINUOUS_BALANCE));

end;

procedure TListOfCashTransactionsFrame.OnShowShortCutManager
  (Amultiple: Boolean);
var
  xQuery: string;
  xDataSet: TResultHandle;
  i: Integer;
  xButton: TcxButton;
  xTop: Integer;
begin

  xQuery := '  Select * from tbl_shortcut_user where ' +
    ' id_cashdesk=%s and id_user=%s and is_Multiple=%s and is_active=1 ' +
    ' order by Labels ';

  xQuery := Format(xQuery, [VarToStr(cbCashdesk.EditValue),
    frmMain.CurrentUserId, IntToStr(Integer(Amultiple))]);
  xDataSet := TResultHandle.Create;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.First;
  xTop := 5;

  for i := 0 to xDataSet.Count - 1 do
  begin
    xButton := TcxButton.Create(nil);
    xButton.Parent := ScrollBox1;
    xButton.OnClick := OnClickButtonShortCutManager;
    xButton.Tag := xDataSet.query.FieldByName('id').AsInteger;
    xButton.Caption := xDataSet.query.FieldByName('Labels').AsString;
    xButton.Left := 5;
    xButton.Width := ScrollBox1.ClientWidth - 10;
    xButton.Height := 22;
    xButton.Top := xTop;
    xDataSet.Next;
    xTop := xButton.Height + 1 + xTop;
  end;
  xDataSet.ClearResult;
  xDataSet.Free;
  if i = 0 then
  begin
    ScrollBox1.Visible := False;
  end;
end;

procedure TListOfCashTransactionsFrame.OnClickButtonShortCutManager
  (Sender: TObject);
var
  xId: string;
  xQuery: string;
  xTrans: string;
  xAccount: string;
  xDirection: string;
begin

  xId := IntToStr(TcxButton(Sender).Tag);
  xTrans := EmptyStr;
  xAccount := EmptyStr;
  xDirection := EmptyStr;

  with TResultHandle.Create do
  begin
    xQuery := 'Select * from tbl_shortcut_user where id=' +
      StringToDataBAse(xId);
    ClearResult;
    Add(xQuery);
    InvokeSQL;
    if Count > 0 then
    begin
      xTrans := query.FieldByName('id_cd_transaction').AsString;
      xAccount := query.FieldByName('id_account').AsString;
      xDirection := query.FieldByName('direction').AsString;
    end;

    ClearResult;
    // Przygotowanie values
    xQuery := 'Select * from tbl_shortcut_user_values where id_shortcut_user=' +
      StringToDataBAse(xId);

    ClearResult;
    Add(xQuery);
    InvokeSQL;
    if ((Count = 1) and (query.FieldByName('nr').AsFloat = -1)) then
    begin
      if Trim(query.FieldByName('amountin').AsString) <> '' then
      begin
        edAmountIN.Text := query.FieldByName('amountin').AsString
      end
      else if Trim(query.FieldByName('amountout').AsString) <> '' then
      begin
        edAmountOUT.Text := query.FieldByName('amountout').AsString;
      end;
      if cbTransaction.Visible then
      begin
        cbTransaction.EditValue := xTrans;
      end;
    end
    else if Count > 0 then
    begin
      if xTrans <> EmptyStr then
      begin
        cbTransaction.Properties.OnEditValueChanged := nil;
        cbTransaction.EditValue := xTrans;
        cbTransactionPropertiesEditValueChanged(nil);
        xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set nr = tbl_shortcut_user_values.nr from tbl_shortcut_user_values '
          + ' where  tbl_cd_cash_transactions_subt_categories_values.ct_number='
          + QuotedStr(edTransactionNo.Text) +
          ' and  tbl_cd_cash_transactions_subt_categories_values.id_cd_value= tbl_shortcut_user_values.id_value '
          + ' and id_shortcut_user=' + StringToDataBAse(xId);
        ClearResult;
        Add(xQuery);
        ExecuteSQL;
        cbTransaction.Properties.OnEditValueChanged :=
          cbTransactionPropertiesEditValueChanged;
        xQuery := ' select  cdv.ord, c.*,   v.multiplier,   c.nr * v.multiplier as amount_0, '
          + ' c.exchange_rate as change_chf, ' +
          ' c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          ' cat.name as category,   v.name as value_name from ' +
          ' tbl_cd_cash_transactions_subt_categories_values as c ' +
          ' join tbl_values as v on c.id_cd_value =v.id ' +
          ' join  tbl_categories as cat on  c.id_cd_category = cat.id ' +
          ' right join  tbl_cd_values cdv on c.id_cd_value = cdv.id_value and  cdv.id_CashDesk='
          + edCashDesk.Text + ' where ' + '  c.ct_number = ''' +
          edTransactionNo.Text + ''' and ' + ' v.is_system_value <> ''1'' and '
          + ' c.id_cd_value = v.id order by  cdv.ord asc ';
        PgQuery1.SQL.Clear();
        PgQuery1.SQL.Add(xQuery);

        PgQuery1.Active := False;
        PgQuery1.Active := True;

      end;
    end;
    ClearResult;
    Free;
    if cbAccount.Visible then
    begin
      if xAccount <> EmptyStr then
      begin
        cbAccount.EditValue := xAccount;
      end;
    end;
    if xDirection <> EmptyStr then
    begin
      case xDirection[1] of
        '1':
          lbTransactionDirection.Caption := 'In';
        '2':
          lbTransactionDirection.Caption := 'Out';
        '3':
          lbTransactionDirection.Caption := 'In <-> Out';
      end;
    end;
  end;
end;

end.
