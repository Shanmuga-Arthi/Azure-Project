--Person(_PersonId_,FirstName,MiddleInitial,LastName,DateOfBirth).
CREATE TABLE dbo.Person (
    PersonId varchar(255) NOT NULL PRIMARY KEY,
    FirstName varchar(255) ,
    MiddleInitial varchar(255),
	LastName varchar(255),
	DateOfBirth DATE
);

--Course(_CourseId_, Name, Teacher).
CREATE TABLE dbo.Course (
    CourseId varchar(255) NOT NULL PRIMARY KEY,
    Name varchar(255) ,
    Teacher varchar(255)
);

--Student(_StudentId_,PersonId,Email).
--The attribute PersonId references the PK of Person.
CREATE TABLE dbo.Student (
    StudentId varchar (255) NOT NULL PRIMARY KEY,
	PersonId varchar(255) FOREIGN KEY references dbo.Person,
	Email varchar(255)
   
);

--Credit(_StudentId_,_CourseId_,Grade,Attempt).
--The attribute StudentId references the PK of Student.
--The attribute CourseId references the PK of Course. 
CREATE TABLE dbo.Credit (
    StudentId varchar(255) FOREIGN KEY references dbo.Student,
	CourseId varchar(255) FOREIGN KEY references dbo.Course,
	Grade varchar(255),
    Attempt varchar(255),
	PRIMARY KEY(StudentId, CourseId)
);
