CREATE OR REPLACE FUNCTION public.cd_last_ext_tr_time (
  out h_tr_time timestamp,
  out t_tr_time timestamp
)
RETURNS record AS
$body$
BEGIN
 select into h_tr_time max(generated) from cd_ext_transactions
  where tr_type = 'H';
 select into t_tr_time max(generated) from cd_ext_transactions
  where tr_type = 'T';
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;