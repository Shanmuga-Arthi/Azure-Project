SELECT s.StudentId,CONCAT(FirstName, MiddleInitial, LastName) as Student_Name,cou.Name as Course_Name,Teacher,Grade,Attempt
From Student as s JOIN Person as p
on	s.PersonId = p.PersonId
join Credit as cr
on cr.StudentId = s.StudentId
join Course as cou
on cou.CourseId = cr.CourseId