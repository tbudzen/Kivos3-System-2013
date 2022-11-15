 --tbl_cd_cash_transactions


  Alter table tbl_cd_cash_transactions_hist
  add  confirmation_id_user_controller integer;
  
  Alter table tbl_cd_cash_transactions_hist
  add user_explanation character varying;

  Alter table tbl_cd_cash_transactions_hist
  add modification_datetime timestamp with time zone;


  Alter table tbl_cd_cash_transactions_hist
  add modification_client_name character varying;


  Alter table tbl_cd_cash_transactions_hist
  add modification_user_name character varying;

  Alter table tbl_cd_cash_transactions_hist
  add modification_id_user integer;



  
  Alter table tbl_cd_cash_transactions_subt_hist
  add account_from character varying;

  Alter table tbl_cd_cash_transactions_subt_hist
  add account_to character varying;

  Alter table tbl_cd_cash_transactions_subt_hist
  add id_account_from integer;

  Alter table tbl_cd_cash_transactions_subt_hist
  add id_account_to integer;

  Alter table tbl_cd_cash_transactions_subt_hist
  add modification_datetime timestamp with time zone;

  Alter table tbl_cd_cash_transactions_subt_hist
  add modification_client_name character varying;

  Alter table tbl_cd_cash_transactions_subt_hist
  add modification_id_user integer;

  Alter table tbl_cd_cash_transactions_subt_hist
  add modification_user_name character varying;





  Alter table tbl_cd_cash_transactions_subt_categories_hist
  add  modification_datetime timestamp with time zone;

  Alter table tbl_cd_cash_transactions_subt_categories_hist
  add  modification_client_name character varying;

  Alter table tbl_cd_cash_transactions_subt_categories_hist
  add  modification_id_user integer;

  Alter table tbl_cd_cash_transactions_subt_categories_hist
  add  modification_user_name character varying;

  








  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add direction integer;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add multiplier double precision;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add last_shift_datetime timestamp with time zone;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add goes_into_amount_expected character varying;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add datetime timestamp with time zone;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add category_name character varying;

   Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add currency_symbol character varying;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add id_cd_transactionccr integer;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add id_transaction integer;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add modification_datetime timestamp with time zone;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add  modification_client_name character varying;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add modification_id_user integer;

  Alter table tbl_cd_cash_transactions_subt_categories_values_hist
  add  modification_user_name character varying;



 