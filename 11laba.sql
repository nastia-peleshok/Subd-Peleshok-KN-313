use [My_new_tourism]
go

BEGIN TRANSACTION 
INSERT INTO Employee VALUES (4,'Гарпій','Олександр','0998798098','olec@gmail.com',6000);
INSERT INTO Employee VALUES (5,'Ровар','Станіслав','0956785432','stas@gmail.com',10000);
INSERT INTO Employee VALUES (6,'Шишковська','Марія','0987832123','shumar@gmail.com',14600);
INSERT INTO Employee VALUES (7,'Гітра','Олена','0667898743','olenka4@gmail.com',8300);
ROLLBACK 

