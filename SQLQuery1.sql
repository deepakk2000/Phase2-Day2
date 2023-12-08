create database ExerciseDb
use ExerciseDb
create table CompanyInfo(
CId int primary key,
CName varchar(50)
)
insert into CompanyInfo Values(1,'Samsung')
insert into CompanyInfo Values(2,'HP')
insert into CompanyInfo Values(3,'Apple')
insert into CompanyInfo Values(4,'Dell')
insert into CompanyInfo Values(5,'Toshiba')
insert into CompanyInfo Values(6,'Redmi')
select * from CompanyInfo

create table ProductInfo(
PId int primary key,
PName varchar(25),
PPrice float,
PMDate Date Not null,
CId int
foreign key(CId) References CompanyInfo(CId)
)
insert into ProductInfo (PId,PName,PPrice,PMDate,CId) values(101,'Laptop',55000.90,'2023-12-12',1),
(102,'Laptop',35000.90,'2023-12-12',2),
(103,'Mobile',15000.90,'2023-12-12',2),
(104,'Laptop',135000.90,'2023-12-12',3),
(105,'Mobile',65000.90,'2023-12-12',3),
(106,'Laptop',35000.90,'2023-12-12',5),
(107,'Mobile',35000.90,'2023-12-12',5),
(108,'Laptop',10000.90,'2023-12-12',3),
(109,'Mobile',85000.90,'2023-12-12',6),
(110,'Laptop',55000.90,'2023-12-12',1);
select * from ProductInfo

select CName,PName,PPrice,PMDate from CompanyInfo join ProductInfo ON CompanyInfo.CId=ProductInfo.CId;
select PName,CName,PPrice,PMDate from ProductInfo join CompanyInfo ON CompanyInfo.CId=ProductInfo.CId;
select CName,PName from CompanyInfo Cross join ProductInfo