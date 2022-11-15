unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmUserLogin = class(TForm)
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserLogin: TfrmUserLogin;
  LoginArea : WideString;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  Label1.Caption := 'Login to: ' + LoginArea;
end;

end.
