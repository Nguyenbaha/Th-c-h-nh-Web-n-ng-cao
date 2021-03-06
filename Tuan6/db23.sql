
create database Bai23
---- bài 23 final
use Bai23

create table tblHangsanxuat(
	PK_iHangsanxuat int identity(1,1) NOT NULL primary key,
	sTenhang nvarchar(255)
);
insert into tblHangsanxuat
values (N'Apple')
insert into tblHangsanxuat
values (N'Samsung')


create table tblDienthoai(
	PK_iDienthoaiID int identity(1,1) NOT NULL primary key,
	sTendienthoai nvarchar(255),
	mGiaban nvarchar(255),
	iSoluong int,
	sAnhUrl nvarchar(255),
	FK_iNhansanxuatID int,
	FOREIGN KEY (FK_iNhansanxuatID) REFERENCES tblHangsanxuat(PK_iHangsanxuat)
);



CREATE PROC sp_getHangsanxuat
AS
	BEGIN
		SELECT * FROM tblHangsanxuat 
	END




create proc sp_getDienthoai
as
begin
	select * from tblDienthoai 
		order by mGiaban desc
end

exec sp_getDienthoai

create proc sp_getDsHangdienthoai
	@hang int,
	@giadttu int,
	@giadtden int
as
begin
	if (@hang = 0)
			begin
				select * from tblDienthoai 
				where (@giadttu <= mGiaban) AND (mGiaban <= @giadtden) 
				order by mGiaban desc
			end
	else
			begin
				select * from tblDienthoai 
				where FK_iNhansanxuatID = @hang AND (@giadttu <= mGiaban) AND (mGiaban <= @giadtden) 
				order by mGiaban desc
			end
end
	

insert into tblDienthoai 
values(N'iphone 7',N'4000000',10,N'iphone.png',1)
insert into tblDienthoai 
values(N'Samsung',N'1000000',10,N'iphone.png',2)
insert into tblDienthoai 
values(N'iphone 7',N'1300000',10,N'iphone.png',1)
insert into tblDienthoai 
values(N'Samsung',N'1000000',10,N'iphone.png',2)
insert into tblDienthoai 
values(N'iphone 7',N'5000000',9,N'iphone.png',1)
insert into tblDienthoai 
values(N'iphone 7',N'1300000',8,N'iphone.png',1)
insert into tblDienthoai 
values(N'iphone 7',N'2300000',8,N'iphone.png',1)
insert into tblDienthoai 
values(N'Samsung',N'1000000',5,N'iphone.png',2)
insert into tblDienthoai 
values(N'Samsung',N'1500000',2,N'iphone.png',2)
insert into tblDienthoai 
values(N'Samsung',N'3333333',1,N'iphone.png',2)

select * from tblDienthoai 