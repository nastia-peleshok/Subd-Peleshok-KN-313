use [My_new_tourism]
go
CREATE TRIGGER Ski_del_Triggers 
ON Ski_slope2 AFTER DELETE 
AS
INSERT INTO Ski_slope1
SELECT * FROM deleted
WHERE Id_slope=(SELECT Id_slope FROM deleted)

DELETE FROM Ski_slope2 
WHERE Id_slope=7;
SELECT * FROM Ski_slope2
SELECT * FROM Ski_slope1

CREATE TRIGGER Ski_update
ON Ski_slope1
AFTER UPDATE
AS
DELETE FROM Ski_slope2 
WHERE Ski_slope2.Name_slope=(SELECT Name_slope FROM DELETED);


UPDATE Ski_slope1 SET Length_slope=3333 WHERE Id_slope=9;
SELECT * FROM Ski_slope1
SELECT * FROM Ski_slope2

CREATE TRIGGER Ski_insert
ON Ski_slope1
AFTER INSERT
AS
INSERT INTO Ski_slope2(Id_slope,Name_slope,Level_slope,Length_slope)
SELECT Id_slope,Name_slope,Level_slope,Length_slope
FROM Ski_slope1;

INSERT INTO Ski_slope1 VALUES (14,' ËÚ',2,999);
SELECT * FROM Ski_slope2