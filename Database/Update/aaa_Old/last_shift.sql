-- Function: last_shift(integer)

-- DROP FUNCTION last_shift(integer);

CREATE OR REPLACE FUNCTION last_shift(integer)
  RETURNS character varying AS
$BODY$
select ct_number
from tbl_last_shift
where id_cashdesk = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
ALTER FUNCTION last_shift(integer)
  OWNER TO postgres;
