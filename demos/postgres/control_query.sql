select c.first_name
     , c.last_name
     , c.email 
     , COUNT(1) as payments
     , sum(p.amount) as amount
  from payment p
  join customer c using (customer_id)
 group by c.customer_id 
 order by 4 desc
 limit 3;