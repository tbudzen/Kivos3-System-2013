CREATE TABLE tbl_shortcut_user
(
  id serial NOT NULL,
  id_cd_transaction integer,
  id_cashdesk integer,
  labels character varying,
  id_user integer,
  id_account integer,
  direction integer,
  is_multiple integer,
  is_active integer,
  
  CONSTRAINT pk_tbl_tbl_shortcut_user_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_shortcut_user
  OWNER TO postgres;



insert into tbl_access_objects(id, object_name) values(85, 'Frame.CashShortCutManager');





CREATE TABLE tbl_shortcut_user_values
(
  id serial NOT NULL,
  id_shortcut_user integer,
  id_category integer,  
  id_value integer,
  nr double precision,
  category_name varchar,
  currency_symbol varchar,
  multiplier double precision,
  AmountIn double precision,
  AmountOut double precision,
  CONSTRAINT pk_tbl_tbl_shortcut_user_values_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbl_shortcut_user_values
  OWNER TO postgres;
