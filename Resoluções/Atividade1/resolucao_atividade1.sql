##### Atividade1 ######

# Gerar um relatório com os valores tabelados dos produtos e com os valores realmente executados nas vendas, 
exibindo a diferença entre esses valores e exibir a quantidade de produtos vendido por venda.


select o.order_id, p.product_id, p.product_name as "Produto",o.quantity as "quantidade",
p.unit_price as "Preço tabelado",o.unit_price as "preço venda",
trunc((p.unit_price-o.unit_price),2) as "diferença"
from order_details o
inner join products p
on o.product_id = p.product_id
where o.unit_price < p.unit_price
order by "diferença" desc
