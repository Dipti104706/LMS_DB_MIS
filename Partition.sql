select * from [CpuLogData2019-11-17-new];

select technology, COUNT(user_name) as Number_of_Dev
from [CpuLogData2019-11-17-new]
group by technology;

--------------Partitioning cpu log wrt technology--------
----------create partitioning function-----------
create partition function [CPU_COUNT_PF](int) as Range left for
values (N'2',N'4')

--------create partition schemes-------which file group it store that partition
create partition SCHEME [CPU_COUNT_PS] as partition [CPU_COUNT_PF] to ([Primary],[Primary],[Primary]); --3 groups defined , two for less than equal 2,3, other is for value other than that range that will store at--
 
---checking for partition created or not--
Select o.name objectname,i.name indexname,partition_id, partition_number,[rows]
from sys.partitions p
Inner join sys.objects o ON o.object_id=p.object_id
inner join sys.indexes i on i.object_id=p.object_id and p.index_id=i.index_id
where o.name Like '%[CpuLogData2019-11-17-new]%'

--------create index name for partition---
Create clustered index [Index_CPU_count] on [CpuLogData2019-11-17-new]
(
	[Cpu_Count]
) on [CPU_COUNT_PS] ([Cpu_Count])

-----We can apply this partition in other table------
--create table Demo(Id int)
---on [CPU_COUNT_PS](Id)----
