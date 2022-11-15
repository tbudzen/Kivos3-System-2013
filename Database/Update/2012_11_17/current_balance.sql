select
  category_name,
  currency_symbol,
  exchange_rate,
  sum(multiplier * nr) as amount_foreign,
  sum(multiplier * nr * exchange_rate) as amount_base
from
(   select	
      category_name(c.id_cd_category) as category_name, 
      currency_symbol_of_cd_value(v.id_cd_value) as currency_symbol,
      currency_id_of_cd_value(v.id_cd_value) as currency_id,
      v.exchange_rate,
      multiplier_of_cd_value(v.id_cd_value) as multiplier,
      v.nr as nr
    from  
      tbl_cd_cash_transactions as t 
      left join tbl_cd_cash_transactions_subt as subt 
	on subt.ct_number = t.ct_number 
      left join tbl_cd_cash_transactions_subt_categories as c 
	on c.ct_number = subt.ct_number and c.id_cd_transaction = subt.id_cd_transaction
      left join tbl_cd_cash_transactions_subt_categories_values as v 
	on v.ct_number = c.ct_number and v.id_cd_transaction = c.id_cd_transaction and v.id_cd_category = c.id_cd_category
      left join tbl_cd_cash_transactions_types as ct on t.type = ct.type
    where  
      t.confirmed = 1 and 
      t.datetime > last_shift_date(29) and 
      t.id_cashdesk = 29 and 
      ct.goes_into_amount_expected = '1'
    group by  
      category_name, 
      currency_id, 
      currency_symbol, 
      exchange_rate, 
      multiplier, 
      v.nr
)
as s
group by
  category_name, 
  currency_symbol, 
  exchange_rate
  