--------------Stored procedure without parameter-----------
Create Procedure spRetrieveUserDetails
as
BEGIN
	select * from User_Details;
END

Exec spRetrieveUserDetails;

--------------Stored procedure with multiple parameters-------
Create procedure spGetUserDetails
	@id int,
	@first varchar(50)
as
Begin
	select * from User_Details where id=@id and first_name=@first;
End

Exec spGetUserDetails 1,'Dipti';

-------To see code of any Stored procedure----
sp_helptext spGetUserDetails;

------Stored procedure with encryption----------
Create procedure spGetPhonenumberfromUserDetails
	@id int,
	@first varchar(50)
	with encryption ----now sp is encrypted we cant see code using helptext
as
Begin
	select contact_number from User_Details where id=@id and first_name=@first;
End

Exec spGetUserDetails 1,'Dipti';