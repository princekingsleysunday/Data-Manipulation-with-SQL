create table customer(
customer_id varchar primary key,
	customer_name varchar,
	customer_tel varchar
);


create table product(
product_id varchar primary key,
	product_name varchar,
	category varchar,
	price numeric
);

create table orders(
constraint fk_customer foreign key (customer_id )references customer(customer_id),
constraint fk_product foreign key (product_id )references customer(product_id),
	orderdate date,
	quantity numeric,
	total_amount numeric

);


insert into product(product_id, product_name, category, price)
values('p01', 'Samsung Galaxy S20', 'Smartphone', 3299),
('p02', 'Asus Notebook', 'pc', 4599);
	

insert into customer(customer_id,customer_name,customer_tel) 
values('c01', 'Ali', 71321009),
	('c02', 'Asma', 77345823);
	
insert into orders(customer_id,product_id,orderdate,quantity,total_amount) 
values('c01','p02',null, 2, 9198),
	('c02', 'p01', '2022/02/12':: date, 1, 3299);



