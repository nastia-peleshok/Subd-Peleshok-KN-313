use [My_new_tourism]
go
EXEC sp_helpindex Client
go
EXEC sp_helpindex Employee
go
CREATE INDEX ClientIndex ON Client(Id_client, Last_name_client)
EXEC sp_helpindex Client
go
CREATE INDEX EmployeeIndex ON Employee(Id_employee, Last_name_employee)
EXEC sp_helpindex Employee
go

SET SHOWPLAN_ALL ON;
GO
SELECT MAX(f.Last_name_client)as Client,  MAX(d.Name_hotel) as Hotel
FROM Client f INNER JOIN Booking ON f.Id_client=Booking.Id_client
INNER JOIN Hotel d ON d.Id_hotel=Booking.Id_hotel
GROUP BY d.Name_hotel
GO
SET SHOWPLAN_ALL OFF;