-- challange --

-- TASK 1 --
create database stylecar_db;
use stylecar_db;

-- TASK 2 --
CREATE TABLE salespersons (
    salespersonid INT PRIMARY KEY,
    salesperson_name CHAR(50),
    salesperson_city CHAR(50),
    commission_rate INT
);

CREATE TABLE customers (
    customerid INT PRIMARY KEY,
    c_lastname VARCHAR(50),
    c_firstname VARCHAR(50),
    c_city VARCHAR(255),
    c_rating INT
);

CREATE TABLE orders (
    orderid INT PRIMARY KEY,
    amount INT,
    orderdate CHAR(50),
    salespersonid INT,
    customerid INT,
    FOREIGN KEY (salespersonid)
        REFERENCES salespersons (salespersonid),
    FOREIGN KEY (customerid)
        REFERENCES customers (customerid)
);
-- TASK 3 --
INSERT INTO salespersons (salespersonid, salesperson_name, salesperson_city, commission_rate)
VALUES 
    (1001, 'William', 'New York', 12),
    (1002, 'Liam', 'New Jersey', 13),
    (1003, 'Axelrod', 'San Jose', 10),
    (1004, 'James', 'San Diego', 11),
    (1005, 'Fran', 'Austin', 26),
    (1007, 'Oliver', 'New York', 15),
    (1008, 'John', 'Atlanta', 2),
    (1009, 'Charles', 'New Jersey', 2);
    select * from salespersons ;
    
INSERT INTO customers (customerid, c_lastname, c_firstname, c_city, c_rating)
VALUES 
    (2001, 'Hoffman', 'Anny', 'New York', 1),
    (2002, 'Giovanni', 'Jenny', 'New Jersey', 2),
    (2003, 'Liu', 'Williams', 'San Jose', 3),
    (2004, 'Grass', 'Harry', 'San Diego', 3),
    (2005, 'Clemens', 'John', 'Austin', 4),
    (2006, 'Cisneros', 'Fanny', 'New York', 4),
    (2007, 'Pereira', 'Jonathan', 'Atlanta', 3);
      select * from customers;
INSERT INTO orders (orderid, amount, orderdate, salespersonid, customerid)
VALUES 
    (3001, 23, '2020-02-01', 1009, 2007),
    (3002, 20, '2021-02-23', 1007, 2007),
    (3003, 89, '2021-03-06', 1002, 2002),
    (3004, 67, '2021-04-02', 1004, 2002),
    (3005, 30, '2021-07-30', 1001, 2007),
    (3006, 35, '2021-09-18', 1001, 2004),
    (3007, 19, '2021-10-02', 1001, 2001),
    (3008, 21, '2021-10-09', 1003, 2003),
    (3009, 45, '2021-10-10', 1009, 2005);
      select * from orders;
	-- TASK 4 --
update salespersons set commission_rate = 15 where commission_rate < 15;
set sql_safe_updates = 0;



