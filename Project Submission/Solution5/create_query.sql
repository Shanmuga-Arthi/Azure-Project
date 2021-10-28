--Create a data source table
create table data_source_table
 (
 	PersonID int,
 	Name varchar(255),
 	LastModifytime datetime
 );
 INSERT INTO data_source_table
 (PersonID, Name, LastModifytime)
 VALUES
 (1, 'aaaa','9/1/2017 12:56:00 AM'),
 (2, 'bbbb','9/2/2017 5:23:00 AM'),
 (3, 'cccc','9/3/2017 2:36:00 AM'),
 (4, 'dddd','9/4/2017 3:21:00 AM'),
 (5, 'eeee','9/5/2017 8:06:00 AM');

select * from data_source_table 

--Creating another table to store the high watermark value
create table watermarktable
(
TableName varchar(255),
WatermarkValue datetime,
);
INSERT INTO watermarktable
VALUES ('data_source_table','1/1/2010 12:00:00 AM')

select * from watermarktable

Delete watermarktable

--Creating a stored procedure 
CREATE PROCEDURE usp_write_watermark @LastModifiedtime datetime, @TableName varchar(50)
AS

BEGIN

UPDATE watermarktable
SET [WatermarkValue] = @LastModifiedtime
WHERE [TableName] = @TableName

END