use [My_new_tourism]
go
SELECT Last_name_client as 'Last name of client'
FROM Client
WHERE Id_client=3
SELECT fs.Id_client,fs.Last_name_client,d.Id_hotel,d.Id_service
FROM Client fs LEFT JOIN Booking d ON d.Id_booking=fs.Id_client
SELECT fs.Id_client,fs.Id_employee,f.Last_name_client,f.Phone_client
FROM Booking fs INNER JOIN Client f ON fs.Id_client=f. Id_client
WHERE fs.Id_employee=1
SELECT f.Last_name_client,f.First_name_client,fs.Id_client
FROM Client f INNER JOIN Booking fs
ON f.Id_client=fs.Id_client
WHERE fs.Id_hotel IN (SELECT d.Id_hotel FROM Hotel d
WHERE d.Name_hotel in ('’мара') )
ORDER BY fs.Date_booking DESC
SELECT Hotel.Name_hotel
FROM Hotel
WHERE  NOT EXISTS( SELECT * FROM Booking 
WHERE Booking.Id_hotel=Hotel.Id_hotel)
SELECT Booking.Id_hotel, Hotel.Name_hotel, Hotel.Street_hotel
FROM Hotel INNER JOIN Booking
ON Hotel.Id_hotel=Booking.Id_hotel
WHERE Hotel.Street_hotel in (SELECT Hotel.Street_hotel FROM Hotel 
Where Len(Hotel.Street_hotel)<6  )

