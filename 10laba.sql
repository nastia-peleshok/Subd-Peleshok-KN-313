USE [My_new_tourism]
GO
CREATE FUNCTION Encription1 (@First_name_client char(20))
RETURNS char(20)
BEGIN  
    DECLARE @Result char(20)  
    SET @Result = EncryptByPassPhrase('12',@First_name_client) 
    RETURN @Result  
END

CREATE FUNCTION Decription1 (@Value_for_decription char(20))
RETURNS char(20)
BEGIN  
    DECLARE @First_name_client char(20)  
    SET @First_name_client = DecryptByPassPhrase('12',@Value_for_decription)
    RETURN @First_name_client
END


CREATE PROCEDURE Booking_numbers_new (@date1 datetime,@date2 datetime)
AS
BEGIN
    DECLARE @error CHAR;
	SET @error = 'Некоректно задані дати';
	IF (@date1<=@date2) 
	BEGIN
		SELECT  COUNT(DISTINCT f.Id_client) as Number_of_clients,fs.Last_name_employee as Employee_name,@date1 as 'From', @date2 as 'To' 
		FROM Client f INNER JOIN Booking ON f.Id_client=Booking.Id_client
		INNER JOIN Employee fs ON fs.Id_employee=Booking.Id_employee
		WHERE f.Date_registration_client BETWEEN @date1 and @date2
		GROUP BY fs.Last_name_employee;
	END;
	ELSE SELECT @error;
END;

EXEC Booking_numbers_new '2020-01-01', '2020-12-12';




