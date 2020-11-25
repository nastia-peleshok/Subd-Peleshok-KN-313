use [My_new_tourism]
go
SELECT *
FROM Client
WHERE First_name_client LIKE('%Äלטענמ%')
ORDER BY First_name_client
SELECT Id_client,Id_employee,Id_hotel, Date_booking
FROM Booking
ORDER BY Date_booking DESC
SELECT MAX(f.Last_name_client)as Client,  MAX(d.Name_hotel) as Hotel
FROM Client f INNER JOIN Booking ON f.Id_client=Booking.Id_client
INNER JOIN Hotel d ON d.Id_hotel=Booking.Id_hotel
GROUP BY d.Name_hotel
