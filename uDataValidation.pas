unit uDataValidation;

//
//  Data validation
//
//
//

//
//  Levels of data validation:
//
//  1) File level
//  2) Data entity level
//  3) Data constraint level
//

interface

  //
  //  TDataValidator base class
  //

  type TDataValidator = class(TObject)
    private
    public
  end;

  //
  //  TStringValidator class
  //

  type TStringValidator = class(TDataValidator)
    private
    public
      function IsValidWithoutSQL(S : WideString) : Boolean; // SQL-injection prevention
      function IsValidCurrency(S : WideString) : Boolean;
      function IsValidDateTime(S : WideString) : Boolean;
      function IsValidByRegExp(S : WideString; RegExp : WideString) : Boolean;
  end;

  //
  //  TDateTimeValidator class
  //

  type TDateTimeValidator = class(TDataValidator)
    private
    public
      function IsValidInRange(D : TDateTime; DTStart, DTEnd : TDateTime) : Boolean;
  end;

  //
  //  TCurrencyValidator class
  //

  type TCurrencyValidator = class(TDataValidator)
    private
    public
      function IsValidAbove(C : Currency; CMin : Currency) : Boolean;
      function IsValidBelow(C : Currency; CMax : Currency) : Boolean;
      function IsValidMinMaxValue(C : Currency; CMin, CMax : Currency) : Boolean;
  end;

  //
  //  TValidatorFactory class
  //

  type TValidatorFactory = class(TObject)
    private
    public
      function StringValidator() : TStringValidator;
      function DateTimeValidator() : TDateTimeValidator;
      function CurrencyValidator() : TCurrencyValidator;
  end;

implementation

      function TStringValidator.IsValidWithoutSQL(S : WideString) : Boolean;
      begin

      end;

      function TStringValidator.IsValidCurrency(S : WideString) : Boolean;
      begin

      end;

      function TStringValidator.IsValidDateTime(S : WideString) : Boolean;
      begin

      end;

      function TStringValidator.IsValidByRegExp(S : WideString; RegExp : WideString) : Boolean;
      begin

      end;


      function TDateTimeValidator.IsValidInRange(D : TDateTime; DTStart, DTEnd : TDateTime) : Boolean;
      begin

      end;


      function TCurrencyValidator.IsValidAbove(C : Currency; CMin : Currency) : Boolean;
      begin

      end;

      function TCurrencyValidator.IsValidBelow(C : Currency; CMax : Currency) : Boolean;
      begin

      end;

      function TCurrencyValidator.IsValidMinMaxValue(C : Currency; CMin, CMax : Currency) : Boolean;
      begin

      end;


      function TValidatorFactory.StringValidator() : TStringValidator;
      begin

      end;

      function TValidatorFactory.DateTimeValidator() : TDateTimeValidator;
      begin

      end;

      function TValidatorFactory.CurrencyValidator() : TCurrencyValidator;
      begin

      end;


end.
