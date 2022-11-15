unit uFrameHelper;

interface

uses sysUtils, classes, uFrmMain, uDataBase, strUtils;

type

  frameHelper = class
  private

  public
    class function MaxCT_number(): integer;
    class function GenerateCT_number(AidCashDesk: integer; Number: integer;
      Aid_type: integer): string;
  end;

implementation

{ frameHelper }
// ##############################################################################

class function frameHelper.MaxCT_number: integer;
var
  TempNo: string;
  i, j: integer;
begin
  TempNo := frmMain.GetFieldAsString(' select ct_number  ' +
    '  from tbl_cd_cash_transactions  ' +
    '  where id in ( select id  from tbl_cd_cash_transactions   ' +
    '        where dateTime in (select max(dateTime) from tbl_cd_cash_transactions)   '
    + '        order by id desc limit 1) ', 'ct_number');
  if TempNo = '' then
  begin
    result := 1;
  end
  else
  begin
    i := Pos('/', TempNo);
    j := PosEx('/', TempNo, i + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;
end;

// ##############################################################################

class function frameHelper.GenerateCT_number(AidCashDesk, Number,
  Aid_type: integer): string;
var
  CurrentCashDesk: string;
  Mnemonic: string;
  dYear, dMonth, dDay: word;
begin
  DecodeDate(Now(), dYear, dMonth, dDay);

  CurrentCashDesk := frmMain.GetFieldAsString
    ('select cd_name from tbl_cd where id=' + IntToStr(AidCashDesk), 'cd_name');

  Mnemonic := frmMain.GetFieldAsString
    ('Select mnemonic from tbl_cd_cash_transactions_types where type=' +
    IntToStr(Aid_type), 'mnemonic');

  result := Mnemonic + '/' + CurrentCashDesk + '/' + IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' + IntToStr(Number);

end;
// ##############################################################################

end.
