use [My tourism]
go
CREATE TABLE Client  (
	Id_client INTEGER NOT NULL,
	Last_name_client CHAR(20) NOT NULL,
	First_name_client CHAR(20) NOT NULL,
	Phone_client  INTEGER NOT NULL,
	[E-mail_client]  CHAR(20) NOT NULL,
PRIMARY KEY (Id_client) );

CREATE TABLE Employee  (
	Id_employee INTEGER NOT NULL,
	Last_name_employee CHAR(20) NOT NULL,
	First_name_employee CHAR(20) NOT NULL,
	Phone_employee  INTEGER NOT NULL,
	[E-mail_employee]  CHAR(20) NOT NULL,
	Salary_employee MONEY NOT NULL,
PRIMARY KEY (Id_employee) );

CREATE TABLE Service1  (
	Id_service INTEGER NOT NULL,
	Name_service CHAR(20) NOT NULL,
	Cost_service MONEY NOT NULL,
PRIMARY KEY (Id_service) );

CREATE TABLE Hotel  (
	Id_hotel INTEGER NOT NULL,
	Name_hotel CHAR(20) NOT NULL,
	Last_name_hotel_owner CHAR(20) NOT NULL,
Ferst_name_hotel_owner CHAR(20) NOT NULL,
City_hotel CHAR(20) NOT NULL,
	Street_hotel CHAR(20) NOT NULL,
	House_number_hotel CHAR(20) NOT NULL,
Phone_hotel INTEGER NOT NULL,
	[E-mail_hotel] CHAR(20) NOT NULL,
	Website_hotel CHAR(20) NOT NULL
PRIMARY KEY (Id_hotel) );

CREATE TABLE Equipment_rental (
	Id_equipment INTEGER NOT NULL,
	Name_equipment CHAR(20) NOT NULL,
	Size_equipment INTEGER NOT NULL,
	Cost_equipment  MONEY NOT NULL,
PRIMARY KEY (Id_equipment) );

CREATE TABLE Ski_slope (
	Id_slope INTEGER NOT NULL,
	Name_slope CHAR(20) NOT NULL,
	Level_slope INTEGER NOT NULL,
	Length_slope  CHAR(4) NOT NULL,
PRIMARY KEY (Id_slope) );


CREATE TABLE Booking   (
	Id_booking INTEGER NOT NULL,
	Id_client INTEGER NOT NULL,
	Id_employee INTEGER NOT NULL,
	Id_service INTEGER NOT NULL,
Id_hotel INTEGER NOT NULL,
Date_booking DATE NOT NULL,
PRIMARY KEY (Id_booking),
CONSTRAINT  FClient FOREIGN KEY (Id_client) 
REFERENCES Client ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT  FEmployee FOREIGN KEY (Id_employee) 
REFERENCES Employee ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT  FService FOREIGN KEY (Id_service) 
REFERENCES Service1 ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT  FHotel FOREIGN KEY (Id_hotel) 
REFERENCES Hotel ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE Order1   (
	Id_order INTEGER NOT NULL,
	Id_client INTEGER NOT NULL,
	Id_equipment INTEGER NOT NULL,
Id_slope INTEGER NOT NULL,
Date_order DATE NOT NULL,
PRIMARY KEY (Id_order),
CONSTRAINT  FKClient FOREIGN KEY (Id_client) 
REFERENCES Client ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT  FEquipment_rental FOREIGN KEY (Id_equipment) 
REFERENCES Equipment_rental ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT  FSki_slope FOREIGN KEY (Id_slope) 
REFERENCES Ski_slope ON DELETE CASCADE ON UPDATE CASCADE);

