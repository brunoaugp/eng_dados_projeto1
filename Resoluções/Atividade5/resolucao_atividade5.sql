### Atividade 5 ###
# Selecionar as 5 categorias que mais venderam em cada ano

with res_parc as(
select c.category_name as categoria, trunc(sum(od.unit_price*od.quantity-od.discount),2) as total, date_part_year(o.order_date) as ano,
row_number() over (partition by ano order by ano, total desc) as res
from categories c

inner join products p
on c.category_id=P.category_id
inner join order_details od
on od.product_id=p.product_id
inner join orders o
on od.order_id=o.order_id

group by categoria,ano
order by ano, total desc)

select*from res_parc where res<=5