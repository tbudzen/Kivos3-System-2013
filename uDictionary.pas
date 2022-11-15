unit uDictionary;

interface

  //
  //  Hashed dictionary class of (WideString, WideString) pairs
  //  for locales, frames and other uses
  //

  const
    HASHED_ARRAY_SIZE = $0000FFFF;
    HASHED_ARRAY_SIZE_SUB_MULTIPLIER = $000000FF;

  //
  //  TLinkedListStringEntry record
  //

  type
    TLinkedListStringEntry = ^LinkedListStringEntry;
    LinkedListStringEntry = record
      Key   : WideString;
      Value : WideString;
      Next  : TLinkedListStringEntry;
    end;

  //
  //  TLinkedList class
  //

  type TLinkedList = class(TObject)
    private
      Root : TLinkedListStringEntry;
    public
      constructor Create();
      destructor Free();

      function Exists(Key : WideString) : Boolean;
      function Add(Key : WideString; Value : WideString) : Boolean;
      function Remove(Key : WideString) : Boolean;
      function Find(Key : WideString) : WideString;
  end;

  //
  //  THashedDictionary class
  //

  type THashedDictionary = class(TObject)
    private
      EntriesArray : array [0 .. HASHED_ARRAY_SIZE] of TLinkedList;
      function HashString(S : WideString) : Integer;
    public
      constructor Create();
      destructor Free();

      function Add(Key : WideString; Value : WideString) : Boolean;
      function Remove(Key : WideString) : Boolean;
      function Find(Key : WideString) : WideString;
  end;

implementation

  //
  //  TLinkedList class
  //

  constructor TLinkedList.Create();
  begin
    Root := nil;
  end;

  destructor TLinkedList.Free();
  var
    Ptr, NextPtr : TLinkedListStringEntry;
  begin
    Ptr := Root;
    while Ptr <> nil do
    begin
      NextPtr := Ptr.Next;
      Dispose(Ptr);
      Ptr := NextPtr;
    end;
  end;

  function TLinkedList.Exists(Key : WideString) : Boolean;
  var
    Ptr : TLinkedListStringEntry;
  begin
    Result := False;
    if Root = nil then
    begin
      Exit;
    end
    else
    begin
      Ptr := Root;
      while Ptr <> nil do
      begin
        if Ptr.Key = Key then
        begin
          Result := True;
          Exit;
        end;
        Ptr := Ptr.Next;
      end;
    end;
  end;

  function TLinkedList.Add(Key : WideString; Value : WideString) : Boolean;
  var
    Ptr : TLinkedListStringEntry;
    Entry : TLinkedListStringEntry;
  begin
    if Root = nil then
    begin
      New(Entry);
      Entry.Key := Key;
      Entry.Value := Value;
      Entry.Next := nil;
      Root := Entry;
      Result := True;
    end
    else
    begin
      Ptr := Root;
      while Ptr.Key <> Key do
      begin
        if Ptr.Key = Key then
        begin
          Result := False;
          Exit;
        end
        else if Ptr.Next = nil then
        begin
          New(Entry);
          Entry.Key := Key;
          Entry.Value := Value;
          Entry.Next := nil;
          Ptr.Next := Entry;
          Result := True;
          Exit;
        end;
        Ptr := Ptr.Next;
      end;
    end;
    Result := False;
  end;

  function TLinkedList.Remove(Key : WideString) : Boolean;
  var
    PrevPtr, Ptr : TLinkedListStringEntry;
  begin
    if Root = nil then
    begin
      Result := False;
      Exit;
    end
    else
    begin
      PrevPtr := nil;
      Ptr := Root;
      while Ptr <> nil do
      begin
        if Ptr.Key = Key then
        begin
          if PrevPtr <> nil then
          begin
            PrevPtr.Next := Ptr.Next; // May be nil
          end;
          Dispose(Ptr);
          Result := True;
          Exit;
        end;
        PrevPtr := Ptr;
        Ptr := Ptr.Next;
      end;
    end;
    Result := False;
  end;

  function TLinkedList.Find(Key : WideString) : WideString;
  var
    Ptr : TLinkedListStringEntry;
  begin
    Result := '';
    if Root = nil then
    begin
      Exit;
    end
    else
    begin
      Ptr := Root;
      while Ptr <> nil do
      begin
        if Ptr.Key = Key then
        begin
          Result := Ptr.Value;
          Exit;
        end;
        Ptr := Ptr.Next;
      end;
    end;
  end;


  //
  //  THashedDictionary class
  //

  constructor THashedDictionary.Create();
  var
    i : Integer;
  begin
    for i := 0 to HASHED_ARRAY_SIZE do
    begin
      EntriesArray[i] := TLinkedList.Create();
    end;
  end;

  destructor THashedDictionary.Free();
  var
    i : Integer;
  begin
    for i := 0 to HASHED_ARRAY_SIZE do
    begin
      EntriesArray[i].Free();
    end;
  end;

  function THashedDictionary.Add(Key : WideString; Value : WideString) : Boolean;
  begin
    Result := EntriesArray[HashString(Key)].Add(Key, Value);
  end;

  function THashedDictionary.Remove(Key : WideString) : Boolean;
  begin
    Result := EntriesArray[HashString(Key)].Remove(Key);
  end;

  function THashedDictionary.Find(Key : WideString) : WideString;
  begin
    Result := EntriesArray[HashString(Key)].Find(Key);
  end;

  // TODO
  function THashedDictionary.HashString(S : WideString) : Integer;
  var
    i, N : Integer;
  begin
    N := 0;
    for i := 1 to Length(S) do
    begin
      if ((i mod 2) = 0) then
        N := (N div 2) + (Ord(Char(S[i])) shl 4) * HASHED_ARRAY_SIZE_SUB_MULTIPLIER
      else
        N := (N div 2) + (Ord(Char(S[i])) shl 4);
    end;
    Result := (N mod HASHED_ARRAY_SIZE);
  end;

end.
