SELECT 

	t.id_cd_transaction,
  
	t.datetime, 
 
	t.account_id_from, 
 
 	t.ct_number, 
 
 	v.exchange_rate, 
  
	
	v.nr, 
 
 	v.count,

  	v.id_cd_value,
  
	v1.multiplier,
  
	v1.name as waluta,
  
	
	cc.name as kategoria,
	tr.name as transaction

from
 
 	tbl_cd_cash_transactions as t 
	 
		
left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number 
	 
		
left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number 
	
 		
left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number 
       
  		
left join 
	   
 			(select id,name, multiplier from tbl_values)
				 
		as v1 on v1.id = v.id_cd_value
	
		
left join 
( select id, name  from tbl_categories ) 
as cc on cc.id = v.id_cd_category
		
left join
			(select id, name  from tbl_transactions )

 as tr on tr.id = t.id_cd_transaction

where v.nr >0 and t.ct_number = 'NORM/29/11/9/2012/2'




group by
	t.id_cd_transaction,
 
 	t.datetime, 
  
	t.account_id_from, 
 
 	t.ct_number, 
 
 	v.exchange_rate, 
  
	v.nr, 
  
	
		v.count,
 
 	v.id_cd_value,
 
 	v1.multiplier,
 
 	v1.name ,
  
	cc.name ,
	tr.name
	  
 

order by t.ct_number
