use [My_new_tourism]
go
SELECT * FROM Ski_slope
UNION SELECT * FROM Ski_slope2
SELECT * INTO Ski_slope 
FROM Ski_slope2 WHERE Length_slope >600
SELECT * INTO Ski_slope1
FROM Ski_slope2 WHERE Length_slope >750
SELECT * FROM Ski_slope1
INTERSECT
SELECT * FROM Ski_slope2
Select * FROM Ski_slope1
WHERE Id_slope NOT IN(SELECT Id_slope FROM Ski_slope2)
SELECT * FROM Ski_slope1,Ski_slope2

