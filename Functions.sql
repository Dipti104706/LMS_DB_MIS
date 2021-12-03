-------------Scalar Function------it return only single value
create function FamilyStatus(@parent_annual_sal as bigint)  
returns varchar(50)
begin
	declare @Status varchar(50);
	if @parent_annual_sal>300000
	begin 
		set @Status='High';
	end
	else
	begin
		set @Status='Moderate';
	end
	return @Status;
end

select dbo.FamilyStatus(45000);

----------Inline table values function------return table
create function get_ParentSalary(@salary int)
returns table
as                --- begin /end not used in inline--------
	return (select * from Fellowship_Candidates where parent_annual_sal<>@salary)

select * from dbo.get_ParentSalary(300000); --------give result which not equal to 300000
-------------can perform joins with function--------
select * from dbo.get_ParentSalary(300000) as P
inner join Candidate_Bank_Det as B
on P.id=B.candidate_id;

----------------Multiple Statement table-----------

 
