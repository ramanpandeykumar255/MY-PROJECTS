-- creating and deleting databases
show databases;
create database blinkit;
show databases;
use blinkit;
select database();
show databases;
create database tech;
select database();
use tech;
show tables;
drop database blinkit;
show databases;
select database();
drop database tech;

-- Creating and deleting tables
create database instamart01;
select database();
use instamart01;
create table customer(
id int,
name varchar(255),
age float,
DOB date,
Lastlogin datetime,
mobile bigint,
registered boolean);
show tables;
describe customer;
create table product(
pcode int,
item_name varchar(255),
company char(6),
ExpireDate date,
YOM year,
price double,
quantity int,
ingridiant varchar(255)
);
show tables;
describe product;
show tables;
drop table customer;
drop table product;

-- alter
create database flip;
select database();

use flip;
show tables;

drop table students;

create table stuents1(
id int not null unique primary key,
name varchar(255) not null default "unknown",
age int not null,
class int not null
);

show tables;
describe stuents1;

-- DML 

-- insert

-- data insert approch 1

insert into stuents1 
(id, name, age, class)
values
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3, 'jatin', 14, 8);


select * from stuents1;

-- approcah 2

insert into stuents1
values
(4, 'shweta', 19,12),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit',13,8);

select * from stuents1;

-- select 
select * from stuents1;
select  name, age from stuents1;
select name from stuents1;
select age, name, class, id from stuents1;

-- distinct - unique
select distinct(name) from stuents1;
select distinct name, age from stuents1;
select distinct age from stuents1;

-- limit,offset,orderby

select*from stuents1 limit 2;
select*from stuents1 limit 3 offset 3 ;
select * from stuents1 limit 2 offset 5 ;

select * from stuents1;
select*from stuents1 order by class asc;
select*from stuents1 order by class desc;
select*from  stuents1 order by class,age;
select * from stuents1 order by class desc,age;


-- where clause
select * from stuents1 where id = 5;
select * from stuents1 where name = "jatin";
select * from stuents1 where age > 14 ;
select * from stuents1 where class != 12;
select * from stuents1 where class <> 12; -- not equal to 

-- logical operators
select * from stuents1 where class >=11 and age > 17;
select * from stuents1 where class >=11 or age < 15;
select * from stuents1 where not name = "rohit";

select * from stuents1 where age between 13 and 17;

select * from stuents1 where name = "mohit" or name = "prateek" or name = "aparna";

-- in operator

select * from stuents1 ;
select * from stuents1 where name = "rohit";
select * from stuents1 where name like "j%";
select * from stuents1 where name like "%t";
select * from stuents1 where name like "%e__";
select * from stuents1 where name like "_r%";


use flip;
select * from stuents1 where name like "%ti%";



-- functions 
-- aggregate functions
-- min, max, count, sum, avg

select min(age) as minimum_age from stuents1;
select max(age) as maximum_age from stuents1;
select sum(age) total_age from stuents1;
select count(*) from stuents1;
select * from stuents1;

select avg(age) avg_age from stuents1;

-- string functions

select concat("hello" , " " , "world");
select database();
use flip;
select * from stuents1;
select concat("mr. " , name)from stuents1;
select concat("rohit " , "sharma");
select concat(name , " sales") from stuents1;
select length("computer");
select length(name) from stuents1;
select upper(name) from stuents1;
select lower("mobile"); 
select substring("abcdefgh", 3, 3);
select substring(name, 1, 3) from stuents1;
select trim("                 hello                    ");
select trim("hello           world");
select replace("MYSQL", "SQL", "Databse");
select replace(" I LOVE MY SQL ","MYSQL", "PYTHON");

-- Numeric Functions

select abs(45);
select abs(-60);
select ceil(4.2365);
select ceil(8.4569823);
select floor(5.23698);
select floor(8.9236598);
select round(4.36598);
select round(4.66598);
select round(4.56598);
select mod(12, 9);
select mod(15, 10);
select power(2, 3);
select pow(3,3);
select sqrt(36);
select sqrt(81);

-- Date and Time functionns 
select curdate();
select current_date();
select current_time();
select current_timestamp();
select curtime();
select now();
select date ("2026-04-25 14:35:06");
select datediff("2025-02-26","2025-01-01");
select adddate("2025-01-01",40);
select str_to_date("26-01-2025","%d-%m-%y");

-- control flow flow
select * from stuents1;
select*,
if(age>=15,"adult","teen")
from stuents1;
select*,if(class>=10,"higher","lower")from stuents1;

-- for multiple conditions case 
select*,
case 
   when age <=12 then "kid"
   when age<=18 then "teen"
   else "adult" end as age_status 
from stuents1;

create table marks1(
  id int not null,
  subject varchar(255) not null,
  marks int not null,
  primary key(id, subject)
  );
select * from marks1;
  
  describe marks1;
  
  insert into marks1
  values
(9, 'maths', 89),
(2, 'english', 75),
(1, 'maths', 91),
(4, 'science', 97),
(10, 'computer', 83),
(1, 'english', 55),
(3,'maths',58);

select * from marks1;
select * from stuents1;

select name, age , subject, marks
from stuents1 
join marks1
on stuents1.id = marks1.id;

select name, age , subject, marks
from stuents1 
inner join marks1
on stuents1.id = marks1.id;

select name, age , subject, marks
from stuents1 
left join marks1
on stuents1.id = marks1.id;
  
select name, age , subject, marks
from stuents1 
right join marks1
on stuents1.id = marks1.id;

select name, age , subject, marks
from stuents1 
left join marks1
on stuents1.id = marks1.id
union
select name, age , subject, marks
from stuents1 
right join marks1
on stuents1.id = marks1.id;


select stuents1.id, name, age , subject, marks
from stuents1 
join marks1
on stuents1.id = marks1.id;
 
 
select s.id, name, age , subject, marks
from stuents1 as s
join marks1 m
on s.id = m.id;

select * from stuents1;

select a.name, b.age, a.class
from stuents1 as a
join stuents1 as b
on a.id = b.id;

select a.name, b.age, a.class
from stuents1 as a
inner join stuents1 as b
on a.id = b.id;
 
 
 select a.name, b.age, a.class
from stuents1 as a
right join stuents1 as b
on a.id = b.id;
 
 
-- cross  join

select * from stuents1;
select * from marks1;

select name, age, subject, marks
from stuents1 s
cross join marks1;

-- nested quries / sub-quries

use flip;
select * from stuents1;
select name, age from stuents1 where age > (select round(avg(age), 1) as avag_age from stuents1);
-- in 
select name , age from stuents1 where class in (select class from stuents1 where class > 10);

select * from stuents1 where name is not null;


-- DCL
-- grant
-- revoke

select current_user();
create user "rohit123";
create user "mohit123" identified by "M123";
show grants for "rohit123";
grant select, update, insert, delete, drop on flip.* to "rohit123";
grant select, delete on amazon.* to "mohit123";
flush privileges;
show grants for "rohit123";
show grants for "mohit123";
revoke select, update, insert on flip.* from  "rohit123";
flush privileges;
drop user "rohit123";
revoke select on amazon.* from  'mohit123';
show grants for "mohit123";
drop user "mohit123";



select * from myiris