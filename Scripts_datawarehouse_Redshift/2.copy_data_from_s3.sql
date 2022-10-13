copy categories 
from 's3://northwindocopy/categories.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy customers
from 's3://northwindocopy/customers.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy employees 
from 's3://northwindocopy/employees.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy order_details 
from 's3://northwindocopy/orderdetails.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy orders 
from 's3://northwindocopy/orders.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy products 
from 's3://northwindocopy/products.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy shippers 
from 's3://northwindocopy/shippers.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy suppliers 
from 's3://northwindocopy/suppliers.csv' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

