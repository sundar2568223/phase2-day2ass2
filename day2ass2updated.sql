create database ExerciseDb
Use ExerciseDb
create table Publisher
(PId int primary key,
Publisher nvarchar(50) unique not null)
insert into Publisher values (1001,'Soma sundar')

create table Category
(CId int primary key,
Category nvarchar(50) unique not null)
insert into Category values (1,'Information Technology')
insert into Category values (2,'Horrer')
insert into Category values (3,'Motivation')

create table Author
(AId int primary key,
Author nvarchar(50) unique not null)
insert into Author values (1,'Sravan')
insert into Author values (2,'Venkatesh')
insert into Author values (3,'Bargavi')

create table Book
(BId int primary key,
BName nvarchar(50) unique not null,
BPrice float not null,
AId int foreign key references Author,
PId int foreign key references publisher,
CId int foreign key references Category,
)
insert into Book values (1,'Java',575.50,1,1,1001)
insert into Book values (2,'.Net',625.251,1,1,1001)
insert into Book values (3,'python',700.00,1,1,1001)
insert into Book values (4,'The Devil in the Night',900.00,2,2,1001)
insert into Book values (5,'The Blank Village',700.00,2,2,1001)
insert into Book values (6,'Just a step for Success',700.00,3,3,1001)

select *from Publisher
select *from Category order by CId
select *from Author order by AId
select *from Book order by BId


