Create Database PRT_12
Go

Use PRT_12
Go

Create Table [Employee] (
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) Not Null,
	[DepartmantID] [int] Null,
	[Photo] [nvarchar](50) Not null,
	[EmployeeUser] [nvarchar](10) Not null,
	[EmployeePass] [nvarchar](10) Not Null,
CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go

Create Table [Salary] (
	[SalaryID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[title] [nvarchar](50) Not Null,
	[Salary] [bigint] not Null,
	[JoinDate] [date]null,
	
CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[SalaryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go

Create Table [Image] (
	[ImageID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ImageDate] [date] Not null,
	[ImageLogin] [nvarchar](50) Not null,
	
CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go

Create Table [LGPS] (
	[LocationID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[LocationDate] [datetime] Not null,
	[Latitudes] [decimal](10,6) Not null,
	[Longitudes] [decimal](10,6) Not null,
	
CONSTRAINT [PK_LGPS] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go



Create Table [Department] (
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[Depts] [nvarchar](50) Not NUll,
	
CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
Go



INSERT INTO [Department]([DepartmentID],[DepartmentName],[Depts])
VALUES (1,'Human Resource Management','HR'),
(2,'Accounting and Finance','A&Fi'),
(3,'Research and Development','R&D'),
(4,'IT','IT'),
(5,'Sercurity and Cleaning','SECL')

INSERT INTO [Employee]([EmployeeID],[EmployeeName],[DepartmantID],[Photo],[EmployeeUser],[EmployeePass])
Values (1,'Ciyo',null,'Ciyo.img','CEO000001','CEO000001'),
(2,'Jacky',1,'Jacky.img','HR000002','HR000002'),
(3,'Kemie',1,'Kemie.img','HR000003','HR000003'),
(4,'Gen',2,'Gen.img','AFI000004','AFI000004'),
(5,'Vee',3,'Vee.img','RND000005','RND000005'),
(6,'Pensas',4,'Pensas.img','IT000006','IT000006'),
(7,'Netsa',5,'Netsa.img','SECL000007','SECL000007'),
(8,'Weat',5,'Weat.img','SECL000008','SECL000008'),
(9,'Qeat',2,'Qeat.img','AFI000009','AFI000009'),
(10,'Zasx',3,'Zasx.img','RND000010','RND000010')

Insert Into [Salary]([SalaryID],[EmployeeID],[title],[Salary],[JoinDate])
Values (1,1,'Full-Time',174589,'2000/2/13'),
(2,2,'Full-Time',174589,'2021/1/13'),
(3,3,'Full-Time',145089,'2021/1/14'),
(4,4,'Full-Time',166589,'2021/2/23'),
(5,5,'Full-Time',104029,'2021/2/1'),
(6,6,'Full-Time',114532,'2021/1/3'),
(7,7,'Part-Time',80147,'2021/4/13'),
(8,8,'Part-Time',94963,'2021/4/23'),
(9,9,'Part-Time',54123,'2021/4/30'),
(10,10,'Part-Time',69589,'2021/3/31')



Insert Into [Image]([ImageID],[EmployeeID],[ImageDate],[ImageLogin])
Values (1,1,'2021/4/20','001.image'),
(2,10,'2021/4/20','002.image'),
(3,7,'2021/4/20','003.image'),
(4,8,'2021/4/20','004.image'),
(5,9,'2021/4/20','005.image')


Insert Into [LGPS]([LocationID],[EmployeeID],[LocationDate],[Latitudes],[Longitudes])
Values (1,1,'2021/4/20',10.756966,106.699208),
(2,7,'2021/4/20',10.756456,106.699985),
(3,8,'2021/4/20',10.756213,106.699652),
(4,7,'2021/4/20',10.756985,106.699214),
(5,8,'2021/4/20',10.756462,106.699456)
