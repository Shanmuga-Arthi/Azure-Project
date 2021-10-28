--selecting the maximum value of LastModifytime from the data_source_table
select MAX(LastModifytime) as NewWatermarkvalue from data_source_table

-- Selecting the New Watermark value from the source Dataset
select * 
from data_source_table 
where LastModifytime > '@{activity('LookupOldWaterMarkActivity').output.firstRow.WatermarkValue}' 
and LastModifytime <= '@{activity('LookupNewWaterMarkActivity').output.firstRow.NewWatermarkvalue}'

--Insert the records in the data_source_table after the first trigger
INSERT INTO data_source_table
VALUES (6, 'newdata','9/6/2017 2:23:00 AM')

INSERT INTO data_source_table
VALUES (7, 'newdata','9/7/2017 9:01:00 AM')