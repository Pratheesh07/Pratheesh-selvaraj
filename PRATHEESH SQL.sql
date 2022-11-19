# NULL CONSTRAINT 
create database guna_store;
use guna_store;
create table income_statement (S_no int auto_increment primary key , product varchar(20) not null, sales float (10)not null,profit int not null);
desc income_statement;
insert into income_statement (product,sales,profit) values( 'vegetables',500000,150000),
('grocery',800000,320000),
('stationery',100000,45000),
('feed',600000,250000),
('others',2000000,480000);
select*from income_statement;

# CREATING A VIEW
use guna_store;
create table Book_panda (columns_id int auto_increment primary key, product_name varchar(20), price_per_unit int , quantity int);
insert into Book_panda (product_name,price_per_unit,quantity) values('Trading_at_the_zone',250,52),('Intelligent_investor',390,42),('Psychology_of_money',290,38),('Rich_dad_poor_dad',350,68);
create view myview as select price_per_unit*quantity as total_sales, product from Book_panda;
select*from Book_panda;

# SUM OF AGES
create database mobile;
use mobile;
create table info ( id int auto_increment primary key,name varchar(20),age int);
insert into info (name,age) values( 'Bob',21),('Sam',19),('Jill',18),('Jim',21),('Sally',19),('Jess',20),('Will',21);
select* from info;
select sum(age) from info;

# GROUP BY AGES
use mobile;
create table info ( id int auto_increment primary key,name varchar(20),age int);
insert into info (name,age) values( 'Bob',21),('Sam',19),('Jill',18),('Jim',21),('Sally',19),('Jess',20),('Will',21);
select age,count(age) from info group by age;


# POSITIVE REVENUE
create database panda;
use panda;
create table annual_revenue(Division_id int,Year int, Revenue int);
insert into annual_revenue values(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select * from annual_revenue;
select Division_id from annual_revenue where revenue > 0 and year = 2021;




