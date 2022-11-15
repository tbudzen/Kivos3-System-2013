CREATE OR REPLACE FUNCTION public.cd_ext_tr_sum (
  tr_id bigint,
  out h_sum numeric,
  out t_sum numeric
)
RETURNS record AS
$body$
BEGIN
 select into h_sum sum(tr_value) from cd_ext_transactions where int_tr_id = $1 and tr_type = 'H';
 select into t_sum sum(tr_value) from cd_ext_transactions where int_tr_id = $1 and tr_type = 'T';
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;