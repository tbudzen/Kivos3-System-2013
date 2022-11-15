Alter table tbl_values
add active integer;

Update tbl_values set active=0;


Alter table tbl_cd_values
add active integer;

Update tbl_cd_values set active=0;

Alter table tbl_accounts
add active integer;

Update tbl_accounts  set active=0;


Alter table tbl_transactions_accounts_fixed
add active integer;


Update tbl_transactions_accounts_fixed  set active=0;


Alter table tbl_transactions_accounts_manual
add active integer;


Update tbl_transactions_accounts_manual  set active=0;


Alter table tbl_transactions_values
add active integer;


Update tbl_transactions_values  set active=0;