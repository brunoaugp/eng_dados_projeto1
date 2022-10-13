### Atividade 3 ###
#Selecionar os 10 produtos que tem o preço mais alto

select product_id,product_name,unit_price
from products
order by unit_price desc
limit 10