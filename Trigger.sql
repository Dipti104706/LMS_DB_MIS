----------------DML triggers------with after trigger----
create trigger tr_HiredInsertDeleteUpdate
on Fellowship_Candidates
after Insert,update,delete
as
begin
	print 'Something changed';
	--for insert ---select * from inserted---
end

---inserting data----
insert into Fellowship_Candidates values('Mitali', '', 'Panda', 'mitu@gmail.com ',
					8856749596, 'Mumbai','2021-07-02','B.Tech',65.66, 769015,755478,'Bangalore', 'Good', 'Good' , 'Good', '1996-12-08', 1, 'Krushna', 'Business' , 7772862577, 800000, 'Rkl', 'Rkl' , 'photo_path', '2021-07-16', 'Good',
					1, 1, 1, 'Correct', 'Good', null, 1);

---------------------------------Instead of trigger-------------------------
Create TRIGGER insertTrigger
ON User_Roles
INSTEAD OF INSERT
AS
BEGIN
	print 'Can not add values'
End

------------------DDL trigger---on db-----------
Create TRIGGER DBtrigger
ON database
for create_table,alter_table,drop_table
AS
BEGIN
	print 'Not allowed in this DB'
End





