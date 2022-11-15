-- Table: tbl_st_category

-- DROP TABLE tbl_st_category;

CREATE TABLE tbl_st_category
(
  id serial NOT NULL,
  name character varying,
  refresh int,
  CONSTRAINT pk_tbl_st_category_id PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);





CREATE TABLE tbl_st_valuesCategory
(
  id serial NOT NULL,
  idcategory integer,
  idvaluesCategory integer,
  name varchar,
  description varchar,
  Type smallint,
  Active smallint,  
  CONSTRAINT pk_valuesCategory_id PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);


ALTER TABLE tbl_st_valuesCategory
  OWNER TO postgres;




CREATE TABLE tbl_st_entry_category_values_header
(
  Gaming_date date,
  Datetime timestamp with time zone,
  Id_category integer,
  User_creator character varying(50),
  User_modyfier character varying(50),
  Modyfy_date timestamp with time zone,
  Id Serial,
  CONSTRAINT pk_tbl_st_entry_category_values_header_id PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);


ALTER TABLE tbl_st_entry_category_values_header
  OWNER TO postgres;




CREATE TABLE tbl_st_enter_category_values_details
(
  Id serial,
  Id_value integer,
  Value_Figure character varying(50),
  Remark character varying(50),
  Result character varying(50),
  idHeader integer,
  CONSTRAINT pk_tbl_st_enter_category_values_details_id PRIMARY KEY (id )  
)
WITH (
  OIDS=FALSE
);


ALTER TABLE tbl_st_enter_category_values_details
  OWNER TO postgres;


Insert into Tbl_access_objects(id,object_Name) values(28,'Frame.Statistic');
Insert into Tbl_access_objects(id,object_Name) values(73,'Frame.AddSCategory');
Insert into Tbl_access_objects(id,object_Name) values(74,'Frame.ModifyEntry');



Alter table tbl_transactions 
add allow_change_gd smallint


Alter table tbl_transactions 
add main_transaction_gd smallint


Alter table tbl_transactions 
add account_from_gd smallint



Alter table tbl_transactions 
add account_to_gd smallint 




CREATE TABLE tbl_parametres
(
  id serial NOT NULL,
  ParametrName varchar null, 
  ParametrValue varchar null,
  CONSTRAINT pk_tbl_parametres_id PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);


Insert into tbl_parametres(ParametrName,ParametrValue) values('GAMING_DAY','');







Alter table tbl_cd_cash_transactions
  add allow_change_gd smallint;


Alter table tbl_cd_cash_transactions
add main_transaction_gd smallint;


Alter table tbl_cd_cash_transactions
add account_from_gd smallint;

Alter table tbl_cd_cash_transactions
add gaming_date timestamp without time zone;


Alter table tbl_cd_cash_transactions
add account_to_gd smallint; 


Alter table tbl_cd_cash_transactions 
Add Acc_from_gd  timestamp without time zone;

Alter table tbl_cd_cash_transactions 
Add Acc_to_gd  timestamp without time zone;

 




CREATE FUNCTION tbl_cd_cash_transactions_trigger() RETURNS trigger AS $tbl_cd_cash_transactions$
 DECLARE
    vtime varchar;
    ttime time;
    cCurrTime time;
 BEGIN
    
      vtime= (Select parametrvalue from tbl_parametres where parametrname='GAMING_DAY');
      ttime= (SELECT  CAST(vtime AS time) AS time);
      cCurrTime=(SELECT  CAST( now() AS time));
       
        IF NEW.allow_change_gd=0 or NEW.allow_change_gd isnull THEN
            if cCurrTime > ttime then
               NEW.Gaming_date:= cast(now() as date);  
            END IF;
            IF cCurrTime<= ttime  then
              NEW.Gaming_date:= (cast(now() as date) - integer '1');   
            END IF;
        END IF;
        
      RETURN NEW;
    END;
$tbl_cd_cash_transactions$ LANGUAGE plpgsql;


CREATE TRIGGER cd_cash_transactions_trigger BEFORE INSERT OR UPDATE ON tbl_cd_cash_transactions
    FOR EACH ROW EXECUTE PROCEDURE tbl_cd_cash_transactions_trigger();





Alter table tbl_st_category 
add id_groups int; 







Alter Table tbl_cd_cash_transactions
Add explanation_supervisor varchar;

Alter Table tbl_cd_cash_transactions
Add id_category_diff_s int;


Alter Table tbl_cd_cash_transactions
Add  id_explanation_supervisor int;












CREATE TABLE tbl_cd_cash_transactions_Hist
(
  id serial NOT NULL,
  id_cashdesk integer,
  id_cd_transaction integer, -- WARNING: ...
  confirmed integer,
  confirmation_id_user integer,
  id_user integer,
  type integer, -- 0 - normal transaction or multiple transaction...
  datetime timestamp with time zone,
  ct_number character varying, -- Cash transaction unique number with info about type
  is_multiple_cd_transaction integer,
  direction integer, -- -- because it can be selected in case of In <-> Out
  base_ct_number character varying,
  remarks character varying,
  amount_in double precision,
  amount_out double precision,
  account_id_from character varying,
  account_id_to character varying,
  account_id_transfer character varying,
  difference double precision,
  copied_from_ct_number integer,
  confirmed_from_other_transaction integer,
  confirms character varying,
  gaming_date timestamp without time zone,
  allow_change_gd smallint,
  main_transaction_gd smallint,
  account_from_gd smallint,
  account_to_gd smallint,
  acc_from_gd timestamp without time zone,
  acc_to_gd timestamp without time zone,
  id_category_diff_s integer,
  explanation_supervisor character varying,
  id_explanation_supervisor integer,
  Id_cd_cash_transactions_hist integer,--Normal Transaction
  Date_Hist timestamp without time zone,
  User_hist integer,
  CONSTRAINT pk_cd_cash_transactions_hist PRIMARY KEY (id )
  )
WITH (
  OIDS=FALSE
);









CREATE TABLE tbl_cd_cash_transactions_subt_Hist
(
  id serial NOT NULL,
  id_cd_transaction integer,
  id_cashdesk integer,
  ct_number character varying,
  multiple_subtransaction_id integer,
  amount_in double precision, -- -- for balancing multiple transactions
  amount_out double precision, -- -- for balancing multiple transactions
  direction integer,
  id_cd_cash_transactions_subt_hist integer,
  CONSTRAINT pl_cd_cash_transactions_subt_id_hist PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);






CREATE TABLE tbl_cd_cash_transactions_subt_categories_Hist
(
  id serial NOT NULL,
  id_cashdesk integer,
  id_cd_transaction integer,
  id_cd_category integer,
  ct_number character varying,
  id_cd_sub_transaction integer,
  nr double precision,
  id_cd_cash_transactions_subt_categories_Hist integer,
  CONSTRAINT pk_cd_cash_transactions_subt_categories_id_hist PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);




CREATE TABLE tbl_cd_cash_transactions_subt_categories_values_Hist
(
  id integer NOT NULL DEFAULT nextval('tbl_cd_cash_transactions_subt_values_id_seq'::regclass),
  id_cd_sub_transaction integer,
  id_cd_transaction integer,
  id_cd_value integer,
  id_cashdesk integer,
  count double precision,
  amount_in double precision,
  amount_out double precision,
  id_cd_category integer,
  ct_number character varying,
  nr double precision,
  exchange_rate double precision,
  id_cd_cash_transactions_subt_categories_values_Hist integer,
  CONSTRAINT pk_cd_cash_transactions_subt_values_id_hist PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);




CREATE TABLE tbl_Reports(
 id serial NOT NULL,
 Name varchar,
CONSTRAINT pl_reports PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);


CREATE TABLE tbl_ReportsPrinters(
 id serial NOT NULL,
 id_reports integer, 
 PrinterName varchar,
 PrinterIndex integer,
CONSTRAINT pl_ReportsPrinters PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);




-----------------------------------------------------------------
/*
alter TABLE tbl_cd_cash_transactions_subt_categories_values

add column  category_name character varying,
add column  currency_symbol character varying,
add column  direction integer,
add column  multiplier integer,
add column  last_shift_datetime timestamp with time zone,
add column  goes_into_amount_expected character varying,
add column  datetime timestamp with time zone,




Drop table tbl_login

CREATE TABLE tbl_login
(
  datetime timestamp with time zone, 
  user_name character varying, 
  client_ip character varying, 
  info character varying
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_transactions_accounts
  OWNER TO postgres;
*/
//-----------------------------------------------------------------






Alter table tbl_cd_cash_transactions_subt
Add account_from varchar;


Alter table tbl_cd_cash_transactions_subt
Add account_to varchar;

Alter table tbl_cd_cash_transactions_subt
Add id_account_from int;


Alter table tbl_cd_cash_transactions_subt
Add id_account_to int;









CREATE TABLE tbl_currencies_exchange_rates_hist
(
  id serial NOT NULL,
  id_currency integer,
  buying double precision,
  selling double precision,
  valid_from timestamp without time zone,
  valid_to timestamp without time zone,
  CONSTRAINT pk_currencies_exchange_rates_id_hist PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_currencies_exchange_rates
  OWNER TO postgres;






CREATE FUNCTION tbl_currencies_exchange_rates_trigger() RETURNS trigger AS $tbl_currencies_exchange_rates$
 DECLARE
    vtime varchar;
    ttime time;
    cCurrTime time;
 BEGIN
    Insert into tbl_currencies_exchange_rates_hist(id_currency, buying, selling, valid_from, valid_to) values
         ( OLD.id_currency,OLD.buying,OLD.selling,OLD.Valid_from, now());
     RETURN NEW;
    END;
$tbl_currencies_exchange_rates$ LANGUAGE plpgsql;


CREATE TRIGGER tbl_currencies_exchange_rates_trigger BEFORE  UPDATE ON tbl_currencies_exchange_rates
    FOR EACH ROW EXECUTE PROCEDURE tbl_currencies_exchange_rates_trigger();










CREATE OR REPLACE FUNCTION last_shift_inter_date(integer)
  RETURNS timestamp with time zone AS
$BODY$
select max(datetime) 
from tbl_cd_cash_transactions
where (type = 1  or type = 3 or type=6) and id_cashdesk = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
ALTER FUNCTION last_shift_date(integer)
  OWNER TO postgres;





Drop function opencashdesk()


CREATE OR REPLACE FUNCTION opencashdesk()
  RETURNS TABLE(id integer, cd_name character varying, id_cashdesk integer, 
                 datetime timestamp with time zone, cl timestamp with time zone, inf integer) AS
$BODY$


 Select tbl_cd_cash_transactions.id, 
        tbl_cd.cd_name,  id_cashdesk, 
        dateTime  , last_shift_inter_date(id_cashdesk) as cl, 
        case when SubString(ct_number,1,2)='OP' then 0 else 1 end as inf 
  from 
  tbl_cd_cash_transactions,tbl_cd 
     where 
     tbl_cd_cash_transactions.id_cashdesk=tbl_cd.id and

      ((SubString(ct_number,1,2)='OP') or ( SubString(ct_number,1,2)='CH')) 
          and dateTime=last_shift_inter_date(id_cashdesk)



$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION opencashdesk()
  OWNER TO postgres;






Alter table tbl_cd_cash_transactions_subt_categories_values
add id_cd_transactionCCR integer;  







--STARA TABELA. PONI¯EJ JEST KOLEJNA WERSJA 
--CREATE TABLE tbl_external_cd_transactions
-- (
--   id bigserial NOT NULL,
--   datetime timestamp with time zone,
--   id_cd_val bigint NOT NULL,
--   multiplier bigint NOT NULL DEFAULT 0,
--   ct_identifier text NOT NULL,
--   id_cd bigint NOT NULL,
--   guid text NOT NULL,
--   nr numeric NOT NULL,
--   id_cd_transaction integer null,
--   id_cd_sub_transaction integer null, 
--   ct_number text null,
--   id_category integer null,
--   id_currency integer null,
--   cUrrency_symbol varchar null,
--   ok integer, 
--   CONSTRAINT tbl_external_cd_transactions_pkey PRIMARY KEY (id)
-- )
-- WITH (
--   OIDS=FALSE
-- );

-- ALTER TABLE tbl_external_cd_transactions OWNER TO postgres;
-- GRANT ALL ON TABLE tbl_external_cd_transactions TO postgres;
-- GRANT ALL ON TABLE tbl_external_cd_transactions TO public;
-- ALTER TABLE tbl_external_cd_transactions
--    ALTER COLUMN datetime SET DEFAULT now();




CREATE TABLE tbl_external_cd_transactions
 (
   id bigserial NOT NULL,
   type_transaction integer,
   id_transaction integer,
   datetime timestamp with time zone DEFAULT now(),
   id_cd_val bigint NOT NULL,
   multiplier bigint NOT NULL DEFAULT 0,
   ct_identifier text NOT NULL,
   id_cd bigint NOT NULL,
   guid text NOT NULL,
   nr numeric NOT NULL,
   table_minimum numeric,
   players bigint,
   nonplayers bigint,
   id_cd_transaction integer null,
   id_cd_sub_transaction integer null, 
   ct_number text null,
   id_category integer null,
   id_currency integer null,
   cUrrency_symbol varchar null,
   id_account_from integer null,
   id_account_to integer null,
   name_account_from varchar null,
   name_account_to varchar null, 
   ok integer, 
   id_request integer null,
   CONSTRAINT tbl_external_cd_transactions_pkey PRIMARY KEY (id)
 )
 WITH (
   OIDS=FALSE
 );
 ALTER TABLE tbl_external_cd_transactions OWNER TO postgres;
 GRANT ALL ON TABLE tbl_external_cd_transactions TO postgres;
 GRANT ALL ON TABLE tbl_external_cd_transactions TO public;







//----------------------------------------------------------------------------------



Alter table tbl_parametres
add idTransaction integer;




Alter table tbl_parametres
add idDropTransaction integer;



Alter table tbl_parametres
add idFillTransaction integer;



Alter table tbl_parametres
add idCreditTransaction integer;



INSERT INTO tbl_cd_cash_transactions_types(
            id, type, name, is_shift, description, mnemonic, is_auto, goes_into_amount_expected)
    VALUES (14,14 ,'Change  Currency Rate',0,NULL,'CCR', 1, 1);



--------------------------------------------------------------------------------------
Alter table tbl_parametres
add Diffrence double precision;


Alter table tbl_parametres
Add Import integer;

Alter table tbl_parametres
Add TimeOut integer;

Update  tbl_parametres set  Diffrence=0;
Update  tbl_parametres set Import=1;
Update  tbl_parametres set TimeOut=100000; 



---------------------------------------------------------
Alter table tbl_parametres
Add AlertCurr double precision;


Alter table tbl_parametres
Add id_currency integer;






Alter table tbl_multiple_transactions
Add print_direct integer;

Alter table tbl_multiple_transactions
add  how_many_copies integer;

Alter table tbl_multiple_transactions
add  id_report integer;






-----------------------------------------------------------------------------------------------------------


Alter table tbl_ReportsPrinters
add cd_name varchar;


Alter table tbl_ReportsPrinters
add id_cd integer;



-----------------------------------------------------------------------------------------------------------


delete from tbl_reports

Insert into  tbl_reports(id, name) values(1,'Ticket');
Insert into  tbl_reports(id, name) values(2,'Balance');
Insert into  tbl_reports(id, name) values(3,'Transfer');
Insert into  tbl_reports(id, name) values(4,'General Ticket');
Insert into  tbl_reports(id, name) values(6,'Shift');




