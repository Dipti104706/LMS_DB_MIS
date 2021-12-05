--------------Transaction without stored procedure-------

------For successful commit-----
BEGIN TRY
    BEGIN TRANSACTION;
    ----insert into User_Details values('sam@gmail.com','Samiksha','jain','samuk@yu',7735231478,1);
	--insert into User_Details values('Shalini@gmail.com','Shalini','Roy','serjuik@yu',9938564521,1);  
    ----------------Non corelated single/simple nested quaries-----
	select * from Fellowship_Candidates where aggr_per=(select max(aggr_per) from Fellowship_Candidates);
	----------------Non corelated multiple nested quaries-----
	select * from Hired_Candidates where hired_city in (select hired_city from Hired_Candidates where first_name='Suchitra' or first_name='Dipti');
	---------Using in operator in place or or---
	select * from Hired_Candidates where hired_city in (select hired_city from Hired_Candidates where first_name in('Suchitra','Dipti'));
	--------Corelated Nested query---------selecting higest aggegate percentage(for second highest n=2(means where N-1=1))
	select * from Hired_Candidates E1 where 0=(select COUNT(aggr_per) from Hired_Candidates E2 where E2.aggr_per>E1.aggr_per);
	COMMIT TRANSACTION;  ------permanent save---- 
	Print 'Trasaction successfully done';
END TRY
BEGIN CATCH
	Rollback TRANSACTION;
        SELECT  
             ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage;  ---give error message----
END CATCH


-------For error ----------
BEGIN TRY
    BEGIN TRANSACTION;
	-------------trying to add same email id which already exists--- it will create exception and go to catch block
      insert into User_Details values('sam@gmail.com','Samiksha','jain','samuk@yu',7735231478,1);
    COMMIT TRANSACTION;  ------permanent save---- 
	Print 'Trasaction successfully done';
END TRY
BEGIN CATCH
	Rollback TRANSACTION;
        SELECT  
             ERROR_NUMBER() AS ErrorNumber  ----number of error that occured---
            ,ERROR_SEVERITY() AS ErrorSeverity  ---severity level of error----
            ,ERROR_STATE() AS ErrorState  ----state of error----
            ,ERROR_PROCEDURE() AS ErrorProcedure ----return name of SP--- 
            ,ERROR_LINE() AS ErrorLine  ---Line number----
            ,ERROR_MESSAGE() AS ErrorMessage;  ---give error message----
END CATCH

------Retrieve data from the table-----
select * from User_Details;


------------trasaction with save point-----
BEGIN TRY
    BEGIN TRANSACTION;
      insert into User_Details values('Shivani@gmail.com','Shivani','Gupta','shivmuk@yu',8855231478,1);
	  insert into User_Details values('Satya@gmail.com','Satya','Priya','satyaik@yu',7735564521,1);  
	  insert into User_Details values('Priyanka@gmail.com','Priyanka','Mohakud','pikuk@yu',7008564521,1);  
    COMMIT TRANSACTION;  ------permanent save---- 
	Print 'Trasaction successfully done';
END TRY
BEGIN CATCH
	Rollback TRANSACTION;
        SELECT 
            ERROR_MESSAGE() AS ErrorMessage;  ---give error message----
END CATCH

-------------------transaction with save point-----

BEGIN TRANSACTION;
    delete from User_Details where first_name='Satya';
	delete from User_Details where first_name='Shivani';
	SAVE TRANSACTION dlt_User;
	delete from User_Details where first_name='Priyanka';
---COMMIT TRANSACTION;  ------permanent save---- 

Rollback TRANSACTION dlt_User; ----it will undo dlt operation for priyanka only--
--Rollback TRANSACTION; ----it will undo all delete opeartion and restore all


