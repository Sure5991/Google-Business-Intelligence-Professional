-- stored procedure for inserting data into tripdata from specified table

drop procedure if exists insert_data
go
create procedure insert_data @table_name varchar(50)
as
begin
	set nocount on;
	declare @sql nvarchar(max);
	set @sql = 'insert into #temptripdata select * from' + QUOTENAME(@table_name) + ';';
	exec sp_executesql @sql;
end;
go

-- sql program for inserting data from table list to tripdata for analysis

drop procedure if exists table_insertion
go
create procedure table_insertion @text varchar(20)
as
begin
	set nocount on
	-- variable for table name for data insertion and list of tables
	declare @tablename varchar(50);
	declare @table_list table (tablename varchar(50))

	-- list of specific tables
	insert into @table_list(tablename)
	select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA = 'dbo' and TABLE_NAME like '%' + @text + '%'

	-- to extract the table name for inserting data from specific tables to tripdata

	declare tablecursor cursor for
	select tablename from @table_list
	open tablecursor
	fetch next from tablecursor into @tablename

	while @@fetch_status = 0
	begin
		exec insert_data @table_name = @tablename;
		print @tablename
		fetch next from tablecursor into @tablename
	end
	close tablecursor
	deallocate tablecursor
end;

-- Manipulation of temptripdata table

exec table_insertion @text = '2023';
select * into #temptripdata from tripdata202405;
select top 100 * from #temptripdata;
truncate table #temptripdata;
drop table #temptripdata;

-- SQL for checking duplicate ride

select ride_id, count(*) from #temptripdata group by ride_id having count(*) > 1; -- there is no duplicate rides

-- SQL for checking null values

SELECT
    SUM(CASE WHEN ride_id IS NULL THEN 1 ELSE 0 END) AS NullRideID,
    SUM(CASE WHEN rideable_type IS NULL THEN 1 ELSE 0 END) AS NullRideableType,
    SUM(CASE WHEN started_at IS NULL THEN 1 ELSE 0 END) AS NullStartedAt,
    SUM(CASE WHEN ended_at IS NULL THEN 1 ELSE 0 END) AS NullEndedAt,
    SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS NullStartLat,
    SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS NullStartLng,
    SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS NullEndLat,
    SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS NullEndLng,
    SUM(CASE WHEN member_casual IS NULL THEN 1 ELSE 0 END) AS NullMemberCasual
FROM 
    #temptripdata;

-- SQL for extracting date and time separately

drop table  if exists tripdata_final
go
With tripdata as
(
SELECT
    ride_id, 
    rideable_type,
	CAST(started_at as DATE) as startdate,
	CAST(ended_at as DATE) as enddate,
	DATEDIFF(MINUTE,started_at,ended_at) as tripduration,
	ROUND(start_lat, 2) AS start_lat,
    ROUND(start_lng, 2) AS start_lng,
    ROUND(end_lat, 2) AS end_lat,
    ROUND(end_lng, 2) AS end_lng,
    member_casual
FROM 
    #temptripdata
	)
select * 
into tripdata_final
from tripdata;

-- clean data
select max(start_lng), min(start_lng) from tripdata_final;
select * from zipcode;

-- merging zipcode data with trip data
WITH zipcodes AS
(
    SELECT
        zip,
        borough,
        neighborhood,
        geometry::STGeomFromText(zip_code_geom, 0) AS location
    FROM zipcode
)
SELECT
    TRI.member_casual,
    ZIPSTART.zip AS zip_code_start,
    ZIPSTART.borough AS borough_start,
    ZIPSTART.neighborhood AS neighborhood_start,
    ZIPEND.zip AS zip_code_end,
    ZIPEND.borough AS borough_end,
    ZIPEND.neighborhood AS neighborhood_end,
    TRI.startdate,
    TRI.enddate,
    TRI.tripduration,
    COUNT(TRI.ride_id) AS trip_count
FROM
    tripdata_final AS TRI
INNER JOIN
    zipcodes AS ZIPSTART
    ON geometry::Point(TRI.start_lng, TRI.start_lat, 0).STWithin(ZIPSTART.location) = 1
INNER JOIN
    zipcodes AS ZIPEND
    ON geometry::Point(TRI.end_lng, TRI.end_lat, 0).STWithin(ZIPEND.location) = 1
GROUP BY
    TRI.member_casual,
    ZIPSTART.zip,
    ZIPSTART.borough,
    ZIPSTART.neighborhood,
    ZIPEND.zip,
    ZIPEND.borough,
    ZIPEND.neighborhood,
    TRI.startdate,
    TRI.enddate,
    TRI.tripduration;
    







    





