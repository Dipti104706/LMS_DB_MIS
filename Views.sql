-------------------complex  views----------
alter view vw_ForCandidate
as
SELECT A.*,B.addhaar_num FROM Fellowship_Candidates as A
INNER JOIN Candidate_Bank_Det as B
ON A.id = B.candidate_id;

-----------calling view---------
select * from vw_ForCandidate;

------------simple view------------
create view vw_ForInsertion
as
select * from User_Details;

-----------Using simple view we can insert,update,delete data in the table
insert into vw_ForInsertion values('Mangal@gmail.com','Mangala','Sutar','managaik@yu',7899564521,1);



