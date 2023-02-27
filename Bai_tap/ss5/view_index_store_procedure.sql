drop database if exists demo;
create database demo;
use demo;
  
  create table products(
  id int primary key,
  product_code int,
  product_name varchar(45),
  product_price double,
  product_amount int,
  product_description text,
  product_status bit default 1
  );
  
  insert into products(id, product_code, product_name, product_price, product_amount, product_description, product_status)
  values (1, 1, `Nhông xên đĩa`, 450000, 10, `mới ken, không trầy sước`,1),
  (2,2,`bánh cam titan`, 2500000, 5, `Hàng mới nhập`,1),
  (3,3,`phuộc ohlins`, 25000000, 3, `Hàng mới nhập, 1 đã qua sử dụng`,1),
  (4,4,`mâm cnc`,2100000, 4, `Hàng pass lại`,1),
  (5,5,`lốp maxxis`,1920000,2,`Còn tem`,1);
  
  