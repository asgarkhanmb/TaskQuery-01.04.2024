create table Teachers(
    [Id] int primary key identity(1,1),
	[Name] nvarchar(50)not null,
	[Surname] nvarchar(50) default 'XXXX',
	[Email] nvarchar(100) unique,
	[Age] int check(Age>=20)

)

insert into Teachers([Name],[Surname],[Age],[Email])
values('Cavid','Bashirov',30,'cavid@gmail.com'),
      ('Ulvi','Memmedli',21,'ulvi@gmail.com'),
	  ('Eli','Muradov',20,'eli@gmail.com')

select * from Teachers


create table Students(
    [Id] int primary key identity(1,1),
	[FullName] nvarchar(150)not null,
	[Age]int check (Age>15),
	[Address] nvarchar(50)
	
)


insert into Students([FullName],[Age],[Address])
values('Esgerxan Bayramov',27,'Yasamal'),
      ('Bahruz Eliyev',33,'Kurdaxani'),
	  ('Reshad Agayev',21,'Neftchiler')

select * from Students

select Count(*) as 'Student count' from Students

select [Name],[Surname] from Teachers where [Age]>20

select * from Teachers where [Email] like 'c%'






select * from Students where [Id]=2

select * from Teachers where [Id]=2

select * from Students where [Age]=(select MIn(Students.Age)from Students)

SELECT *FROM Students
ORDER BY [Age] desc


SELECT *FROM Teachers
ORDER BY [Age] desc