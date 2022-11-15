unit UListofStatisticCategoryFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxMaskEdit,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DBAccess, PgAccess, MemDS, cxTL,
  cxClasses, cxButtons, Vcl.ComCtrls, Vcl.ExtCtrls, cxPC, cxContainer,
  cxTextEdit, cxLabel, cxMemo, cxGroupBox, cxRadioGroup, cxButtonEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TListofStatisticCategoryFrame = class(TBaseFrame)
    cxPageControl_Category: TcxPageControl;
    cxTabSheet_ListCategories: TcxTabSheet;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
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
    PgSQL1: TPgSQL;
    SCategoryGrid: TcxGrid;
    SCategoryGridDBTableView1: TcxGridDBTableView;
    SCategoryGridDBName: TcxGridDBColumn;
    SCategoryGridLevel1: TcxGridLevel;
    cxTabSheet_category: TcxTabSheet;
    cxLabel_CName: TcxLabel;
    cxTextEdit_name: TcxTextEdit;
    btnAddSScategory: TcxButton;
    btnCancel: TcxButton;
    SCategoryGridDBTableViewID: TcxGridDBColumn;
    cxTabSheet_ValuesCategories: TcxTabSheet;
    cxGrid_CategoryValues: TcxGrid;
    cxGridDBTableCategoryValuesView: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxTreeListStyleSheet1: TcxTreeListStyleSheet;
    PgDataSource2: TPgDataSource;
    PgQuery2: TPgQuery;
    PgTable2: TPgTable;
    PgSQL2: TPgSQL;
    cxGridDBTableView_Type: TcxGridDBColumn;
    cxGridDBTableView_Id: TcxGridDBColumn;
    cxGridDBTableView_Name: TcxGridDBColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxTreeListStyleSheet2: TcxTreeListStyleSheet;
    PgDataSource3: TPgDataSource;
    PgQuery3: TPgQuery;
    PgTable3: TPgTable;
    PgSQL3: TPgSQL;
    cxLabel_Refresh: TcxLabel;
    cxMaskEdit_Refresh: TcxMaskEdit;
    cxLabel_ms: TcxLabel;
    Panel_Bootom1: TPanel;
    cxButton_BackListCategory: TcxButton;
    cxGrid_PosibleValues: TcxGrid;
    cxGrid_PosibleValuesDBTableView_PosibleValues: TcxGridDBTableView;
    cxGrid_PosibleValuesDBTableView_PosibleValuesColumn1: TcxGridDBColumn;
    cxGrid_PosibleValuesLevel1: TcxGridLevel;
    cxGrid_PosibleValuesDBTableView_PosibleValuesId: TcxGridDBColumn;
    cxStyle43: TcxStyle;
    cxGrid_StringValues: TcxGrid;
    cxGridDBTableViewStringValues: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxTreeListStyleSheet3: TcxTreeListStyleSheet;
    PgDataSource4: TPgDataSource;
    PgQuery4: TPgQuery;
    PgTable4: TPgTable;
    PgSQL4: TPgSQL;
    cxGrid_PosibleValuesDBTableView_PosibleValuesCheck: TcxGridDBColumn;
    cxGridDBTableViewStringValues_Check: TcxGridDBColumn;
    cxGridDBTableCategoryValuesViewColumn_Check: TcxGridDBColumn;
    cxGrid_StringValuesToValues: TcxGrid;
    cxGridDBTableView_StringValuesToValues: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    PgSQL5: TPgSQL;
    PgTable5: TPgTable;
    PgQuery5: TPgQuery;
    PgDataSource5: TPgDataSource;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxTreeListStyleSheet4: TcxTreeListStyleSheet;
    cxGrid_Values: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid_PosibleValuesCategry: TcxGrid;
    cxGridDBTableViewPosibleValuescategory: TcxGridDBTableView;
    cxGridDBColumn_ID: TcxGridDBColumn;
    cxGridDBColumn_NAme: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    GroupBox_AddNewCategory: TGroupBox;
    cxButton_AddNewCategory: TcxButton;
    cxButton_ModifyNewCategory: TcxButton;
    cxButton_DeleteNewcategory: TcxButton;
    cxTextEdit_NewCategory: TcxTextEdit;
    GroupBox_AddValues: TGroupBox;
    cxButton_AddNewValue: TcxButton;
    cxButton_ModifyNewValue: TcxButton;
    cxButton_DeleteNewValue: TcxButton;
    cxTextEdit_Val_Name: TcxTextEdit;
    cxRadioGroup_ValueType: TcxRadioGroup;
    cxMemo_Description: TcxMemo;
    cxLabel_Description: TcxLabel;
    PgSQL6: TPgSQL;
    PgTable6: TPgTable;
    PgQuery6: TPgQuery;
    PgDataSource6: TPgDataSource;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxTreeListStyleSheet5: TcxTreeListStyleSheet;
    cxGridDBTableViewPosibleValuescategoryColumn1: TcxGridDBColumn;
    cxGridDBTableViewPosibleValuescategoryColumn2: TcxGridDBColumn;
    PgSQL7: TPgSQL;
    PgTable7: TPgTable;
    PgQuery7: TPgQuery;
    PgDataSource7: TPgDataSource;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxTreeListStyleSheet6: TcxTreeListStyleSheet;
    cxGridDBTableView_TypeS: TcxGridDBColumn;
    Label_category: TLabel;
    GroupBox2: TGroupBox;
    cxTextEdit_AddNewStringValues: TcxTextEdit;
    cxButton_AddNewStringValues: TcxButton;
    cxButton_ModifyStringValues: TcxButton;
    cxButton_DeleteNewStringValues: TcxButton;
    Panel_ValuesCategory: TPanel;
    cxButton_valuesCategory: TcxButton;
    cbGroupsUsers: TcxDBLookupComboBox;
    PgQuery8: TPgQuery;
    PgDataSource8: TPgDataSource;
    PgDataSource9: TPgDataSource;
    PgQuery9: TPgQuery;
    SCategoryGridDBTable_iDGroups: TcxGridDBColumn;
    Panel_LeftRight: TPanel;
    Button_leftValuesCategory: TcxButton;
    Button_RightValuesCategory: TcxButton;
    Label1: TLabel;
    cxStyle101: TcxStyle;
    SCategoryGridDBTable_UsersGroup: TcxGridDBColumn;
    Panel_LeftrightValues: TPanel;
    cxButton_Left: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    PopupMenu5: TPopupMenu;
    PopupMenu6: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    Exporttoexcel2: TMenuItem;
    Exporttoexcel3: TMenuItem;
    Exporttoexcel4: TMenuItem;
    Exporttoexcel5: TMenuItem;
    Exporttoexcel6: TMenuItem;
    PopupMenu7: TPopupMenu;
    Exporttoexcel7: TMenuItem;
    procedure SCategoryGridEnter(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddSScategoryClick(Sender: TObject);
    procedure btnLeftCategoryClick(Sender: TObject);
    procedure cxButton_AddValueClick(Sender: TObject);
    procedure cxButton_valuesCategoryClick(Sender: TObject);
    procedure cxButton_BackListCategoryClick(Sender: TObject);
    procedure btn_val_CancelClick(Sender: TObject);
    procedure btnButton_AddNewValueClick(Sender: TObject);
    procedure cxButton_ModifyValueClick(Sender: TObject);
    procedure cxButton_deleteValuesClick(Sender: TObject);
    procedure cxButton_BackListValuesCategoryClick(Sender: TObject);
    procedure cxButton_LeftClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid_PosibleValuesEnter(Sender: TObject);
    procedure cxCheckBoxSaveClick(Sender: TObject);
    procedure cxButton_AddNewStringValuesClick(Sender: TObject);
    procedure cxButton_ModifyStringValuesClick(Sender: TObject);
    procedure cxGrid_PosibleValuesDBTableView_PosibleValuesFocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton_DeleteNewStringValuesClick(Sender: TObject);
    procedure cxGridDBTableCategoryValuesViewFocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBTableCategoryValuesViewColumn_CheckPropertiesChange
      (Sender: TObject);
    procedure cxButton_AddNewCategoryClick(Sender: TObject);
    procedure cxButton_ModifyNewCategoryClick(Sender: TObject);
    procedure cxButton_DeleteNewcategoryClick(Sender: TObject);
    procedure cxButton_AddNewValueClick(Sender: TObject);
    procedure cxGridDBTableViewPosibleValuescategoryCellClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton_ModifyNewValueClick(Sender: TObject);
    procedure cxButton_DeleteNewValueClick(Sender: TObject);
    procedure Button_leftValuesCategoryClick(Sender: TObject);
    procedure Button_RightValuesCategoryClick(Sender: TObject);
    procedure SCategoryGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableCategoryValuesViewCellClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure Exporttoexcel2Click(Sender: TObject);
    procedure Exporttoexcel3Click(Sender: TObject);
    procedure Exporttoexcel4Click(Sender: TObject);
    procedure Exporttoexcel5Click(Sender: TObject);
    procedure Exporttoexcel6Click(Sender: TObject);
    procedure Exporttoexcel7Click(Sender: TObject);

  private
    { Private declarations }
  public
    fid: Integer;
    FidValues: Integer;
    FidStringValues: Integer;
    FidPosibleStringValues: Integer;
    FidPosibleValues: Integer;
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure AlignTabSheet_Cat(enabled: Boolean);
    procedure AlignTabSheet_Val(enabled: Boolean);
    procedure AlignTabSheet_NewVal(enabled: Boolean);
    function CheckFieldsCategory: Boolean;
    function CheckFieldsValueCategory: Boolean;
    function TypeCategoryToItemIndex(Atype: string): byte;

    procedure SaveStringValues(AidMasterValue: Integer);
    procedure DeleteStringValues(AidMasterValue: Integer);
    procedure resultvaluesCellclick();
  end;

var
  ListofStatisticCategoryFrame: TListofStatisticCategoryFrame;

implementation

uses uFrmMain, uSystem, uExceptions, cxGridDBDataDefinitions, uGlobals,
  ufrmdataBAse, gnugettext, uExportsGrid;
{$R *.dfm}

const
  cNumeric = 0;
  cString = 1;

resourceString
  cCaptionAddCategory = 'Add category';
  cCaptionModifyCategory = 'Modify category';
  cCaptionAddValueCategory = 'Add value';
  cCaptionModifyValueCategory = 'Modify value';
  cCaptionAddStringValueCategory = 'Add string value';
  cCaptiomModifyStringValueCategory = 'Modify string value';

procedure Init;
begin

  with ListofStatisticCategoryFrame do
  begin
    cxPageControl_Category.ActivePage := cxTabSheet_category;

  end;
end;

// #############################################################################
// ###############  CATEGORY  ##################################################
// ##############################################################################
procedure TListofStatisticCategoryFrame.AlignTabSheet_Cat(enabled: Boolean);
begin
  cxTabSheet_ListCategories.enabled := enabled;
  cxTabSheet_category.enabled := not enabled;
end;

// #############################################################################

procedure TListofStatisticCategoryFrame.cxButton_AddNewCategoryClick
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if CheckFieldsCategory then
  begin

    xQuery := 'Insert into tbl_st_category(name,refresh,id_groups) values(''%s'',0,%s)';
    xQuery := Format(xQuery, [cxTextEdit_NewCategory.Text,
      cbGroupsUsers.EditValue]);
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(xQuery);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.btnAddSScategoryClick_Add()');
      end;
    end;
    PgQuery1.Refresh;
  end;
end;

// #############################################################################
procedure TListofStatisticCategoryFrame.AlignTabSheet_NewVal(enabled: Boolean);
begin
  { cxTabSheet_ValuesCategories.enabled := enabled;
    cxTabSheet_newValue.enabled := not enabled; }
end;

procedure TListofStatisticCategoryFrame.AlignTabSheet_Val(enabled: Boolean);
begin
  cxTabSheet_ListCategories.enabled := enabled;
  cxTabSheet_ValuesCategories.enabled := not enabled;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.SCategoryGridDBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  xId: string;
begin
  SelectedRow := -1;
  DC := Self.SCategoryGridDBTableView1.DataController;
  frmMain.GridDB := Self.SCategoryGridDBTableView1;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    try
      fid := StrToInt(VarToStr(SCategoryGridDBTableView1.ViewData.Rows
        [SelectedRow].Values[0]));
    except
      fid := ckeyNILL;
    end;
    cxTextEdit_NewCategory.Text :=
      VarToStr(SCategoryGridDBTableView1.ViewData.Rows[SelectedRow].Values[1]);

    xId := VarToStr(SCategoryGridDBTableView1.ViewData.Rows[SelectedRow]
      .Values[2]);

    if trim(xId) <> '' then
    begin
      cbGroupsUsers.EditValue := xId;
    end
    else
    begin
      cbGroupsUsers.EditValue := -1;
    end;

    xQuery := ' Select *, case   when type=0 then ''numeric'' when type=1 then ''result'' else ''string''  end  as Types '
      + ' from tbl_st_valuescategory  where idCategory=%s  order by id ';
    xQuery := Format(xQuery, [inttostr(fid)]);
    if PgQuery7.Active then
      PgQuery7.Close;

    PgQuery7.SQL.Clear;
    PgQuery7.SQL.Add(xQuery);
    PgQuery7.Open;
  end;
end;

procedure TListofStatisticCategoryFrame.cxButton_ModifyNewCategoryClick
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if fid <> ckeyNILL then
  begin
    xQuery := 'Update tbl_st_category set name=''%s'',id_Groups=%s  where id=%s ';

    xQuery := Format(xQuery, [cxTextEdit_NewCategory.Text,
      cbGroupsUsers.EditValue, inttostr(fid)]);
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(xQuery);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
      end;
    end;
    PgQuery1.Refresh;
  end;
end;

procedure TListofStatisticCategoryFrame.cxButton_ModifyNewValueClick
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if FidPosibleValues <> ckeyNILL then
  begin
    xQuery := 'Update tbl_st_valuescategory set name=''%s'',type=%s, description=''%s''  where id=%s ';
    xQuery := Format(xQuery, [cxTextEdit_Val_Name.Text,
      inttostr(cxRadioGroup_ValueType.ItemIndex), cxMemo_Description.Text,
      inttostr(FidPosibleValues)]);
    PgSQL6.SQL.Clear();
    PgSQL6.SQL.Add(xQuery);
    try
      PgSQL6.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
      end;
    end;
    PgQuery6.Refresh;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_DeleteNewcategoryClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  xId: Integer;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.SCategoryGridDBTableView1.DataController;
  frmMain.GridDB := Self.SCategoryGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    PgQuery1.Connection.StartTransaction;
    xId := StrToInt(VarToStr(SCategoryGridDBTableView1.ViewData.Rows
      [SelectedRow].Values[0]));
    xQuery := 'Delete from tbl_st_category where id=%s';
    xQuery := Format(xQuery, [inttostr(xId)]);
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(xQuery);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
        PgQuery1.Connection.Rollback;
      end;
    end;
    xQuery := ' Delete from tbl_st_valuescategory where idvaluescategory in ' +
      ' (select idValuescategory from tbl_st_valuescategory where idcategory=%s)';
    xQuery := Format(xQuery, [inttostr(xId)]);
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(xQuery);
    try
      PgSQL1.Execute();
    except

      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
        PgQuery1.Connection.Rollback;
      end;
    end;

    xQuery := ' Delete from tbl_st_valuescategory where idcategory =%s ';
    xQuery := Format(xQuery, [inttostr(xId)]);
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(xQuery);
    try
      PgSQL1.Execute();
    except

      on E: Exception do
      begin
        HandleException(E,
          'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
        PgQuery1.Connection.Rollback;
      end;
    end;

    PgQuery1.Connection.Commit;
    PgQuery1.Refresh;
  end
  else
  begin
    Information('Warning', 'Please select the category.');
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.btnAddSScategoryClick(Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if CheckFieldsCategory then
  begin
    if fid = ckeyNILL then
    begin

      xQuery := 'Insert into tbl_st_category(name,refresh) values(''%s'',%s)';

      xQuery := Format(xQuery, [cxTextEdit_name.Text, cxMaskEdit_Refresh.Text]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(xQuery);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.btnAddSScategoryClick_Add()');
        end;
      end;
    end
    else
    begin

      xQuery := 'Update tbl_st_category set name=''%s'',refresh=%s where id=%s ';
      xQuery := Format(xQuery, [cxTextEdit_name.Text, cxMaskEdit_Refresh.Text,
        inttostr(fid)]);
      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(xQuery);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TAddUserFrame.TListofStatisticCategoryFrame.btnAddSScategoryClick_Modify()');
        end;
      end;
    end;
    fid := ckeyNILL;
    frmMain.Refresh(frmMain.RefreshQuery);
    AlignTabSheet_Cat(true);
    cxPageControl_Category.ActivePage := cxTabSheet_ListCategories;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.btnCancelClick(Sender: TObject);
begin
  inherited;
  fid := ckeyNILL;
  AlignTabSheet_Cat(true);
  cxPageControl_Category.ActivePage := cxTabSheet_ListCategories;
end;

// #############################################################################

procedure TListofStatisticCategoryFrame.btnLeftCategoryClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;

begin
  inherited;
  SelectedRow := -1;
  DC := Self.SCategoryGridDBTableView1.DataController;
  frmMain.GridDB := Self.SCategoryGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    cxTextEdit_name.Text := VarToStr(SCategoryGridDBTableView1.ViewData.Rows
      [SelectedRow].Values[1]);
    cxMaskEdit_Refresh.Text :=
      VarToStr(SCategoryGridDBTableView1.ViewData.Rows[SelectedRow].Values[2]);

    try
      fid := StrToInt(VarToStr(SCategoryGridDBTableView1.ViewData.Rows
        [SelectedRow].Values[0]));
    except
      fid := ckeyNILL;
    end;
    AlignTabSheet_Cat(false);
    cxPageControl_Category.ActivePage := cxTabSheet_category;
    if ((cxTextEdit_name.CanFocus) and (cxTextEdit_name.Visible) and
      (cxTextEdit_name.enabled)) then
    begin
      cxTextEdit_name.SetFocus;
    end;
    btnAddSScategory.Caption := cCaptionModifyCategory;
  end
  else
  begin
    Information('Warning', 'Please select the category.');
  end;
end;

// ##############################################################################

function TListofStatisticCategoryFrame.CheckFieldsCategory: Boolean;
begin
  result := true;
  if trim(cxTextEdit_NewCategory.Text) = '' then
  begin
    Information('Warning', 'This field can not be blank!');
    result := false;
    if cxTextEdit_NewCategory.CanFocus then
      cxTextEdit_NewCategory.SetFocus;
  end;
end;
// ##############################################################################

procedure TListofStatisticCategoryFrame.SCategoryGridEnter(Sender: TObject);
begin
  inherited;
  Self.Refresh;
end;


// ##############################################################################
// ####################  VALUES  CATEGORY  ######################################
// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_AddNewValueClick
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if trim(cxTextEdit_Val_Name.Text) <> '' then
  begin

    xQuery := 'Insert into tbl_st_valuescategory(name,type,description,idcategory) values(''%s'',%s,''%s'',%s)';

    xQuery := Format(xQuery, [cxTextEdit_Val_Name.Text,
      inttostr(cxRadioGroup_ValueType.ItemIndex), cxMemo_Description.Text,
      inttostr(-ckeyNILL)]);

    PgSQL6.SQL.Clear();
    PgSQL6.SQL.Add(xQuery);
    try
      PgSQL6.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.btnAddSScategoryClick_Add()');
      end;
    end;
    PgQuery6.Refresh;
  end
  else
  begin
    Information('Warning', 'This field can not by blank!.');
    if ((cxTextEdit_Val_Name.enabled) and (cxTextEdit_Val_Name.Visible) and
      (cxTextEdit_Val_Name.CanFocus)) then
    begin
      cxTextEdit_Val_Name.SetFocus
    end;
  end;
end;

function TListofStatisticCategoryFrame.TypeCategoryToItemIndex
  (Atype: string): byte;
begin
  result := high(byte);
  if AnsiUpperCase(Atype) = 'NUMERIC' then
  begin
    result := 0;
  end
  else if AnsiUpperCase(Atype) = 'RESULT' then
  begin
    result := 1;
  end
  else if AnsiUpperCase(Atype) = 'STRING' then
  begin
    result := 2;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_AddValueClick(Sender: TObject);
begin
  inherited;
  { FidValues := ckeyNILL;
    frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
    frmMain.RefreshQuery := PgQuery2;
    AlignTabSheet_NewVal(false);
    cxPageControl_Category.ActivePage := cxTabSheet_newValue;
    btnAddSScategory.Caption := cCaptionAddValueCategory;
    cxTextEdit_Val_Name.Text := EmptyStr;
    cxRadioGroup_ValueType.ItemIndex := cNumeric;
    cxMemo_Description.Text := EmptyStr;
    if ((cxTextEdit_Val_Name.CanFocus) and (cxTextEdit_Val_Name.Visible) and
    (cxTextEdit_Val_Name.enabled)) then
    begin
    cxTextEdit_Val_Name.SetFocus;
    end; }
end;


// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_valuesCategoryClick
  (Sender: TObject);

var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.SCategoryGridDBTableView1.DataController;
  frmMain.GridDB := Self.SCategoryGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin
    Label_category.Caption := VarToStr(SCategoryGridDBTableView1.ViewData.Rows
      [SelectedRow].Values[1]);

    AlignTabSheet_Val(false);
    cxPageControl_Category.ActivePage := cxTabSheet_ValuesCategories;
    try
      fid := StrToInt(VarToStr(SCategoryGridDBTableView1.ViewData.Rows
        [SelectedRow].Values[0]));
      xQuery := ' Select *, case   when type=0 then ''numeric'' when type=1 then ''result'' else ''string''  end  as Types  '
        + ' from tbl_st_valuescategory  where type=1 and idCategory=%s ';

      xQuery := Format(xQuery, [inttostr(fid)]);

      PgQuery2.SQL.Clear;
      PgQuery2.SQL.Add(xQuery);
      PgQuery2.Open;

      xQuery := ' Select *  from tbl_st_valuescategory where idvaluesCategory in ( '
        + ' Select min(id) from tbl_st_valuescategory ) ' +
        ' and idCategory=-1000 ';

      if PgQuery5.Active then
        PgQuery5.Close;
      PgQuery5.SQL.Clear;
      PgQuery5.SQL.Add(xQuery);
      PgQuery5.Open;

    except
      fid := ckeyNILL;
    end;
    resultvaluesCellclick;
  end
  else
  begin
    Information('Warning', 'Please select the category.');

  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxCheckBoxSaveClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  i: Integer;
  xString: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableCategoryValuesView.DataController;
  frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
  frmMain.RefreshQuery := PgQuery2;

  for i := 0 to cxGridDBTableCategoryValuesView.ViewData.RowCount - 1 do
  begin
    xString := VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[i]
      .Values[4]);
    if xString = '1' then
    begin

    end;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.DeleteStringValues(AidMasterValue
  : Integer);
var
  xQuery: string;
begin
  if AidMasterValue <> ckeyNILL then
  begin
    xQuery := 'Delete from tbl_st_valuescategory where idValuesCategory=%s';
    xQuery := Format(xQuery, [inttostr(AidMasterValue)]);
    PgSQL4.SQL.Clear();
    PgSQL4.SQL.Add(xQuery);
    try
      PgSQL4.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
      end;
    end;
    PgQuery5.Refresh;
  end;
end;

destructor TListofStatisticCategoryFrame.Destroy;
begin

  inherited;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if SCategoryGridDBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(SCategoryGrid);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid_Values);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel3Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableViewPosibleValuescategory.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid_PosibleValuesCategry);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel4Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableViewStringValues.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid_StringValues);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel5Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableCategoryValuesView.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid_CategoryValues);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel6Click(Sender: TObject);
begin
  inherited;
  if cxGrid_PosibleValuesDBTableView_PosibleValues.ViewData.RecordCount>0 then  begin
   TExportsGrid.ExportsGridToExcel(cxGrid_PosibleValues);
  end;
end;

procedure TListofStatisticCategoryFrame.Exporttoexcel7Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView_StringValuesToValues.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid_StringValuesToValues);
  end;
end;

procedure TListofStatisticCategoryFrame.SaveStringValues(AidMasterValue
  : Integer);
var
  i: Integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  // xString:string;
  xQuery: string;
  xName: string;
begin
  SelectedRow := -1;
  try
    PgQuery4.Connection.StartTransaction;
    DeleteStringValues(AidMasterValue);

    DC := Self.cxGridDBTableViewStringValues.DataController;
    frmMain.GridDB := Self.cxGridDBTableViewStringValues;

    for i := 0 to cxGridDBTableViewStringValues.ViewData.RowCount - 1 do
    begin

      xName := VarToStr(cxGridDBTableViewStringValues.ViewData.Rows[i]
        .Values[1]);

      xQuery := 'Insert into tbl_st_valuescategory(Name,Active,idValuesCategory) values(''%s'',0, %s)';
      xQuery := Format(xQuery, [xName, inttostr(AidMasterValue)]);
      PgSQL4.SQL.Clear();
      PgSQL4.SQL.Add(xQuery);
      try
        PgSQL4.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
        end;
      end;

    end;
    PgQuery4.Connection.Commit;
    PgQuery4.Refresh;
    PgQuery5.Refresh;
  except
    PgQuery4.Connection.Rollback;
  end;

end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxGridDBTableCategoryValuesViewCellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);

begin
  inherited;

  resultvaluesCellclick;

end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.
  cxGridDBTableCategoryValuesViewColumn_CheckPropertiesChange(Sender: TObject);
var
  xId: Integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xValue: string;
begin
  inherited;
  SelectedRow := -1;
  xId := ckeyNILL;
  PgQuery2.Refresh;
  DC := Self.cxGridDBTableCategoryValuesView.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xId := StrToInt(VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows
      [SelectedRow].Values[0]));
  end;
  if xId <> ckeyNILL then
  begin
    xValue := VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows
      [SelectedRow].Values[3]);
    if xValue = '1' then
    begin
      SaveStringValues(xId);
    end
    else
    begin
      DeleteStringValues(xId);
    end;
  end;
end;


// ##############################################################################

procedure TListofStatisticCategoryFrame.
  cxGridDBTableCategoryValuesViewFocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  xId: Integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
begin
  inherited;
  SelectedRow := -1;
  if Assigned(AFocusedRecord) then
  begin
    if AFocusedRecord.GridView.IsControlFocused then
    begin
      DC := Self.cxGridDBTableCategoryValuesView.DataController;
      frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
      SelectedRow := DC.FocusedRowIndex;
      if (SelectedRow >= 0) then
      begin
        xId := StrToInt(VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows
          [SelectedRow].Values[0]));
        xQuery := 'Select * from tbl_st_valuescategory  where idvaluesCategory=%s';
        xQuery := Format(xQuery, [inttostr(xId)]);
        if PgQuery5.Active then
          PgQuery5.Close;
        PgQuery5.SQL.Clear();
        PgQuery5.SQL.Add(xQuery);
        PgQuery5.Open;
      end;
    end;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.
  cxGridDBTableViewPosibleValuescategoryCellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  xId: Integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
begin
  inherited;
  SelectedRow := -1;
  FidPosibleValues := ckeyNILL;
  DC := Self.cxGridDBTableViewPosibleValuescategory.DataController;
  frmMain.GridDB := Self.cxGridDBTableViewPosibleValuescategory;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    FidPosibleValues :=
      StrToInt(VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows
      [SelectedRow].Values[0]));

    cxTextEdit_Val_Name.Text :=
      VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows[SelectedRow]
      .Values[1]);

    cxRadioGroup_ValueType.ItemIndex := TypeCategoryToItemIndex
      (AnsiUpperCase(VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.
      Rows[SelectedRow].Values[2])));
    cxMemo_Description.Text :=
      VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows[SelectedRow]
      .Values[3]);

  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_ModifyStringValuesClick
  (Sender: TObject);
var
  xQuery: string;

begin
  inherited;
  if FidPosibleStringValues <> ckeyNILL then
  begin
    xQuery := ' Update tbl_st_valuescategory Set name=''%s'',Active=0 where id=%s ';

    xQuery := Format(xQuery, [cxTextEdit_AddNewStringValues.Text,
      inttostr(FidPosibleStringValues)]);

    PgSQL3.SQL.Clear();
    PgSQL3.SQL.Add(xQuery);
    try
      PgSQL3.Execute();

    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
      end;
    end;
    PgQuery3.Refresh;
  end;
end;

/// #############################################################################

procedure TListofStatisticCategoryFrame.
  cxGrid_PosibleValuesDBTableView_PosibleValuesFocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  // xId:integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin
  inherited;
  SelectedRow := -1;
  if Assigned(AFocusedRecord) then
  begin
    if AFocusedRecord.GridView.IsControlFocused then
    begin

      FidPosibleStringValues := ckeyNILL;
      DC := Self.cxGrid_PosibleValuesDBTableView_PosibleValues.DataController;
      frmMain.GridDB := Self.cxGrid_PosibleValuesDBTableView_PosibleValues;
      frmMain.RefreshQuery := PgQuery2;
      SelectedRow := DC.FocusedRowIndex;

      if (SelectedRow >= 0) then
      begin
        FidPosibleStringValues :=
          StrToInt(VarToStr(cxGrid_PosibleValuesDBTableView_PosibleValues.
          ViewData.Rows[SelectedRow].Values[0]));

        cxTextEdit_AddNewStringValues.Text :=
          trim(VarToStr(cxGrid_PosibleValuesDBTableView_PosibleValues.ViewData.
          Rows[SelectedRow].Values[1]));

      end
      else
      begin
        Information('Warning', 'Please select the row.');

      end;

    end;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxGrid_PosibleValuesEnter
  (Sender: TObject);
begin
  inherited;
  PgQuery3.Refresh;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_LeftClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  i: Integer;
  xString: string;

begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGrid_PosibleValuesDBTableView_PosibleValues.DataController;
  frmMain.GridDB := Self.cxGrid_PosibleValuesDBTableView_PosibleValues;
  frmMain.RefreshQuery := PgQuery3;
  frmMain.Table := PgTable3;
  for i := 0 to cxGrid_PosibleValuesDBTableView_PosibleValues.ViewData.
    RowCount - 1 do
  begin
    xString := VarToStr(cxGrid_PosibleValuesDBTableView_PosibleValues.ViewData.
      Rows[i].Values[2]);
    if xString = '1' then
    begin

      xString := VarToStr(cxGrid_PosibleValuesDBTableView_PosibleValues.
        ViewData.Rows[i].Values[0]);
      xQuery := ' Update tbl_st_valuescategory Set idValuesCategory=%s,Active=0 where id=%s ';

      xQuery := Format(xQuery, [inttostr(-ckeyNILL), xString]);

      PgSQL3.SQL.Clear();
      PgSQL3.SQL.Add(xQuery);
      try
        PgSQL3.Execute();
        frmMain.Table.Active := false;
        frmMain.Table.Active := true;

      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
        end;
      end;

    end;
  end;
  PgQuery3.Refresh;
  PgQuery4.Refresh;

  xQuery := ' Update tbl_st_valuescategory Set Active=0 where idValuesCategory=%s ';

  xQuery := Format(xQuery, [inttostr(-ckeyNILL)]);

  PgSQL3.SQL.Clear();
  PgSQL3.SQL.Add(xQuery);
  try
    PgSQL3.Execute();
  except
    on E: Exception do
    begin
      HandleException(E,
        'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
    end;
  end;
  frmMain.Table.Active := false;
  frmMain.Table.Active := true;
  PgQuery4.Refresh;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_AddNewStringValuesClick
  (Sender: TObject);
var
  xQuery: string;

begin
  inherited;
  xQuery := 'INSERT INTO tbl_st_valuescategory(name, active) VALUES (''%s'',0)';
  xQuery := Format(xQuery, [cxTextEdit_AddNewStringValues.Text]);

  PgSQL3.SQL.Clear();
  PgSQL3.SQL.Add(xQuery);
  try
    PgSQL3.Execute();
  except
    on E: Exception do
    begin
      HandleException(E,
        'TListofStatisticCategoryFrame.btnAddSScategoryClick_Add()');
    end;
  end;
  PgQuery3.Refresh;
  cxTextEdit_AddNewStringValues.Text := EmptyStr;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton2Click(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  i: Integer;
  xString: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableViewStringValues.DataController;
  frmMain.GridDB := Self.cxGridDBTableViewStringValues;

  for i := 0 to cxGridDBTableViewStringValues.ViewData.RowCount - 1 do
  begin
    xString := VarToStr(cxGridDBTableViewStringValues.ViewData.Rows[i]
      .Values[2]);
    if xString = '1' then
    begin

      xString := VarToStr(cxGridDBTableViewStringValues.ViewData.Rows[i]
        .Values[0]);
      xQuery := ' Update tbl_st_valuescategory Set idValuesCategory=%s,Active=0 where id=%s ';

      xQuery := Format(xQuery, ['NULL', xString]);
      PgSQL4.SQL.Clear();
      PgSQL4.SQL.Add(xQuery);
      try
        PgSQL4.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
        end;
      end;

    end;
  end;
  PgQuery3.Refresh;
  PgQuery4.Refresh;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.btn_val_CancelClick(Sender: TObject);
begin
  inherited;
  FidValues := ckeyNILL;
  AlignTabSheet_NewVal(true);
  cxPageControl_Category.ActivePage := cxTabSheet_ValuesCategories;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.Button_leftValuesCategoryClick
  (Sender: TObject);
var

  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
  i: Integer;
  xDC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xSelectedRow: Integer;
  xId: Integer;
begin
  inherited;
  SelectedRow := -1;
  fid := ckeyNILL;
  DC := Self.SCategoryGridDBTableView1.DataController;
  frmMain.GridDB := Self.SCategoryGridDBTableView1;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    fid := StrToInt(VarToStr(SCategoryGridDBTableView1.ViewData.Rows
      [SelectedRow].Values[0]));

    xDC := Self.cxGridDBTableViewPosibleValuescategory.DataController;
    xSelectedRow := xDC.FocusedRowIndex;
    if (xSelectedRow >= 0) then
    begin

      xId := StrToInt
        (VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows
        [xSelectedRow].Values[0]));

      xQuery := 'insert into  tbl_st_valuescategory(Name,type,Description,idCategory) values(''%s'',%s,''%s'',%s) ';
      xQuery := Format(xQuery,
        [VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows
        [xSelectedRow].Values[1]),
        inttostr(TypeCategoryToItemIndex(AnsiUpperCase
        (VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows
        [xSelectedRow].Values[2])))),
        VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.Rows
        [xSelectedRow].Values[3]), inttostr(fid)]);

      PgSQL7.SQL.Clear();
      PgSQL7.SQL.Add(xQuery);
      try
        PgSQL7.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
        end;
      end;

      xQuery := ' Select *, case   when type=0 then ''numeric'' else ''string''  end  as Types '
        + ' from tbl_st_valuescategory  where idCategory=%s  order by id ';
      xQuery := Format(xQuery, [inttostr(fid)]);
      if PgQuery7.Active then
        PgQuery7.Close;

      PgQuery7.SQL.Clear;
      PgQuery7.SQL.Add(xQuery);
      PgQuery7.Open;

    end;
  end
  else
  begin
    Information('Warning', 'Please select the row.');
  end;
end;


// ##############################################################################

procedure TListofStatisticCategoryFrame.Button_RightValuesCategoryClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xId: Integer;
  xQuery: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xId := StrToInt(VarToStr(cxGridDBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]));
    PgQuery7.Connection.StartTransaction;

    xQuery := 'Delete from tbl_st_valuescategory where id=%s';
    xQuery := Format(xQuery, [inttostr(xId)]);
    PgSQL7.SQL.Clear();
    PgSQL7.SQL.Add(xQuery);
    try
      PgSQL7.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
      end;
    end;
    xQuery := 'Delete from tbl_st_valuescategory where idvaluesCategory=%s';

    xQuery := Format(xQuery, [inttostr(xId)]);
    PgSQL7.SQL.Clear();
    PgSQL7.SQL.Add(xQuery);
    try
      PgSQL7.Execute();
    except
      on E: Exception do
      begin
        HandleException(E,
          'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
      end;
    end;

    PgQuery7.Connection.Commit;
    PgQuery7.Refresh;
    PgQuery6.Refresh;
  end;
end;



// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_BackListCategoryClick
  (Sender: TObject);
begin
  inherited;
  fid := ckeyNILL;
  FidValues := ckeyNILL;
  AlignTabSheet_Val(true);
  cxPageControl_Category.ActivePage := cxTabSheet_ListCategories;
end;


// ##############################################################################

function TListofStatisticCategoryFrame.CheckFieldsValueCategory: Boolean;
begin
  result := true;
  if trim(cxTextEdit_Val_Name.Text) = '' then
  begin
    Information('Warning', 'This field can not be blank!');
    result := false;
    if cxTextEdit_Val_Name.CanFocus then
      cxTextEdit_Val_Name.SetFocus();

  end;
end;

constructor TListofStatisticCategoryFrame.Create(AOwner: TComponent);
begin
  inherited;
  TranslateComponent(Self);
  Exporttoexcel7.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel6.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel5.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel4.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel3.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel2.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
  cxPageControl_Category.ActivePage:= cxTabSheet_ListCategories;
end;

// ##############################################################################
{ id serial NOT NULL,
  idcategory integer,
  idvaluescategory integer,
  name character varying,
  description character varying,
  type smallint, }
procedure TListofStatisticCategoryFrame.btnButton_AddNewValueClick
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  if CheckFieldsValueCategory then
  begin
    if FidValues = ckeyNILL then
    begin

      xQuery := 'Insert into tbl_st_valuescategory(name,description,  idcategory, type) values(''%s'',''%s'',%s,%s)';

      xQuery := Format(xQuery, [cxTextEdit_Val_Name.Text,
        cxMemo_Description.Text, inttostr(fid),
        inttostr(cxRadioGroup_ValueType.ItemIndex)]);

      PgSQL2.SQL.Clear();
      PgSQL2.SQL.Add(xQuery);
      try
        PgSQL2.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_ADD()');
        end;
      end;
    end
    else
    begin

      xQuery := ' Update tbl_st_valuescategory set name=''%s''' + ',' +
        ' description=''%s''' + ',' + ' type=%s ' + '  where id=%s ';

      xQuery := Format(xQuery, [cxTextEdit_Val_Name.Text,
        cxMemo_Description.Text, inttostr(cxRadioGroup_ValueType.ItemIndex),
        inttostr(FidValues)]);
      PgSQL2.SQL.Clear();
      PgSQL2.SQL.Add(xQuery);
      try
        PgSQL2.Execute();
      except
        on E: Exception do
        begin
          HandleException(E,
            'TListofStatisticCategoryFrame.cxButton_AddNewValueClick_Modify');
        end;
      end;
    end;
    frmMain.Refresh(frmMain.RefreshQuery);
    PgQuery2.Refresh;
    FidValues := ckeyNILL;
    AlignTabSheet_NewVal(true);
    cxPageControl_Category.ActivePage := cxTabSheet_ValuesCategories;
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_ModifyValueClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin
  inherited;
  {
    DC := Self.cxGridDBTableCategoryValuesView.DataController;
    frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
    frmMain.RefreshQuery := PgQuery2;
    SelectedRow := DC.FocusedRowIndex;

    if (SelectedRow >= 0) then
    begin
    try
    FidValues :=
    StrToInt(VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows
    [SelectedRow].Values[0]));
    except
    FidValues := ckeyNILL;
    end;

    cxTextEdit_Val_Name.Text :=
    VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[SelectedRow]
    .Values[1]);

    try
    cxRadioGroup_ValueType.ItemIndex :=
    TypeCategoryToItemIndex
    (VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[SelectedRow]
    .Values[2]));

    except
    cxRadioGroup_ValueType.ItemIndex := 0;
    end;

    cxMemo_Description.Text :=
    VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[SelectedRow]
    .Values[3]);

    AlignTabSheet_NewVal(false);
    cxPageControl_Category.ActivePage := cxTabSheet_newValue;
    if ((cxTextEdit_Val_Name.CanFocus) and (cxTextEdit_Val_Name.Visible) and
    (cxTextEdit_Val_Name.enabled)) then
    begin
    cxTextEdit_Val_Name.SetFocus;
    end;
    btnButton_AddNewValue.Caption := cCaptionModifyValueCategory;
    end
    else
    begin
    Information('Warning', 'Please select the value category!');
    end;
  }
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_DeleteNewStringValuesClick
  (Sender: TObject);

var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xId: Integer;
  QueryStr: string;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGrid_PosibleValuesDBTableView_PosibleValues.DataController;
  frmMain.GridDB := Self.cxGrid_PosibleValuesDBTableView_PosibleValues;

  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin
    if Question('You are about to delete  string value  - are you sure ?') then
    begin
      try
        xId := StrToInt
          (VarToStr(cxGrid_PosibleValuesDBTableView_PosibleValues.ViewData.Rows
          [SelectedRow].Values[0]));
      except
        xId := ckeyNILL;
      end;

      QueryStr := 'DELETE FROM tbl_st_valuescategory WHERE id = %s';
      QueryStr := Format(QueryStr, [inttostr(xId)]);

      PgSQL3.SQL.Clear();
      PgSQL3.SQL.Add(QueryStr);

      try
        PgSQL3.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
        end;
      end;
      PgQuery3.Refresh;
    end;
  end
  else
  begin
    Information('Warning', 'Please select the vales to delete.');
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_DeleteNewValueClick
  (Sender: TObject);
var
  QueryStr: string;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xId: Integer;
begin
  inherited;
  SelectedRow := -1;
  DC := Self.cxGridDBTableViewPosibleValuescategory.DataController;
  frmMain.GridDB := Self.cxGridDBTableViewPosibleValuescategory;

  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin
    xId := StrToInt(VarToStr(cxGridDBTableViewPosibleValuescategory.ViewData.
      Rows[SelectedRow].Values[0]));

    QueryStr := 'DELETE FROM tbl_st_valuescategory WHERE id = %s';
    QueryStr := Format(QueryStr, [inttostr(xId)]);

    PgSQL6.SQL.Clear();
    PgSQL6.SQL.Add(QueryStr);

    try
      PgSQL6.Execute();
    except
      on E: Exception do
      begin
        HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
      end;
    end;
    PgQuery6.Refresh;
  end
  else
  begin
    Information('Warning', 'Please select the vales to delete.');
  end;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_deleteValuesClick
  (Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr: WideString;
  xTrans: TDATransactions;
begin
  SelectedRow := -1;
  DC := Self.cxGridDBTableCategoryValuesView.DataController;
  frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
  frmMain.RefreshQuery := PgQuery2;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete value category - are you sure ?') then
    begin

      frmDatabase.KivosConnection.StartTransaction;
      QueryStr := 'DELETE FROM tbl_st_valuescategory WHERE id = %s';
      QueryStr := Format(QueryStr,
        [VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[SelectedRow]
        .Values[0])]);

      PgSQL2.SQL.Clear();
      PgSQL2.SQL.Add(QueryStr);

      try
        PgSQL2.Execute();
      except
        on E: Exception do
        begin
          frmDatabase.KivosConnection.Rollback;
          HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
        end;
      end;

      QueryStr := 'DELETE FROM tbl_st_valuescategory WHERE idvaluescategory=%s';
      QueryStr := Format(QueryStr,
        [VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows[SelectedRow]
        .Values[0])]);
      PgSQL2.SQL.Clear();
      PgSQL2.SQL.Add(QueryStr);

      try
        PgSQL2.Execute();
      except
        on E: Exception do
        begin
          frmDatabase.KivosConnection.Rollback;
          HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
        end;
      end;
      frmDatabase.KivosConnection.Commit;
      cxGridDBTableCategoryValuesView.DataController.DataSet.Refresh();
    end;
  end
  else
  begin
    Information('Warning', 'Please select the vales to delete.');
  end;
  frmMain.Refresh(frmMain.RefreshQuery);
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.cxButton_BackListValuesCategoryClick
  (Sender: TObject);
begin
  inherited;
  FidValues := ckeyNILL;
  FidStringValues := ckeyNILL;
  cxPageControl_Category.ActivePage := cxTabSheet_ValuesCategories;
end;

// ##############################################################################

procedure TListofStatisticCategoryFrame.resultvaluesCellclick;
var
  xId: Integer;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  xQuery: string;
begin
  SelectedRow := -1;
  DC := Self.cxGridDBTableCategoryValuesView.DataController;
  frmMain.GridDB := Self.cxGridDBTableCategoryValuesView;
  SelectedRow := DC.FocusedRowIndex;
  if (SelectedRow >= 0) then
  begin
    xId := StrToInt(VarToStr(cxGridDBTableCategoryValuesView.ViewData.Rows
      [SelectedRow].Values[0]));

    xQuery := 'Select *  from tbl_st_valuescategory where idvaluesCategory=%s';
    xQuery := Format(xQuery, [inttostr(xId)]);

    if PgQuery5.Active then
      PgQuery5.Close;
    PgQuery5.SQL.Clear;
    PgQuery5.SQL.Add(xQuery);
    PgQuery5.Open;
  end;
end;

end.
