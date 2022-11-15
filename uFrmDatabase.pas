unit uFrmDatabase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Datasnap.DBClient,
  Datasnap.Provider, Vcl.StdCtrls,
  DBAccess, PgAccess, MemDS, Data.DB;

type
  TfrmDatabase = class(TForm)
    KivosConnection: TPgConnection;
    KivosSQL: TPgSQL;
    KivosQuery: TPgQuery;
    KivosQuery2: TPgQuery;
    ImportCoonnection: TPgConnection;
    procedure KivosConnectionError(Sender: TObject; E: EDAError;
      var Fail: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatabase: TfrmDatabase;

implementation

uses
  uSystem;

{$R *.dfm}

procedure TfrmDatabase.KivosConnectionError(Sender: TObject; E: EDAError;
  var Fail: Boolean);
begin

  //Information('Warning', 'Database connection error: ' + E.Message);

end;

end.
