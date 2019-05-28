-- alter table CUSTOMERS
-- drop column POINTS,
-- ADD column LAST_NAME varchar(55) NOT null after FIRST_NAME,
-- modify column FIRST_NAME varchar(55) not null default '';

-- alter table ORDERS
-- add primary key (ORDER_ID),
-- drop primary key,
-- DROP foreign key FK_ORDERS_CUSTOMERS,
-- ADD foreign key FK_ORDERS_CUSTOMERS (CUSTOMER_ID)references customers(CUSTOMER_ID)
-- on update cascade
-- ON delete no action;

SHOW char set;
SHOW ENGINES;