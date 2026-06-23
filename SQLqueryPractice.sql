
--select u.full_name,Count(t.txn_id) as total_transactions from banking_users as u
--left join transactions as t on u.user_id = t.user_id
--group by u.user_id , u.full_name


--SELECT u.full_name,u.email,t.txn_id FROM banking_users as u
--left join transactions as t on u.user_id = t.user_id 
--where isnull(t.txn_id,'')= ''


--select bu.full_name,T.amount from Banking_users  as bu
--left join transactions as t on bu.user_id = t.user_id


--SELECT u.full_name, p.product_name, t.amount, t.channel
--FROM transactions AS t
--INNER JOIN banking_users AS u ON t.user_id = u.user_id
--INNER JOIN financial_products AS p ON t.product_id = p.product_id;




