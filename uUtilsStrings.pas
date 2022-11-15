unit uUtilsStrings;

//
//  String utils (Unicode)
//
//
//

interface

uses
  SysUtils, uExceptions;

  const
    LineBreak = #00#13#00#10; // Wide CR-LF

  type TStringBuilder = class(TObject)
    private
      V : WideString;
    public
      constructor Create();
      destructor Free();

      function Value() : WideString;
      function Clear() : TStringBuilder;
      function Add(S : WideString) : TStringBuilder;
      function Append(T : TStringBuilder) : TStringBuilder;
      function Space(S : WideString) : TStringBuilder;
      function NewLine(S : WideString) : TStringBuilder;
      function AddFormatted(S : WideString; Args : array of TVarRec) : TStringBuilder;
  end;

  type TQueryStringBuilder = class(TStringbuilder)
    private
      B : TStringBuilder;
    public
      constructor Create();
      destructor Free();

      procedure Select(Fields : array of WideString);
      procedure From(Table : WideString);
      procedure InsertValues(Table : WideString; FieldNames : array of WideString; Values : array of WideString);
      procedure Delete(Table : WideString; Where : WideString);
  end;

  function GetElem(Nr : Integer; S : WideString; Separator : WideChar) : WideString;

  function MyStrToBool(S : WideString) : Boolean;
  function MyBoolToStr(B : Boolean) : WideString;

implementation

  //
  //  Class TStringBuilder
  //

  constructor TStringBuilder.Create;
  begin
    V := '';
  end;

  destructor TStringBuilder.Free;
  begin
  end;

  function TStringBuilder.Clear : TStringBuilder;
  begin
    V := '';
    Result := Self;
  end;

  function TStringBuilder.Value : WideString;
  begin
    Result := V;
  end;

  function TStringBuilder.Add(S : WideString) : TStringBuilder;
  begin
    V := V + S;
    Result := Self;
  end;

  function TStringBuilder.Append(T : TStringBuilder) : TStringBuilder;
  begin
    V := V + T.Value();
    Result := Self;
  end;

  function TStringBuilder.Space(S : WideString) : TStringBuilder;
  begin
    V := V + ' ';
    Result := Self;
  end;

  function TStringBuilder.NewLine(S : WideString) : TStringBuilder;
  begin
    V := V + LineBreak;
    Result := Self;
  end;

  function TStringBuilder.AddFormatted(S : WideString; Args : array of TVarRec) : TStringBuilder;
  begin
    V := V + WideFormat(S, Args);
    Result := Self;
  end;

  //
  //  End of class TStringBuilder
  //

  //
  //  Class TQueryStringBuilder
  //

  constructor TQueryStringBuilder.Create;
  begin
    B := TStringBuilder.Create();
  end;

  destructor TQueryStringBuilder.Free;
  begin
    B.Free();
  end;

  procedure TQueryStringBuilder.Select(Fields : array of WideString);
  var
    i : Integer;
  begin
    B.Add('SELECT ');
    if (High(Fields) - Low(Fields) = 0) then
    begin
      raise TStringException.Create('Empty columns array in SELECT');
    end;
    for i := Low(Fields) to High(Fields) do
    begin
      if Fields[i] = '' then
      begin
        raise TStringException.Create('Empty column in SELECT');
      end;
    end;
    for i := Low(Fields) to High(Fields) do
    begin
      B.Add('''' + Fields[i] + '''');
      if i < High(Fields) then
      begin
        B.Add(', ');
      end;
    end;
    B.Add(' ');
  end;

  procedure TQueryStringBuilder.From(Table : WideString);
  begin
    B.Add('FROM ');
  end;

  procedure TQueryStringBuilder.InsertValues(Table : WideString; FieldNames : array of WideString; Values : array of WideString);
  var
    i : Integer;
  begin
    if Table = '' then
    begin
      raise TStringException.Create('Empty table name in INSERT');
    end;
    if (High(FieldNames) - Low(FieldNames)) <> (High(Values) - Low(Values)) then
    begin
      raise TStringException.Create('Different sizes of columns and values arrays');
    end;
    for i := Low(FieldNames) to High(FieldNames) do
    begin
      if FieldNames[i] = '' then
      begin
        raise TStringException.Create('Empty column in INSERT');
      end;
    end;
    B.Add('INSERT INTO ' + Table + ' (');
    for i := Low(FieldNames) to High(FieldNames) do
    begin
      B.Add('''');
      B.Add(FieldNames[i]);
      B.Add('''');
      if i < High(FieldNames) then
      begin
        B.Add(', ');
      end;
    end;
    B.Add(') VALUES (');
    for i := Low(Values) to High(Values) do
    begin
      B.Add('''');
      B.Add(Values[i]);
      B.Add('''');
      if i < High(Values) then
      begin
        B.Add(', ');
      end;
    end;
    B.Add(')');
  end;

  procedure TQueryStringBuilder.Delete(Table : WideString; Where : WideString);
  begin
    if Table = '' then
    begin
      raise TStringException.Create('Empty table name in DELETE');
    end;
    if Where = '' then
    begin
      raise TStringException.Create('Empty WHERE clause');
    end;
    B.Clear;
    B.Add('DELETE FROM ');
    B.Add(Table);
    B.Add('WHERE ');
    B.Add(Where);
  end;

  //
  //  End of class TQueryStringBuilder
  //

  function GetElem(Nr : Integer; S : WideString; Separator : WideChar) : WideString;
  var
    I, J : Integer;
  begin
    Result := '';
    if (Nr > 0) then
    begin
      I := Pos(Separator, S);
      if (Nr = 1) then
      begin
        Result := Copy(S, 1, I - 1);
      end;
    end;
  end;

  function MyStrToBool(S : WideString) : Boolean;
  begin
    Result := False;
    if (S = 'True') or (S = 'true') or (S = '1') then Result := True;
  end;

  function MyBoolToStr(B : Boolean) : WideString;
  begin
    if B then Result := 'True' else Result := 'False';
  end;

end.
