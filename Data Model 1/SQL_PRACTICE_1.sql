CREATE DATABASE IF NOT exists sql_store;
use sql_store;
drop table if exists orders;
drop table if exists customers;

create table if not exists customers(
customer_Id int primary key auto_increment,
first_name varchar(50) not null,
-- last_name varchar(50) not null,
birth_date datetime not null,
email varchar(255) not null unique,
phone varchar(10),
address varchar(200),
-- city varchar(20) not null,
points int(20) not null default 0,
state VARCHAR(10) not null, -- VARIES, LESS MEMORY, NOT FIXED (MAX:65535)
CHAR1 CHAR(10), -- FIXED LENGTH
TEXT3 TINYTEXT, -- (MAX:255 BYTES)
TEXT1 TEXT, -- (MAX:64 KB)
TEXT2 MEDIUMTEXT, -- (MAX:16 mb)
TEXT4 LONGTEXT -- -- (MAX:4 Gb)
);

create table if not exists orders(
order_id int primary key,
customer_id int not null,
foreign key fk_orders_customers(customer_id)
references customers(customer_id)
on update cascade
on delete no action
);
