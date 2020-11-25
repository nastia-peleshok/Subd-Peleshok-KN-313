use[My_new_tourism]
go
CREATE VIEW Client2 
AS SELECT DISTINCT Id_client, Last_name_client
FROM Client
SELECT *
FROM Client2
WHERE PATINDEX('%à%',Last_name_client)>0
SELECT Employee.Id_employee,Employee.Last_name_employee,Employee.First_name_employee,
Employee.Phone_employee,Employee.[E-mail_employee], Client.Id_client,Client.Last_name_client,Booking.Id_client,Booking.Id_employee
FROM Employee ,Client,Booking
WHERE Employee.Id_employee=Booking.Id_employee AND Client.Id_client=Booking.Id_client 
SELECT Employee.Id_employee,Employee.Last_name_employee,Employee.First_name_employee,
Employee.Phone_employee,Employee.[E-mail_employee], Client.Id_client,Client.Last_name_client,Booking.Id_client,Booking.Id_employee
FROM Employee ,Client,Booking
WHERE Employee.Id_employee=Booking.Id_employee AND Client.Id_client=Booking.Id_client AND Employee.Id_employee>Client.Id_client
