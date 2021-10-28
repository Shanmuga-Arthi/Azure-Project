--2.Insert tables
--Person(_PersonId_,FirstName,LastName).
INSERT INTO Person VALUES(1001,'Callum','Smith'),
(1002,'David','Williams'),
(1003,'Ethan','Brown'),
(1004,'George','White'),
(1005,'Harry','Harris'),
(1006,'Jack','Taylor'),
(1007,'Kyle','King'),
(1008,'Noah','Martin'),
(1009,'"Oliver"','Wilson'),
(1010,'Percy','Cooper')


--ContactDetailType(_TypeId_,Detail).
INSERT INTO ContactDetailType VALUES(101,'Personal'),
(102,'Home'),
(103,'Work')


--Address(_AddressId_,PersonId,Line1,Line2,City,State,Zip,Country,TypeId).
INSERT INTO Address VALUES(1,1001,52,'CornmarketStreet','Oxford','Oxfordshire','OX13JE','Unitedkingdom',101),
(2,1002,34,'SavileRoad','Berkshire','Berkshire','RG20YU','Unitedkingdom',101),
(3,1003,2,'Manorroad','Herdfordshire','Herdfordshire','SG34NI','Unitedkingdom',101),
(4,1004,15,'HolywellStreet','Egham','Surrey','CR46BN','Unitedkingdom',101),
(5,1005,28,'Mansfieldroad','Hounslow','Middlesex','NW44BT','Unitedkingdom',101),
(6,1006,12,'ParksRoad','Feltham','Middlesex','NW89HI','Unitedkingdom',101),
(7,1007,52,'JowettWalk','SouthHall','Middlesex','NW65SC','Unitedkingdom',101),
(8,1008,98,'Trinitystreet','Ilford','London','EIDU','Unitedkingdom',101),
(9,1009,8,'AlbionLane','Ascot','Berkshire','RG28PO','Unitedkingdom',101),
(10,1010,23,'BeefLane','Stratford','London','EL8GH','Unitedkingdom',101),
(11,1001,52,'CornmarketStreet','Oxford','Oxfordshire','OX13JE','Unitedkingdom',102),
(12,1002,34,'SavileRoad','Berkshire','Berkshire','RG20YU','Unitedkingdom',102),
(13,1003,2,'Manorroad','Herdfordshire','Herdfordshire','SG34NI','Unitedkingdom',102),
(14,1004,15,'HolywellStreet','Surrey','Surrey','CR46BN','Unitedkingdom',102),
(15,1005,28,'Mansfieldroad','Hounslow','Middlesex','NW44BT','Unitedkingdom',102),
(16,1006,12,'ParksRoad','Feltham','Middlesex','NW89HI','Unitedkingdom',102),
(17,1007,52,'JowettWalk','SouthHall','Middlesex','NW65SC','Unitedkingdom',102),
(18,1008,5,'Trinitystreet','Ilford','London','EL8GH','Unitedkingdom',102),
(19,1004,87,'HighStreet','Surrey','Surrey','CR04RT','Unitedkingdom',103),
(20,1007,25,'HighStreet','SouthHall','Middlesex','NW04RT','Unitedkingdom',103),
(21,1007,76,'HighStreet','SouthHall','Middlesex','NW04RT','Unitedkingdom',103),
(22,1009,89,'HighStreet','Ascot','Berkshire','RG01AB','Unitedkingdom',103),
(23,1002,18,'HighStreet','Berkshire','Berkshire','RG26YT','Unitedkingdom',103),
(24,1006,22,'HighStreet','Feltham','Middlesex','NW56FV','Unitedkingdom',103),
(25,1007,1,'HighStreet','SouthHall','Middlesex','NW04RT','Unitedkingdom',103)



--ContactDetail(_ContactId_,PersonId,Detail,TypeId).
INSERT INTO ContactDetail VALUES(1,1001,101,'Personal'),
								(2,1002,101,'Personal'),
								(3,1003,101,'Personal'),
								(4,1004,101,'Personal'),
								(5,1005,101,'Personal'),
								(6,1006,101,'Personal'),
								(7,1007,101,'Personal'),
								(8,1008,101,'Personal'),
								(9,1009,101,'Personal'),
								(10,1010,101,'Personal'),
								(11,1001,102,'Home'),
								(12,1002,102,'Home'),
								(13,1003,102,'Home'),
								(14,1004,102,'Home'),
								(15,1005,102,'Home'),
								(16,1006,102,'Home'),
								(17,1007,102,'Home'),
								(18,1008,102,'Home'),
								(19,1004,103,'Work'),
								(20,1007,103,'Work'),
								(21,1007,103,'Work'),
								(22,1009,103,'Work'),
								(23,1002,103,'Work'),
								(24,1006,103,'Work'),
								(25,1007,103,'Work')