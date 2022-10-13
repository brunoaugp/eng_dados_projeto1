### Atividade2 ###
# Agrupar o valor das vendas dos vendedores no ano de 2022 para analisar o desempenho de um deles 


select e.first_name+' '+e.last_name as nome,
trunc(sum((od.unit_price*od.quantity-od.discount)),2) as "Vendas total"
from order_details od
inner join orders o
on od.order_id=o.order_id
inner join employees e
on o.employee_id=e.employee_id
where date_part_year(o.order_date) = 2022
group by nome
order by "vendas total" desc

