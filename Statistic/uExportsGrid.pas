unit uExportsGrid;

interface
uses cxGrid,cxGridTableView,cxDBTL, cxTLExportLink,classes, sysutils, controls,
Dialogs, forms, cxgridExportlink;
type

  TExportsGrid=class(Tobject)
  private

  public

  Class function ExportsGridToExcel(Agdrid: tcxGrid):boolean;
  class function ExportsTreeGridToExcel(Atreegrid:TcxDBTreeList):boolean;

  end;

implementation

{ TExportsGrid }
//##############################################################################

class function TExportsGrid.ExportsGridToExcel(Agdrid: tcxGrid): boolean;
var
  sd: TSaveDialog;
  f: string;
begin
  sd := TSaveDialog.Create(nil);
  sd.InitialDir := ExtractFilePath(Application.ExeName);
  try
    sd.Filter := 'Excel files (*.xls)|*.xls|All Files|*.*';
    if sd.Execute then
    begin
      screen.Cursor := crHourGlass;
      f := sd.FileName;
      ExportGridToEXCEL(f, Agdrid, true, true);
    end;
  finally
    screen.Cursor := crDefault;
    sd.Free;
  end;

end;

//##############################################################################


class function TExportsGrid.ExportsTreeGridToExcel(
  Atreegrid: TcxDBTreeList): boolean;
var
  sd: TSaveDialog;
  f: string;
begin
  sd := TSaveDialog.Create(nil);
  sd.InitialDir := ExtractFilePath(Application.ExeName);
  try
    sd.Filter := 'Excel files (*.xls)|*.xls|All Files|*.*';
    if sd.Execute then
    begin
      screen.Cursor := crHourGlass;
      f := sd.FileName;
      cxExportTLToExcel(f, Atreegrid, true, true);
    end;
  finally
    screen.Cursor := crDefault;
    sd.Free;
  end;

end;

//##############################################################################


end.
