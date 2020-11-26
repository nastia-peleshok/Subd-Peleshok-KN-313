use [My_new_tourism]
go
SELECT  COUNT(DISTINCT c.Id_client) as Number_of_clients,ls.Last_name_employee as Employee
FROM Client c  INNER JOIN Booking ON 
c.Id_client=Booking.Id_client
INNER JOIN Employee ls ON ls.Id_employee=Booking.Id_employee
GROUP BY ls.Last_name_employee
SELECT YEAR(b.Date_booking) AS year, MONTH(b.Date_booking) AS month,
COUNT(b.Id_booking) AS Booking
FROM Booking b
GROUP BY YEAR(b.Date_booking) , MONTH(b.Date_booking) WITH ROLLUP;
SELECT c.Last_name_client, AVG(s.Cost_service) as Average_cost_service
FROM Service1 s INNER JOIN Booking b ON s.Id_service=b.Id_service
INNER JOIN Client c ON c.Id_client=b.Id_client
GROUP BY c.Last_name_client
