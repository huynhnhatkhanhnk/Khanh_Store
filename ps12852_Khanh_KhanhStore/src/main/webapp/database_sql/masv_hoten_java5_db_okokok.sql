
use master
go

drop database masv_hoten_asm_java5_ud03
go

CREATE DATABASE masv_hoten_asm_java5_ud03
go
use masv_hoten_asm_java5_ud03
go

CREATE TABLE accounts
(
	 username   varchar (50) primary key,
	 activated   bit  NOT NULL,
	 admin   bit  NOT NULL,
	 email   varchar (50) NULL,
	 fullname   nvarchar (50) NULL,
	 password   varchar (50) NULL,
	 photo   varchar (50) NULL,
)
GO
CREATE TABLE  categories (
	 id   varchar (10) primary key,
	 name   nvarchar (50) NULL,
)
go

CREATE TABLE  products (
	 id   int  IDENTITY(1,1) primary key,
	 available   bit  NULL,
	 createdate   date  NULL,
	 image   varchar (50) NULL,
	 name   nvarchar (50) NULL,
	 price   float  NULL,
	 categoryid   varchar (10) references categories(id)
)
go
CREATE TABLE  orders (
	 id   int  IDENTITY(1,1) primary key,
	 address   nvarchar (50) NULL,
	 createdate   date  NULL,
	 username   varchar (50) references accounts(username)
)
go

CREATE TABLE  orderdetails (
	 id   int  IDENTITY(1,1) primary key,
	 price   float  NULL,
	 quantity   int  NULL,
	 orderid   int  references orders(id),
	 productid   int  references products(id)
)
GO

select * from accounts
go
select * from categories
go
select * from products
go
select * from orders
go
select * from orderdetails
go


INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'danh muc 1')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'danh muc 2')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'3')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'5dsfsdfsd')


SET IDENTITY_INSERT [dbo].[products] ON 
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (2, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (3, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (4, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (5, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (6, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (7, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (8, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (9, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (10, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (11, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (12, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (13, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu khoai', 2, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (14, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu mi', 5, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (15, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'cu bap', 3, N'2')
SET IDENTITY_INSERT [dbo].[products] OFF

