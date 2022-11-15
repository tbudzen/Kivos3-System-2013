-- Function: last_shift_date(integer)

-- DROP FUNCTION last_shift_date(integer);

CREATE OR REPLACE FUNCTION last_shift_date(integer)
  RETURNS timestamp with time zone AS
$BODY$
select datetime
from tbl_cd_cash_transactions
where ct_number = last_shift($1)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
ALTER FUNCTION last_shift_date(integer)
  OWNER TO postgres;
