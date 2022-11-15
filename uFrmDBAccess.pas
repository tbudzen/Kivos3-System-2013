unit uFrmDBAccess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.Win.ADODB, Vcl.StdCtrls, frxClass, Data.DBXOdbc,
  Data.SqlExpr, Bde.DBTables;

type
  TfrmDBAccess = class(TForm)
    KivosDatabase: TDatabase;
    KivosConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBAccess: TfrmDBAccess;

implementation

{$R *.dfm}

end.
