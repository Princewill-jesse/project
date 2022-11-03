
------question 1---------

select distinct primary_poc, to_char("occurred_at" , 'day'), sum("total") as "total_qty"
from "orders" o
join "accounts" a
on o.account_id = a.id 
group by "primary_poc","occurred_at" 
order by "total_qty" desc 


------question 2------------

select "name", to_char(occurred_at, 'day'),  sum(total) as "highest_sale"
from "accounts" a
join "orders" o
on o.account_id = a.id 
where trim(to_char(occurred_at, 'day')) = 'saturday' and "name" = 'Walmart'
group by "name", "occurred_at"
order by "highest_sale" 




------question 3-----------

select distinct  "name", to_char(occurred_at,' day-dd-mon-yyyy'), max(total) as "highest_sale"
from "orders" o
join "sales_rep" s
on o.id = s.region_id
group by "name", "occurred_at"
order by "highest_sale" desc


-----question 3 part b-----

select distinct  s.name, a.name, to_char(occurred_at,' day-dd-mon-yyyy'), sum(total) as "highest_sale"
from "orders" o
join "sales_rep" s
on o.id = s.region_id
join "accounts" a
on a.sales_rep_id = s.id
group by s.name, a.name, "occurred_at"
order by "highest_sale" desc

	
	



