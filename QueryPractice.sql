create table Groups(
   [Id] int,
   [Name] nvarchar(50)
)

create table Students(
    [Id] int,
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Age]int
)

drop table Groups

alter table Students
add [Address]nvarchar(200)

alter table Students
drop column [Address]

EXEC sp_rename Students,MyStudents

EXEC sp_rename MyStudents,Students

EXEC sp_rename 'Students.Surname',Lastname


EXEC sp_rename 'Students.Lastname',Surname


select * from Students 
insert into Students([Id],[Name],[Surname],[Age])
values(1,'ILqar','Shiriyev',26),
      (2,'Reshad','Agayev',21),
	  (3,'Kamran','Muradov',24),
	  (4,'Hacixan','Hacixanov',19),
	  (5,'Zeyqem','Ashurov',39)

delete from Students where [Id]=1

insert into Students([Id],[Name],[Surname],[Age])
values(1,'Ilqar','Shiriyev',26)



Update Students 
set [Age]=25
where[Id]=5

select * from Students 

select [Name],[Surname] from Students

select [Age] as 'Student age' from Students

select Count(*) as 'Student count' from Students

select AVG ([Age]) as 'Student age avg' from Students

select Sum ([Age]) as 'Student age sum' from Students

select Min ([Age]) as 'Students Min age' from Students

select Max ([Age]) as 'Students Max age' from Students

select * from Students where [Id]=3

select * from Students where [Id]>3

select * from Students where [Id]>2 and [Id]<5

select * from Students where [Age] between 25 and 38

select * from Students where [Name] like 'r%'

select * from Students where [Age]=(select MIn(Students.Age)from Students)

DECLARE @age int 
SET @age=(select Min(Age) from Students)
select * from Students where [Age]=@age

SELECT *FROM Students
ORDER BY [Age] desc

SELECT SUBSTRING((select [Name]from Students where [Id]=3),1,3)As ExtractString;

DECLARE @resultName nvarchar(50)
set @resultName=(select [Name] from Students where [Id]=3)
SELECT SUBSTRING (@resultName,1,3)As ExtractString;

select LEN([Name])from Students where [Id]=3



select SUBSTRING([Name],1,4) from Students



create table Employees(
    [Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50) default 'XXX',
	[Age]int check (Age>=18),
	[Email] nvarchar(100)unique
)


insert into Employees([Name],[Surname],[Age],[Email])
values('Hacixan','Hacixanov',19,'hacixan@gmail.com')

select * from Employees



