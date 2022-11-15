CREATE TABLE tbl_shifts_caskdesk
(
  id serial NOT NULL,
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
  direction integer,
  multiplier double precision,
  last_shift_datetime timestamp(6) with time zone,
  goes_into_amount_expected character varying,
  datetime timestamp(6) with time zone,
  category_name character varying,
  currency_symbol character varying,
  id_transaction integer,
  CONSTRAINT pk_tbl_shifts_caskdesk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_shifts_caskdesk
  OWNER TO postgres;
