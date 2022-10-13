###  Atividade 4 ###

#Mostar a quantidade de vendas total por fornecedor nos anos de 2021 e 2020 
# me posteriormente a diferença entre o total de vendas desses anos 

with r2021 as (
select s.supplier_id as id, s.company_name as supplier, trunc(sum(od.unit_price*od.quantity-od.discount),2) as total
from suppliers s
inner join products p 
on p.supplier_id=s.supplier_id
inner join order_details od
on od.product_id = p.product_id
inner join orders o
on o.order_id = od.order_id
where date_part_year(o.order_date) = 2021
group by id,supplier),

r2020 as (
select s.supplier_id as id, s.company_name as supplier, trunc(sum(od.unit_price*od.quantity-od.discount),2) as total
from suppliers s
inner join products p 
on p.supplier_id=s.supplier_id
inner join order_details od
on od.product_id = p.product_id
inner join orders o
on o.order_id = od.order_id
where date_part_year(o.order_date) = 2020
group by id,supplier),

ambas as (
select r2021.id,r2021.supplier,r2021.total as "total 2021", r2020.total as "total 2020", trunc((r2021.total-r2020.total),2) as "diferenca"
from r2021
inner join r2020 
on r2021.id=r2020.id
order by diferenca desc)

select * from ambas









