-- Function: ct_date(character varying)

-- DROP FUNCTION ct_date(character varying);

CREATE OR REPLACE FUNCTION ct_date(ct_number character varying)
  RETURNS timestamp with time zone AS
$BODY$
begin
select datetime from tbl_cd_cash_transactions where ct_number = $1 limit 1;
end
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ct_date(character varying)
  OWNER TO postgres;
