create database Bai24

use Bai24

create table tblUsers(
	PK_iUserID int identity(1,1) NOT NULL primary key,
	sUserName nvarchar(255),
	sPassword nvarchar(255),
	iLoginTimes int
);
insert into tblUsers
values (N'Nguyen Van A', N'12345',40)
insert into tblUsers
values (N'Nguyen Thi B', N'123456745',50)
 create table tblNews(
	PK_iNewsID int identity(1,1) NOT NULL primary key,
	sTitle nvarchar(255),
	sAbstract nvarchar(255),
	sContent nvarchar(255),
	tPostedDate date,
	iViewTimes int,
	bIsAproved bit,
	FK_iUserID int
	FOREIGN KEY (FK_iUserID) REFERENCES tblUsers(PK_iUserID)
 )
insert into tblNews
values (N'Tin tức 1', N'APP', N'Tin tức 1',null,50,0, 1)
insert into tblNews
values (N'Tin tức 2', N'APP', N'Tin tức 2',null,60,0, 1)
insert into tblNews
values (N'Tin tức 3', N'APP', N'Tin tức 3',null,20,0, 1)
insert into tblNews
values (N'Tin tức 4', N'APP', N'Tin tức 4',null,60,0, 2)

 create table tblCategories(
	PK_iCategoryID int identity(1,1) NOT NULL primary key,
	sCategoryName nvarchar(255),
	sDescription nvarchar(255)
 )
create table tblNewsCategory(
	PK_iNewsCategory int identity(1,1) NOT NULL primary key,
	FK_iCategoryID int,
	FK_iNewsID int
	FOREIGN KEY (FK_iCategoryID) REFERENCES tblCategories(PK_iCategoryID),
	FOREIGN KEY (FK_iNewsID) REFERENCES tblNews(PK_iNewsID)
)
 
insert into tblCategories 
values (N'Giáo dục', N'giáo dục')
insert into tblCategories 
values (N'Y Tế', N'y tế')
insert into tblCategories 
values (N'Kinh tế', N'kinh tế')
insert into tblCategories 
values (N'Xã hội', N'Xã hội')
insert into tblCategories 
values (N'Trường học', N'Trường học')
select *from tblNewsCategory


insert into tblNewsCategory
values (1,1)
insert into tblNewsCategory
values (2,1)
insert into tblNewsCategory
values (2,2)
insert into tblNewsCategory
values (2,3)
insert into tblNewsCategory
values (3,3)



 