CREATE TABLE public.cd_ext_transactions (
  id BIGSERIAL, 
  generated TIMESTAMP WITHOUT TIME ZONE, 
  tr_type VARCHAR(1), 
  tr_number BIGINT, 
  tr_ipaddr BIGINT, 
  tr_value NUMERIC(15,2) DEFAULT 0, 
  int_tr_id BIGINT DEFAULT 0, 
  tr_location INTEGER, 
  tr_name VARCHAR(100), 
  int_cd_id BIGINT, 
  CONSTRAINT cd_ext_transactions_pkey PRIMARY KEY(id)
) WITHOUT OIDS;

COMMENT ON COLUMN public.cd_ext_transactions.tr_type
IS 'T-Ticket;H-Handpay';

CREATE INDEX cd_ext_transactions_int_id ON public.cd_ext_transactions
  USING btree (int_tr_id);

CREATE INDEX cd_ext_transactions_time ON public.cd_ext_transactions
  USING btree (generated DESC);