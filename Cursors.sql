-------Explicit cursor----------
----------without using cursor name----
---Declare cursor---
declare Mycursor cursor
scroll for select * from User_Details
-----Opening cursor-----
open Mycursor;
--------Fetch data--------
fetch first from Mycursor; --show id 1 values--
fetch next from Mycursor;--show id=2 as id 1 retrieved its next id will give
fetch last from Mycursor;
fetch prior from Mycursor; ---give previous record id =last 's previous data give
fetch absolute 4 from Mycursor;---4th row
fetch relative 2 from Mycursor;----give 4+2=6 will give[if -1,4-1=3]
------close------
close Mycursor
-----------deallocate cursor----
deallocate Mycursor


---------------With cursor variable--------
declare Retrievecursor cursor scroll for select email from User_Details
declare @candidateEmail varchar(50);
-----Opening cursor-----
open Retrievecursor;
--------Fetch data--------
fetch first from Retrievecursor into @candidateEmail; 
print 'Candidate email: ' +cast(@candidateEmail as varchar(50))
------close------
close Retrievecursor
-----------deallocate cursor----
deallocate Retrievecursor
