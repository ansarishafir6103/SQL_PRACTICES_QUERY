use [PracticeDB]
go

-- Dormant Users
select u.user_id,u.full_name,t.txn_id,t.amount from banking_users as u  
left join transactions as t on u.user_id=t.user_id
union
select u.user_id,u.full_name,t.txn_id,t.amount from banking_users as u
right join transactions as t on u.user_id=t.user_id


--select * from transactions

--select u.user_id,u.full_name,avg(t.amount) from banking_users as u
--inner join transactions as t on t.user_id = u.user_id
--group by u.user_id,u.full_name 
--having avg(t.amount) > (select AVG(amount) from transactions)
--select * from banking_users
--select * from financial_products
--select * from transactions

--select
--t.user_id,
--t.txn_id,
--txn_date,
--t.amount,
--sum(amount) over(partition by user_id order by txn_date asc ,txn_id asc)AS cumulative_balance
--from transactions as t

--select t.user_id,count(distinct p.category) as distinct_categories
--from  transactions as t 
--inner join financial_products p on t.product_id = p.product_id
--group by t.user_id
--Having count(distinct p.category) >= 3


--select distinct t1.user_id from transactions as t1
--inner join transactions as t2 on t1.user_id = t2.user_id
--							 and t1.txn_date = t2.txn_date
--							 and t1.txn_id <> t2.txn_id
--							 where t1.channel<>t2.channel

	--with mounthly_join as (
	--select user_id,
	--MONTH(join_date) as join_month
	--from banking_users
	--where YEAR(join_date) =2025
	--)
	--select 
	--m.join_month,
	--count(distinct m.user_id) as  total_new_users,
	--COALESCE(SUM(t.amount), 0) AS total_transacted_volume
	--from mounthly_join m
	--left join transactions t on m.user_id = t.user_id
	--group by m.join_month
	--order by m.join_month

--select u.full_name,p.product_name,t.amount  from transactions as t 
--inner join financial_products as p on t.product_id =t.product_id
--inner join banking_users as u on t.user_id = u.user_id
--where t.amount > p.min_balance_required 

--select user_id,
--txn_id,
--amount,
--DENSE_RANK() OVER(PARTITION BY user_id ORDER BY AMOUNT DESC) as txn_rank 
--from transactions

--select u.user_id,t.txn_id,sum(t.amount) as amt   from transactions as t
--left join banking_users as u on u.user_id = t.user_id
--group by u.user_id,t.txn_id
--Order by amt desc
--SELECT t.channel,count(t.txn_id) as txn_id ,sum(t.amount) as amount FROM transactions as t
--inner join banking_users as u on t.user_id = u.user_id
--where  u.city in  ('New Delhi','Mumbai' )
--Group by t.channel

--select * from banking_users
--select * from financial_products
--select * from transactions

--SELECT column_name, data_type 
--FROM information_schema.columns 
--WHERE table_name = 'banking_users';

--SELECT column_name, data_type 
--FROM information_schema.columns 
--WHERE table_name = 'financial_products';

--SELECT column_name, data_type 
--FROM information_schema.columns 
--WHERE table_name = 'transactions';

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




