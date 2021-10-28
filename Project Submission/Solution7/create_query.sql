--Person(_PersonId_,FirstName,LastName).
CREATE TABLE dbo.Person (
    PersonId int NOT NULL PRIMARY KEY,
    FirstName varchar(255) ,
    LastName varchar(255)
);

--ContactDetailType(_CDT_Id_,Detail).
CREATE TABLE dbo.ContactDetailType (
    TypeId int NOT NULL PRIMARY KEY,
	Detail varchar(255)
);

--Address(_AddressId_,PersonId,Line1,Line2,City,State,Zip,Country,TypeId).
--The attribute PersonId references the PK of Person.
--The attribute TypeId references the PK of ContactDetailType.
CREATE TABLE dbo.Address (
			AddressId int NOT NULL PRIMARY KEY,
			PersonId int FOREIGN KEY references dbo.Person,
			Line1 varchar(255) ,
			Line2 varchar(255) ,
			City varchar(255) ,
			State varchar(255) ,
			Zip varchar(255) ,
			Country varchar(255) ,
			TypeId int FOREIGN KEY references dbo.ContactDetailType
);

--ContactDetail(_ContactId_, PersonId, Detail,TypeId).
--The attribute PersonId references the PK of Person.
--The attribute TypeId references the PK of ContactDetailType.
CREATE TABLE dbo.ContactDetail (
    ContactId int NOT NULL PRIMARY KEY,
	PersonId int FOREIGN KEY references dbo.Person,
	TypeId int FOREIGN KEY references dbo.ContactDetailType,
    Detail varchar(255) FOREIGN KEY references dbo.ContactDetailType
);