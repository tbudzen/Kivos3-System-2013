-- STAMP FIELDS

-- tbl_cd_cash_transactions

alter table tbl_cd_cash_transactions
add column modification_datetime timestamp with time zone;

alter table tbl_cd_cash_transactions
add column modification_client_name character varying;

alter table tbl_cd_cash_transactions
add column modification_id_user integer;

alter table tbl_cd_cash_transactions
add column modification_user_name character varying;

-- tbl_cd_cash_transactions_subt

alter table tbl_cd_cash_transactions_subt
add column modification_datetime timestamp with time zone;

alter table tbl_cd_cash_transactions_subt
add column modification_client_name character varying;

alter table tbl_cd_cash_transactions_subt
add column modification_id_user integer;

alter table tbl_cd_cash_transactions_subt
add column modification_user_name character varying;

-- tbl_cd_cash_transactions_subt_categories

alter table tbl_cd_cash_transactions_subt_categories
add column modification_datetime timestamp with time zone;

alter table tbl_cd_cash_transactions_subt_categories
add column modification_client_name character varying;

alter table tbl_cd_cash_transactions_subt_categories
add column modification_id_user integer;

alter table tbl_cd_cash_transactions_subt_categories
add column modification_user_name character varying;

-- tbl_cd_cash_transactions_subt_categories_values

alter table tbl_cd_cash_transactions_subt_categories_values
add column modification_datetime timestamp with time zone;

alter table tbl_cd_cash_transactions_subt_categories_values
add column modification_client_name character varying;

alter table tbl_cd_cash_transactions_subt_categories_values
add column modification_id_user integer;

alter table tbl_cd_cash_transactions_subt_categories_values
add column modification_user_name character varying;

-- tbl_cd_transactions

alter table tbl_cd_transactions
add column modification_datetime timestamp with time zone;

alter table tbl_cd_transactions
add column modification_client_name character varying;

alter table tbl_cd_transactions
add column modification_id_user integer;

alter table tbl_cd_transactions
add column modification_user_name character varying;

-- tbl_cd_multiple_transactions

alter table tbl_cd_multiple_transactions
add column modification_datetime timestamp with time zone;

alter table tbl_cd_multiple_transactions
add column modification_client_name character varying;

alter table tbl_cd_multiple_transactions
add column modification_id_user integer;

alter table tbl_cd_multiple_transactions
add column modification_user_name character varying;

-- PROCEDURES

create or replace function tr_cd_cash_transactions() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_cash_transactions() owner to postgres;

create or replace function tr_cd_cash_transactions_subt() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_cash_transactions_subt() owner to postgres;

create or replace function tr_cd_cash_transactions_subt_categories() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_cash_transactions_subt_categories() owner to postgres;

create or replace function tr_cd_cash_transactions_subt_categories_values() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_cash_transactions_subt_categories_values() owner to postgres;

create or replace function tr_cd_transactions() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_transactions() owner to postgres;

create or replace function tr_cd_multiple_transactions() returns trigger as
$BODY$
begin    
	new.modification_datetime = now();
	new.modification_client_name = (select client_name from tbl_login where client_ip = inet_client_addr());
	new.modification_id_user = -1;
	new.modification_user_name = (select user_name from tbl_login where client_ip = inet_client_addr());
	return new;
end;
$BODY$
language plpgsql volatile
cost 100;
alter function tr_cd_multiple_transactions() owner to postgres;

-- TRIGGERS

create trigger tr_cd_cash_transactions
after update or insert
on tbl_cd_cash_transactions
for each row
execute procedure tr_cd_cash_transactions();

create trigger tr_cd_cash_transactions_subt
after update or insert
on tbl_cd_cash_transactions_subt
for each row
execute procedure tr_cd_cash_transactions_subt();

create trigger tr_cd_cash_transactions_subt_categories
after update or insert
on tbl_cd_cash_transactions_subt_categories
for each row
execute procedure tr_cd_cash_transactions_subt_categories();

create trigger tr_cd_cash_transactions_subt_categories_values
after update or insert
on tbl_cd_cash_transactions_subt_categories_values
for each row
execute procedure tr_cd_cash_transactions_subt_categories_values();

create trigger tr_cd_transactions
after update or insert
on tbl_cd_transactions
for each row
execute procedure tr_cd_transactions();

create trigger tr_cd_multiple_transactions
after update or insert
on tbl_cd_multiple_transactions
for each row
execute procedure tr_cd_multiple_transactions();