--Metadata_ADF(ID,SourceType,ObjectName,ObjectValue)
CREATE TABLE dbo.Metadata_ADF(
    ID INT IDENTITY(1,1) NOT NULL,
    SourceType VARCHAR(50) NOT NULL,
    ObjectName VARCHAR(500) NOT NULL,
    ObjectValue VARCHAR(1000) NOT NULL
);
 --Inserting values into Metadata_ADF
INSERT INTO dbo.[Metadata_ADF]
(
    [SourceType]
   ,[ObjectName]
   ,ObjectValue
)
VALUES  ('BlobContainer','semicolondata','semicolon')
        ,('BlobContainer','commadata','comma');
 
INSERT INTO dbo.[Metadata_ADF]
(
    [SourceType]
   ,[ObjectName]
   ,ObjectValue
)
VALUES  ('Delimiter','semicolondata',';')
        ,('Delimiter','commadata',',');
 
INSERT INTO dbo.[Metadata_ADF]
(
    [SourceType]
   ,[ObjectName]
   ,ObjectValue
)
VALUES  ('SQLTable','semicolondata','topmovies_semicolon')
        ,('SQLTable','commadata','topmovies_comma');
		

--topmovies_semicolon(Index,MovieTitle)
CREATE TABLE [dbo].[topmovies_semicolon](
   [Index] [BIGINT] NULL,
   [MovieTitle] varchar(500) NULL
);

 --topmovies_comma(Index,MovieTitle)
CREATE TABLE [dbo].[topmovies_comma](
   [Index] [BIGINT] NULL,
   [MovieTitle] varchar(500) NULL
);

--Data retriving Query
SELECT
     b.[ObjectName]
    ,FolderName = b.[ObjectValue]
    ,SQLTable   = s.[ObjectValue]
    ,Delimiter  = d.[ObjectValue]
FROM [dbo].[Metadata_ADF] b
JOIN [dbo].[Metadata_ADF] s ON b.[ObjectName] = s.[ObjectName]
JOIN [dbo].[Metadata_ADF] d ON b.[ObjectName] = d.[ObjectName]
WHERE   b.[SourceType] = 'BlobContainer'
    AND s.[SourceType] = 'SQLTable'
    AND d.[SourceType] = 'Delimiter';