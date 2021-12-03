------------------create stored procedure for TCL--------
CREATE PROC spTestTransaction
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		insert into User_Details values('santy@gmail.com','Shanti','kin','samuk@yu',9935231478,1);
		insert into User_Details values('Ruby@gmail.com','Pihu','Rink','pihukiik@yu',7737564521,1);  
		insert into User_Details values('susmi@gmail.com','Susmita','nayak','saik@yu',8895231478,1); 
		-- if insert succeeds, commit the transaction
		COMMIT TRANSACTION;  
	END TRY
	BEGIN CATCH
		-- report exception----
		EXEC usp_report_error;
        
		-- Test if the transaction is uncommittable.  
		IF (XACT_STATE()) = -1  
		BEGIN  
			PRINT 'The transaction is in an uncommittable state.' +  
					'Rolling back transaction.'  
			ROLLBACK TRANSACTION;  
		END;  
        
		-- Test if the transaction is committable.  
		IF (XACT_STATE()) = 1  
		BEGIN  
			PRINT 'The transaction is committable.' +  
				'Committing transaction.'  
			COMMIT TRANSACTION;     
		END;  
	END CATCH
END;

Exec spTestTransaction;

---------------delete transaction----------
create PROC spDeleteTransaction(
	@name varchar(50)
)AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		delete from User_Details where first_name=@name;
		-- if insert succeeds, commit the transaction
		COMMIT TRANSACTION;  
	END TRY
	BEGIN CATCH
		-- report exception----
		EXEC usp_report_error;
        
		-- Test if the transaction is uncommittable.  
		IF (XACT_STATE()) = -1  
		BEGIN  
			PRINT 'The transaction is in an uncommittable state.' +  
					'Rolling back transaction.'  
			ROLLBACK TRANSACTION;  
		END;  
        
		-- Test if the transaction is committable.  
		IF (XACT_STATE()) = 1  
		BEGIN  
			PRINT 'The transaction is committable.' +  
				'Committing transaction.'  
			COMMIT TRANSACTION;     
		END;  
	END CATCH
END;

Exec spDeleteTransaction 'Priyanka'; 

------------Transaction with error------------
CREATE PROC spTestTransactionError
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		---Inserting same data which already exist , it rise exception
		insert into User_Details values('santy@gmail.com','Shanti','kin','samuk@yu',9935231478,1);
		-- if insert succeeds, commit the transaction
		COMMIT TRANSACTION;  
	END TRY
	BEGIN CATCH
		-- report exception----
		EXEC usp_report_error;
        
		-- Test if the transaction is uncommittable.  
		IF (XACT_STATE()) = -1  
		BEGIN  
			PRINT 'The transaction is in an uncommittable state.' +  
					'Rolling back transaction.'  
			ROLLBACK TRANSACTION;  
		END;  
        
		-- Test if the transaction is committable.  
		IF (XACT_STATE()) = 1  
		BEGIN  
			PRINT 'The transaction is committable.' +  
				'Committing transaction.'  
			COMMIT TRANSACTION;     
		END;  
	END CATCH
END;

Exec spTestTransactionError;----giving Violation of Unique key----













----------------creating procedure for errors ------will used in catch block--------
CREATE PROC usp_report_error
AS
begin
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_LINE () AS ErrorLine  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_MESSAGE() AS ErrorMessage;  
end