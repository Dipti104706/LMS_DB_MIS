use CPULog;

select * from dbo.[CpuLogData2019-11-17-new];
--------------------Create index-------------
create index in_retrieveCPU   -------it create a non cluster index
on dbo.[CpuLogData2019-11-17-new](cpu_avg_load_over_5_min Asc); -----sorting in ascending order----
-----select * , after using index to that column----
select * from dbo.[CpuLogData2019-11-17-new]
where cpu_avg_load_over_5_min>1 and cpu_avg_load_over_5_min<1.5;

-----------------Seeing the time slabs , of cpu taken to retrieve data from the table----
SET STATISTICS IO ON
SET STATISTICS TIME ON
select * from dbo.[CpuLogData2019-11-17-new]
where cpu_avg_load_over_5_min>1 and cpu_avg_load_over_5_min<1.5;
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

--------------------Clustered index--------
use LMSdata;
create clustered index In_cluster
on Candidates_Education_Det_Check(id Asc,field_name Asc); ----multiple columns-----

select * from Candidates_Education_Det_Check;

---------Non-clustered index----------
create nonclustered index NCI_getcpudata
on  dbo.[CpuLogData2019-11-17-new](user_name Asc);

----to view allindexes by query use stored procedure --
sp_helpindex [CpuLogData2019-11-17-new];