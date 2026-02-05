-- OJQ
INSERT INTO OJQ VALUES
(1,'Organizata Humanitare per Arsim','Kosove','Prizren','info@oha.org','049-111-222'),
(2,'Reactive Youth and Sports Association','Kosove','Prishtine','kontakt@rysa.org','044-333-444');

-- Departamentet
INSERT INTO Departamenti VALUES
(10,'Financa',1),
(11,'Operacionet ne Terren',1),
(12,'Administrata',1),
(20,'Programet',2),
(21,'Komunikimi',2);

-- Punetoret (10)
INSERT INTO Punetori VALUES
(100,'Arber Krasniqi','Koordinator',900,'arber@ojq.org','049-200-100',11),
(101,'Drita Hoxha','Zyrtare Financiare',850,'drita@ojq.org','049-200-101',10),
(102,'Blerim Berisha','Zyrtar Terreni',700,'blerim@ojq.org','049-200-102',11),
(103,'Elona Gashi','Administratore',650,'elona@ojq.org','049-200-103',12),
(104,'Faton Bytyqi','Menaxher Projekti',1000,'faton@ojq.org','049-200-104',11),
(105,'Sara Rexhepi','Asistente Finance',600,'sara@ojq.org','049-200-105',10),
(106,'Luan Mehmeti','Logjistike',750,'luan@ojq.org','049-200-106',11),
(107,'Arta Shala','Komunikim',720,'arta@ojq.org','049-200-107',12),
(108,'Mentor Kelmendi','Udhëheqës Programi',980,'mentor@ojq2.org','044-300-108',20),
(109,'Rina Aliu','Zyrtare Media',700,'rina@ojq2.org','044-300-109',21);

-- Projektet
INSERT INTO Projekti VALUES
(1,'Edukimi i te Rinjve','2024-01-01','2024-12-31',50000,'Aktiv',1),
(2,'Aktivitete Sportive','2024-10-01','2025-02-28',80000,'Aktiv',1),
(3,'Fuqizimi i Grave','2024-03-15','2024-11-30',30000,'Mbyllur',2),
(4,'Aftesi Digjitale per Adoleshente','2024-05-01','2025-01-31',45000,'Aktiv',2);

-- Donatoret (10)
INSERT INTO Donatori VALUES
(1,'Komisioni Evropian','Institucion','Belgjike','eu@donatore.eu','+32-111'),
(2,'USAID','Institucion','SHBA','usaid@donatore.us','+1-202'),
(3,'Ambasada Zvicerane','Institucion','Zvicerr','ch@donatore.ch','+41-10'),
(4,'Kompania X','Kompani','Kosove','x@company.com','044-999'),
(5,'Alban Sh.','Individual','Kosove','alban@gmail.com','049-555'),
(6,'Fondi Global','Institucion','MB','gf@uk.org','+44-222'),
(7,'Kompania Y','Kompani','Kosove','y@company.com','045-111'),
(8,'Arta M.','Individual','Kosove','arta.m@gmail.com','049-777'),
(9,'UNDP','Institucion','Nderkombetar','undp@undp.org','+1-333'),
(10,'Grupi i Diaspores','Grup','Gjermani','ddg@de.org','+49-444');

-- Donacionet (10)
INSERT INTO Donacioni VALUES
(1,10000,'2024-03-10','Banke',1,1),
(2,15000,'2024-04-05','Banke',2,1),
(3,8000,'2024-10-10','Online',5,2),
(4,12000,'2024-11-02','Banke',3,2),
(5,5000,'2024-06-18','Cash',8,4),
(6,20000,'2024-07-01','Banke',9,4),
(7,7000,'2024-05-20','Online',4,1),
(8,9000,'2024-08-15','Banke',6,2),
(9,4000,'2024-09-12','Cash',7,3),
(10,6000,'2024-03-20','Online',10,3);

-- Aktivitetet (10)
INSERT INTO Aktiviteti VALUES
(1,'Punetori: CV & Interviste','2024-02-10','Prizren',1),
(2,'Trajnim: Bazat e IT','2024-03-05','Prizren',1),
(3,'Shperndarje #1','2024-12-10','Gjakove',2),
(4,'Shperndarje #2','2025-01-15','Peje',2),
(5,'Workshop per gra #1','2024-04-01','Prishtine',3),
(6,'Workshop per gra #2','2024-05-01','Prishtine',3),
(7,'Bootcamp Digjital 1','2024-06-10','Prishtine',4),
(8,'Bootcamp Digjital 2','2024-07-10','Prishtine',4),
(9,'Bootcamp Digjital 3','2024-08-10','Prizren',4),
(10,'Event Mbylles','2024-11-25','Prizren',1);

-- Vullnetaret (10)
INSERT INTO Vullnetari VALUES
(1,'Visar Dema','visar@gmail.com','049-101','Logjistike'),
(2,'Era Mala','era@gmail.com','049-102','Mesimdhenie'),
(3,'Blend Gashi','blend@gmail.com','049-103','Ndihme_e_Pare'),
(4,'Diona Berisha','diona@gmail.com','049-104','Media'),
(5,'Krenar Shala','krenar@gmail.com','049-105','IT'),
(6,'Alma Hoxha','alma@gmail.com','049-106','Mesimdhenie'),
(7,'Lirim Aliu','lirim@gmail.com','049-107','Logjistike'),
(8,'Sara Kelmendi','sara.v@gmail.com','049-108','Ndihme_e_Pare'),
(9,'Jeton Rexhepi','jeton@gmail.com','049-109','IT'),
(10,'Arta Bytyqi','arta.b@gmail.com','049-110','Media');

-- Vullnetari_Aktiviteti
INSERT INTO Vullnetari_Aktiviteti VALUES
(1,3,'I_Pranishem'),
(2,1,'I_Pranishem'),
(3,3,'I_Regjistruar'),
(4,10,'I_Pranishem'),
(5,7,'I_Pranishem'),
(6,2,'I_Pranishem'),
(7,4,'Nuk_U_Paraqit'),
(8,3,'I_Pranishem'),
(9,8,'I_Pranishem'),
(10,10,'I_Regjistruar');

-- Perfituesit (10)
INSERT INTO Perfituesi VALUES
(1,'Familja A','Familje','Gjakove',2),
(2,'Familja B','Familje','Peje',2),
(3,'Familja C','Familje','Gjakove',2),
(4,'Arta K.','Grua','Prishtine',3),
(5,'Drita L.','Grua','Prishtine',3),
(6,'Mentor P.','Adoleshent','Prizren',4),
(7,'Elira S.','Adoleshent','Prizren',4),
(8,'Bleron M.','Adoleshent','Prishtine',4),
(9,'Nora H.','Femije','Prizren',1),
(10,'Jetmir G.','Femije','Prizren',1);

-- Punetori_Projekti
INSERT INTO Punetori_Projekti VALUES
(100,1,'Koordinator Trajnimi',10),
(104,1,'Menaxher Projekti',15),
(102,2,'Zyrtar Terreni',20),
(106,2,'Logjistike',15),
(101,1,'Raportim Financiar',8),
(105,2,'Asistence Finance',10),
(108,4,'Udheheqes Programi',12),
(109,4,'Media & Promovim',10),
(107,3,'Komunikim',6),
(103,1,'Administrate',5);