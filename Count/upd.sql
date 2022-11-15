CREATE SEQUENCE public.tbl_cd_count_id_tbl_cd_count_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;

ALTER SEQUENCE public.tbl_cd_count_id_tbl_cd_count_seq RESTART WITH 398;

CREATE SEQUENCE public.tbl_cd_count_value_id_tbl_cd_count_value_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;

ALTER SEQUENCE public.tbl_cd_count_value_id_tbl_cd_count_value_seq RESTART WITH 10418;

CREATE SEQUENCE public.tbl_chip_amount_changes_id_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;

ALTER SEQUENCE public.tbl_chip_amount_changes_id_seq RESTART WITH 7;

CREATE SEQUENCE public.tbl_chip_balances_values_id_tbl_chip_balances_values_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;

ALTER SEQUENCE public.tbl_chip_balances_values_id_tbl_chip_balances_values_seq RESTART WITH 331;

CREATE SEQUENCE public.tbl_chip_shifts_id_tbl_chip_shifts_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;

ALTER SEQUENCE public.tbl_chip_shifts_id_tbl_chip_shifts_seq RESTART WITH 211;

CREATE OR REPLACE FUNCTION public.fn_set_cd_count_result (
  v_gaming_date date,
  v_id_cd bigint,
  v_type varchar
)
RETURNS pg_catalog.void AS'
BEGIN
  update tbl_cd_count set value_drop = 
  (
    select sum(cnt_operator * multiplier) 
    from tbl_cd_count_value 
    where gaming_date = $1 and id_cd=$2 and type=$3
  ),
  finished=true
  where gaming_date=$1 and id_cd=$2 and type=$3;

  
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_set_cd_counts (
  in_gaming_date date,
  in_type varchar
)
RETURNS pg_catalog.void AS'
BEGIN
  delete from tbl_cd_count where gaming_date = $1 and type=$2;
  delete from tbl_cd_count_value where gaming_date = $1 and type=$2;
  
  if ($2=''D'') then
    insert into tbl_cd_count (gaming_date,id_cd,cd_name,value_close,value_credit,value_drop,value_open,value_files,value_result,finished,type)
    select $1,id,cd_name,0,0,0,0,0,0,false,''D'' from tbl_cd where is_a_table=1;
  end if;

  if ($2=''T'') then
    insert into tbl_cd_count (gaming_date,id_cd,cd_name,value_close,value_credit,value_drop,value_open,value_files,value_result,finished,type)
    select $1,id,cd_name,0,0,0,0,0,0,false,''T'' from tbl_cd where is_for_tip_count=1;
  end if;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_set_chip_balance_initial (
  in_id_category bigint,
  in_id_value bigint,
  in_initial_value bigint
)
RETURNS pg_catalog.void AS'
DECLARE
  cnt integer;
BEGIN
  select into cnt count(*) from tbl_chip_balances where id_value = $2 and id_category = $1;
  
  if (cnt=0) then
    insert into tbl_chip_balances (id_category,id_value,initial_amount,present_amount,locked) values
    ($1, $2, $3, $3, false);
  else
    update tbl_chip_balances set initial_amount = $3, present_amount = $3
    where  id_value = $2 and id_category = $1;
  end if;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_set_chip_diff (
  in_gaming_day date
)
RETURNS pg_catalog.void AS'
BEGIN
  delete from tbl_chip_balances_values where gaming_date = $1;

  insert into tbl_chip_balances_values (gaming_date,id_category,id_value)
  select $1, tc.id id_category, tv.id id_value
  from  tbl_categories tc 
  left join tbl_values tv on tv.id_category=tc.id
  where tc.used_in_chip_balance=1 and tv.id_currency=3;

--  update tbl_chip_balances_values set a_diff = 
--  1
--  where gaming_date = $1;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_set_chip_shifts (
  id_gaming_date date
)
RETURNS pg_catalog.void AS'
BEGIN
  delete from tbl_chip_shifts where gaming_date = $1;
  
  insert into tbl_chip_shifts (gaming_date,id_cd,cd_name)
  select $1, id, cd_name from tbl_cd where used_in_chip_balance=1;
  
  
  
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_cd_count_tr1_bu (
)
RETURNS trigger AS'
BEGIN
  if (new.finished=true) then
    new.value_result = coalesce(new.value_close,0) + 
    				   coalesce(new.value_credit,0) + 
                       coalesce(new.value_drop,0) - 
                       coalesce(new.value_open,0) - 
                       coalesce(new.value_files,0);
  end if;
  
  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_cd_count_tr_bi (
)
RETURNS trigger AS'
declare
  v_id bigint;
BEGIN
  if (new.type=''D'') then
    v_id=null;
    select into v_id min(id) 
    from tbl_cd_cash_transactions 
    where gaming_date=new.gaming_date and id_cashdesk=new.id_cd and type=3;
    if (v_id is not null) then
      select into new.value_open sum(coalesce(nr,0) * coalesce(multiplier,0)) 
      from tbl_cd_cash_transactions_subt_categories_values 
      where id_cd_transaction = v_id;
    end if;
    
    v_id=null;
    select into v_id max(id) from tbl_cd_cash_transactions 
    where gaming_date=new.gaming_date and id_cashdesk=new.id_cd and type=1;
    if (v_id is not null) then
      select into new.value_close sum(coalesce(nr,0) * coalesce(multiplier,0)) 
      from tbl_cd_cash_transactions_subt_categories_values 
      where id_cd_transaction = v_id;
    end if;
  end if;
  
  
  insert into tbl_cd_count_value (id_tbl_cd_count,id_cd,gaming_date,id_value,id_category,type)
  select new.id_tbl_cd_count,new.id_cd,new.gaming_date,id_value,id_category,new.type
  from tbl_cd_values 
  where id_cashdesk = new.id_cd;

  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_cd_count_value_tr_bi (
)
RETURNS trigger AS'
BEGIN
  select into new.value_name,new.multiplier name,multiplier 
  from tbl_values
  where id = new.id_value;
  
  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_chip_amount_changes_tr (
)
RETURNS trigger AS'
declare
  change integer;
BEGIN
  if (new.typ=''Add'') then
    change=1;
  else
    change=-1;
  end if;
  
  update tbl_chip_balances set present_amount=present_amount+(new.amount * change)
  where id_category=new.id_category and id_value=new.id_value;
  
  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_chip_balances_values_tr (
)
RETURNS trigger AS'
DECLARE
  v_present_amount BIGINT;
BEGIN
  select into new.a_cnt sum(coalesce(nr,0))
  from tbl_cd_cash_transactions tct
  left join tbl_cd_cash_transactions_subt_categories_values tcv on tcv.id_cd_transaction=tct.id
  where tct.id in (select id_shift from tbl_chip_shifts where gaming_date=new.gaming_date)
        and tcv.id_cd_value = new.id_value 
        and tcv.id_cd_category = new.id_category;
      
  if (new.a_cnt is null) then
    new.a_cnt=0;
  end if;
  
  select into v_present_amount present_amount
  from tbl_chip_balances
  where id_category = new.id_category and
        id_value = new.id_value;
  
  if (v_present_amount is null) then
    v_present_amount = 0;
  end if;
  
  new.d_diff = new.a_cnt - v_present_amount;
    
  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE OR REPLACE FUNCTION public.fn_tbl_chip_shifts_tr_bi (
)
RETURNS trigger AS'
BEGIN
  select into new.id_shift, new.cnt max(tct.id), count(tct.id)
  from tbl_cd_cash_transactions tct
  left join tbl_cd_cash_transactions_types tctt on tctt.id=tct.type
  where tct.gaming_date=new.gaming_date and tct.id_cashdesk=new.id_cd and tctt.is_shift=1;
  
  if (new.id_shift is not null) then
    select into new.datetime, new.name_shift datetime, tctt.name
    from tbl_cd_cash_transactions tct
    left join tbl_cd_cash_transactions_types tctt on tctt.id=tct.type
    where tct.id = new.id_shift;
  end if;
  
  return new;
END;
'LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER;

CREATE TABLE public.tbl_cd_count (
  id_tbl_cd_count BIGINT DEFAULT nextval('tbl_cd_count_id_tbl_cd_count_seq'::regclass) NOT NULL, 
  gaming_date DATE, 
  type VARCHAR(1), 
  id_cd BIGINT, 
  cd_name VARCHAR, 
  value_close NUMERIC(15,2), 
  value_credit NUMERIC(15,2), 
  value_drop NUMERIC(15,2), 
  value_open NUMERIC(15,2), 
  value_files NUMERIC(15,2), 
  value_result NUMERIC(15,2), 
  finished BOOLEAN DEFAULT false NOT NULL
) WITHOUT OIDS;

CREATE TABLE public.tbl_cd_count_value (
  id_tbl_cd_count_value BIGINT DEFAULT nextval('tbl_cd_count_value_id_tbl_cd_count_value_seq'::regclass) NOT NULL, 
  id_tbl_cd_count BIGINT, 
  id_cd BIGINT, 
  gaming_date DATE, 
  type VARCHAR(1), 
  id_value BIGINT, 
  cnt_operator INTEGER, 
  cnt_controler INTEGER, 
  value_name VARCHAR, 
  multiplier DOUBLE PRECISION, 
  id_category BIGINT
) WITHOUT OIDS;

CREATE TABLE public.tbl_chip_amount_changes (
  id BIGINT DEFAULT nextval('tbl_chip_amount_changes_id_seq'::regclass) NOT NULL, 
  id_category BIGINT NOT NULL, 
  id_value BIGINT NOT NULL, 
  typ VARCHAR(9) NOT NULL, 
  amount INTEGER NOT NULL, 
  datetime TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
  description VARCHAR
) WITHOUT OIDS;

CREATE TABLE public.tbl_chip_balances_values (
  id_tbl_chip_balances_values BIGINT DEFAULT nextval('tbl_chip_balances_values_id_tbl_chip_balances_values_seq'::regclass) NOT NULL, 
  gaming_date DATE, 
  id_category BIGINT, 
  id_value BIGINT, 
  a_cnt INTEGER, 
  d_diff INTEGER
) WITHOUT OIDS;

CREATE TABLE public.tbl_chip_shifts (
  id_tbl_chip_shifts BIGINT DEFAULT nextval('tbl_chip_shifts_id_tbl_chip_shifts_seq'::regclass) NOT NULL, 
  gaming_date DATE NOT NULL, 
  id_cd BIGINT NOT NULL, 
  cd_name VARCHAR, 
  datetime TIMESTAMP WITH TIME ZONE, 
  id_shift BIGINT, 
  name_shift VARCHAR, 
  cnt INTEGER DEFAULT 0 NOT NULL
) WITHOUT OIDS;

ALTER TABLE public.tbl_cd
  ADD COLUMN is_for_tip_count INTEGER;

ALTER TABLE public.tbl_cd
  ALTER COLUMN is_for_tip_count SET DEFAULT 1;

ALTER TABLE public.tbl_cd
  ADD COLUMN is_a VARCHAR(2);

ALTER TABLE public.tbl_chip_balances
  ADD COLUMN locked BOOLEAN DEFAULT false NOT NULL;

CREATE TABLE public.tbl_game_type (
  id_tbl_game_type VARCHAR(2) NOT NULL, 
  game_type_name VARCHAR(50)
) WITHOUT OIDS;

ALTER TABLE public.tbl_game_type
  ADD CONSTRAINT tbl_game_type_pkey 
    PRIMARY KEY (id_tbl_game_type);

ALTER TABLE public.tbl_chip_shifts
  ADD CONSTRAINT tbl_chip_shifts_pkey 
    PRIMARY KEY (id_tbl_chip_shifts);

CREATE UNIQUE INDEX tbl_chip_shifts_idx ON public.tbl_chip_shifts
  USING btree (gaming_date, id_cd);

ALTER TABLE public.tbl_chip_balances_values
  ADD CONSTRAINT tbl_chip_balances_values_pkey 
    PRIMARY KEY (id_tbl_chip_balances_values);

CREATE UNIQUE INDEX tbl_chip_balances_values_idx ON public.tbl_chip_balances_values
  USING btree (gaming_date, id_category, id_value);

ALTER TABLE public.tbl_chip_amount_changes
  ADD CONSTRAINT tbl_chip_amount_changes_pkey 
    PRIMARY KEY (id);

CREATE INDEX tbl_chip_amount_changes_idx ON public.tbl_chip_amount_changes
  USING btree (id_category, id_value);

ALTER TABLE public.tbl_cd_count_value
  ADD CONSTRAINT tbl_cd_count_value_pkey 
    PRIMARY KEY (id_tbl_cd_count_value);

CREATE INDEX tbl_cd_count_value_idx2 ON public.tbl_cd_count_value
  USING btree (gaming_date, id_cd, type);

CREATE UNIQUE INDEX tbl_cd_count_value_idx1 ON public.tbl_cd_count_value
  USING btree (gaming_date, id_cd, id_value, type);

CREATE INDEX tbl_cd_count_value_idx ON public.tbl_cd_count_value
  USING btree (id_tbl_cd_count);

ALTER TABLE public.tbl_cd_count
  ADD CONSTRAINT tbl_cd_count_pkey 
    PRIMARY KEY (id_tbl_cd_count);

CREATE UNIQUE INDEX tbl_cd_count_idx ON public.tbl_cd_count
  USING btree (gaming_date, type, id_cd);

CREATE INDEX tbl_cd_cash_transactions_subt_categories_values_idx ON public.tbl_cd_cash_transactions_subt_categories_values
  USING btree (id_cd_transaction);

CREATE INDEX tbl_cd_cash_transactions_idx ON public.tbl_cd_cash_transactions
  USING btree (gaming_date, id_cashdesk);

CREATE TRIGGER tbl_cd_count_tr BEFORE INSERT 
ON public.tbl_cd_count FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_cd_count_tr_bi();

CREATE TRIGGER tbl_cd_count_tr1 BEFORE UPDATE 
ON public.tbl_cd_count FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_cd_count_tr1_bu();

CREATE TRIGGER tbl_cd_count_value_tr BEFORE INSERT 
ON public.tbl_cd_count_value FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_cd_count_value_tr_bi();

CREATE TRIGGER tbl_chip_amount_changes_tr AFTER INSERT 
ON public.tbl_chip_amount_changes FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_chip_amount_changes_tr();

CREATE TRIGGER tbl_chip_balances_values_tr BEFORE INSERT 
ON public.tbl_chip_balances_values FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_chip_balances_values_tr();

CREATE TRIGGER tbl_chip_shifts_tr BEFORE INSERT 
ON public.tbl_chip_shifts FOR EACH ROW 
EXECUTE PROCEDURE public.fn_tbl_chip_shifts_tr_bi();

update tbl_cd set is_a='AR' where id in (43,44,45,56,57);
update tbl_cd set is_a='BJ' where id in (70,59,48,47,46);
update tbl_cd set is_a='PO' where id in (49,50,60,61);
update tbl_cd set is_for_tip_count=1;
update tbl_cd set is_for_tip_count=0 where id in (69,59,55,53,52,42);
insert into tbl_game_type (id_tbl_game_type,game_type_name) values ('AR','American roulette');
insert into tbl_game_type (id_tbl_game_type,game_type_name) values ('BJ','Black Jack');
insert into tbl_game_type (id_tbl_game_type,game_type_name) values ('PO','Poker');
