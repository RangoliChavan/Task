
Create Database OtobitTask

use OtobitTask

Create TABLE UserTable(
UserId int identity(1,1),
UserName varchar(50),
EMail varchar(50),
Password Varchar(50),
)



Create Proc SubmitDetails
@UserName Varchar(50),
@EMail varchar(50),
@Password varchar(50)
as
begin

insert into UserTable (UserName,EMail,Password)
values(@UserName,@EMail,@Password)
end 


alter proc UpdateEmail
@UserId int, 
@EMail varchar(50)
as
begin
update UserTable set UserId=@UserId ,EMail=@EMail
end

select * from UserTable

create proc [dbo].[GetEmpUserByID]
@UserID int
as
begin
select * from UserInfo where UserID=@UserID
end
GO

alter proc Get_ProfileData

as
begin
select * From UserTable 
end
GO

create proc GetUserIDName
as
begin
select UserId,UserName from UserTable
end
GO