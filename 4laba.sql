USE [My_new_tourism]
GO
INSERT INTO Client VALUES (6, '���', '�����', '0984573821',
'lekolha@gmail.com');
INSERT INTO Client
VALUES (7, '�����', '������', '0998725364',
'makshab@gmail.com'),
 (8, '������', '����', '0984893889',
'makarkus@gmail.com'),
(9, '����������', '�����', '0675463728',
'romazub@gmail.com');
LOAD DATA INFILE 'f:\Client.tbl' INTO TABLE Patient LINES
TERMINATED BY '\r\n';
UPDATE Client SET Last_name_client = '�����' WHERE Id_client = 1;
UPDATE Client SET Phone_client = '0508796765' WHERE Id_client = 3;
DELETE FROM Client
WHERE (Id_client >= 7);