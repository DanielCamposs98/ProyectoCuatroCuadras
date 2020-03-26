USE CuatroCuadras

GO
   INSERT INTO ETIQUETA VALUES 
        ('Canoa'),
        ('Photoboot'),
        ('Playa'),
        ('Comida'),
        ('Fitness'),
        ('Música'),
        ('Familia'),
        ('Hogar'),
        ('Vuelos'),
        ('Aire Libre'),
        ('Rock'),
        ('Canto'),
        ('Dinero'),
        ('Electronicos'),
        ('Beisbol'),
        ('Futbol'),
        ('Gobierno'),
        ('Peliculas'),
        ('Guitarra'),
        ('Playeras'),
        ('Influenza'), 
        ('Flat-Top'),
        ('Vestidos'),
        ('Turistas'),
        ('Nuggets'),
        ('Paracetamol'),
        ('Plantas'),
        ('Jardin Botanico');

GO
    INSERT INTO Ciudad VALUES 
    ('Culiacán'),
    ('Navolato'),
    ('Mazatlán'),
    ('Los Mochis'),
    ('Guasave'),
    ('Guadalajara'),
    ('Tijuana');

GO
    INSERT INTO USUARIO VALUES
    ('XxXGokuXxX','Juan','Perez Perez','M','1996-03-05','XxXGokuSSJXxX@hotmail.com','ContraseñaDeLaCIA',4),
    ('Diana129','Diana','Aispuro Angulo','F','1992-12-09','DianaAisAng@hotmail.com','DianAisPAnG',2),
    ('CuentaFeik','Jose Luis','Sanchez Rodriguez','M','1988-01-03 ','CuentaFakeParaApps@outlook.com','NoSoyFeik123',3),
    ('Luiz','Luis','Lopez Lopez','M','1998-09-12','LuisLopezAlCuadrado@hotmail.com','LopezAlCuadrado',1),
    ('Emilian99','Emiliano','Paez Lopez','M','1997-01-08','PaezLopEmiliano@outlook.com','LopezPaezEmil9912',2),
    ('JoseCarl','Jose Carlos','Ventura Gararte','M','1965-12-24','JoseCarlos123@hotmail.com','JoseCarlGararVen',1),
    ('Mari','Maria Elena','Perez Sarrion','F','1982-12-14','MariElen@hotmail.com','12Mari34Elen56aa78',7),
    ('AnaALV','Ana Maria','Alvarez Castelo','F','1992-05-23','MarianaALV@hotmail.com','MariAnaLV1582',6),
    ('SandCast','Sandra','Flores Castilla','F','1974-10-25','SandraCast@hotmail.com','Sandra1235',4),
    ('Coronavirus','Angel','Gomez Bravo','M','1978-07-05','CoronaPandamiaVirus@hotmail.com','AntiVacunas2020',6),
    ('Angel224','Angel','Torres Gomez','M','1994-09-23','AngelTG24@gmail.com','OsiContraseña',5),
    ('MenitaXD98','Ximena','Castro Yepez','F','1999-12-22','menaCY@hotmail.com','menittha98',5),
    ('Panchogo94','Francisco','Moreno Lopez','M','1997-05-05','PanchoGpi45@live.com.mx','panchito99',1),
	('MigueMF', 'Miguel', 'Mendoza Fernandez', 'M', '1996-11-07', 'miguemf@gmail.com', 'migmenfer97', 3),
	('RamLop99', 'Ramon', 'Lopez Perez', 'M', '1971-08-09', 'ramonlopez99@yahoo.com.mx', 'rammaster99', 7),
	('GabiLuna', 'Gabriela', 'Luna Sanchez', 'F', '1998-02-21', 'gabilusanxyz15@outlook.com', 'gabimoon15', 1),
	('AlizV5', 'Alicia', 'Valenzuela Navarro', 'F', '1977-12-16', 'alizzv12@outlook.com','navaliz91', 6);
GO
    INSERT INTO LOGRO(Nombre,Descripcion,Cantidad_Visitas) VALUES   
    ('Fotogenico','Check-In en 3 lugares distintos con fotocabina (photoboot)',0),
    ('Navegante','Check-In en 3 lugares distinton con etiqueta "canoa"',0),
    ('La Voz','3 Check-In en un mes desde lugares con la categoria "Karaoke Bar"',0),
    ('Melómano','Hacer Check-In en 5 lugares de la categoría "Tienda de Musica',0),
    ('Cinéfilo','Hacer 15 Check-In en cines',0),
    ('Catador de Comida','Hacer Check-In en 10 diferentes restaurantes',0),
    ('Trabajador','Hacer 200 Check-In en lugares de la categoría "Oficinas',0);
GO
    INSERT INTO AMIGO VALUES
    ('Diana129','Mari'),
    ('Coronavirus','Angel224'),
    ('AnaALV','Mari'),
    ('SandCast','CuentaFeik'),
    ('JoseCarl','XxXGokuXxX'),
    ('Luiz','Mari'),
    ('Luiz','Coronavirus'),
    ('Panchogo94','MenitaXD98'),
    ('Emilian99','AnaALV'),
    ('Angel224','Diana129'),
    ('JoseCarl','MenitaXD98'),
    ('SandCast','Panchogo94'),
    ('Panchogo94','CuentaFeik'),
	('MigueMF', 'AlizV5'),
	('GabiLuna', 'RamLop99'),
	('RamLop99', 'AnaALV');
GO
     INSERT INTO CATEGORIA VALUES    
        ('Karaoke Bar'),
        ('Tienda de Musica'),
        ('Cines'),
        ('Restaurantes'),
        ('Oficinas'),
        ('Farmacias'),
        ('Supermercados'),
        ('Hospitales'),
        ('Parques'),
        ('Aeropuertos'),
        ('Tienda de Ropa'),
        ('Bancos'),
        ('Tienda Departamental'),
        ('Peluquerias'),
        ('Gasolinerias'),
        ('Estadios');
GO
    INSERT INTO LUGAR VALUES
    ('Estadio Tomateros','24.7777','-107.389457','Estadio de Beisbol',1,16,15),
    ('Sams Club 3 Rios','24.1373','-107.412717','Tienda de Mayoreo',1,7,4),
    ('Fühler','24.802018','-107.397176','Centro de Ocio',1,1,6),
    ('Taipak MonteCarlo','24.817548','-107.423411','Restaurante de Comida Asiatica',1,4,4),
    ('Estadio Teodoro Mariscal','23.236318','-106.430799','Estadio de Beisbol',3,16,15),
    ('Soriana Hiper','23.237284','-106.419963','Supermercado',3,7,13),
    ('KFC Insurgentes','23.234386','-106.419963','Restaurante de Pollo Frito',3,4,25),
    ('Panamá Insurgentes','23.216738','-106.416530','Restaurante Regional',3,4,4),
    ('Pemex','23.207074','-106.411401','Gasolineria',3,15,23),
    ('Farmacia Guadalajara','25.821725','-109.001043','Super-Farmacia',4,6,26),
    ('Parque Sinaloa','25.788361','-109.002049','Parque Familiar',4,9,28),
    ('Ley Primavera','24.763375','-107.699523','Supermercado Regional',2,7,8),
    ('USE Navolato','24.7577050','-107.694008','Oficinas de Gobierno',2,5,17),
    ('Cinemex Navolato','25.569533','-108.46567','Sucursal de Cine',2,3,2),
    ('Banbajío','25.571111','-108.464483','Sucursal Bancaria',5,12,13),
    ('MUSIK','20.669706','-103.346863','Tienda de Musica',6,2,19),
    ('Zona de Vestir Medrano','20.670730','-103.341363','Tienda de Ropa',6,11,20),
    ('Aeropuerto Internacional de Tijuana','32.541651','-116.974962','Aeropuerto Internacional',7,10,9),
    ('Hospital Ángeles','32.518155','-117.007258','Hospital Privado',7,8,5),
    ('Sears Plaza Rio','32.527653','-117.021206','Tienda Departamental',7,13,18),
    ('The Barber Shop','32.521646','-117.026613','Barberia Profesional',7,14,22);

GO
    INSERT INTO VISITA (ID_Lugar, Nickname, Comentario, Valoracion, Fecha) VALUES  
    (9,'JoseCarl','Excelente',10,'Mar 20 2018 3:12 AM'),
    (2,'XxXGokuXxX','Bueno',6,'Dec 28 2019 4:28 PM'),
    (17,'Luiz','Regular',7,'Jan 20 2020 7:30 AM'),
    (9,'AnaALV','Muy Bueno',10,'Apr 11 2019 8:40 AM'),
    (13,'MenitaXD98','Malo',5,'Jan 31 2019 11:50 PM'),
    (18,'Angel224','Muy Malo',3,'Jun 01 2018 11:30 PM'),
    (18,'SandCast','Bueno',8,'Mar 13 2019 3:58 PM'),
    (4,'CuentaFeik','Regular',7,'Jul 03 2018 11:18 AM'),
    (16,'Angel224','Bueno',8,'Apr 10 2019 4:24 PM'),
    (10,'Mari','Excelente',10,'Sep 08 2019 08:30 AM'),
    (1,'Mari','Malo',4,'Oct 08 2019 3:11 PM'),
    (19,'CuentaFeik','Bueno',8,'Nov 15 2018 9:08 AM'),
    (14,'Luiz','Regular',7,'Apr 16 2019 2:03 PM'),
    (10,'Diana129','Regular',6,'Oct 18 2018 9:13 AM'),
    (5,'AnaALV','Excelente',10,'Apr 10 2018 08:29 PM'),
    (16,'SandCast','Bueno',8,'May 24 2019 10:00 PM'),
    (11,'Panchogo94','Muy Bueno',9,'Nov 21 2018 7:02 AM'),
    (17,'SandCast','Excelente',10,'Mar 03 2018 8:17 AM'),
    (21,'Panchogo94','Bueno',9,'Mar 03 2019 5:20 PM'),
    (12,'Luiz','Muy Malo',2,'Oct 30 2019 3:51 PM'),
    (9,'Coronavirus','Regular',7,'Feb 28 2020 4:48 PM'),
    (2,'Coronavirus','Bueno',8,'Mar 28 2018 12:30 PM'),
    (11,'SandCast','Malo',4,'Jan 15 2019 01:23 AM'),
    (20,'Coronavirus','Regular',6,'Apr 01 2019 03:40 PM'),
    (13,'Luiz','Malo',4,'Feb 13 2020 01:34 PM'),
    (19,'Diana129','Excelente',10,'Mar 08 2020 12:40 AM'),
    (14,'Mari','Bueno',8,'Feb 15 2019 11:43 AM'),
    (5,'Diana129','Regular',6,'Mar 20 2019 05:34 PM'),
    (8,'SandCast','Bueno',8,'Jul 18 2019 11:20 AM'),
    (19,'Coronavirus','Muy Malo',2,'Apr 20 2018 03:20 PM'),
    (20,'AnaALV','Muy Bueno',9,'Mar 10 2020 05:28 PM'),
    (13,'Emilian99','regular',10,'Oct 29 2019 03:45 PM'),
    (9,'Diana129','Bueno',8,'Nov 01 2018 03:59 PM'),
    (8,'SandCast','Malo',4,'Feb 20 2020 12:30 AM'),
    (12,'Mari','Excelente',10,'Jul 15 2018 04:20 PM'),
    (11,'Coronavirus','Regular',6,'Mar 01 2018 07:23 AM'),
    (1,'Coronavirus','Excelente',10,'Apr 24 2018 04:56 PM'),
    (4,'Luiz','Muy Bueno',9,'Feb 15 2018 03:29 PM'),
    (9,'CuentaFeik','Bueno',8,'Mar 10 08:29 PM'),
    (15,'Diana129','Regular',6,'Sep 20 2019 04:25 PM'),
    (3,'AnaALV','Bueno',8,'Nov 20 2019 11:28 AM'),
    (4,'SandCast','Bueno',8,'Jul 23 2018 10:28 AM'),
    (16,'SandCast','Muy Malo',1,'Jan 25 2020 09:29 AM'),
    (18,'Coronavirus','Excelente',10,'Aug 28 2019 06:34 PM'),
    (20,'Emilian99','Malo',3,'Oct 11 2019 04:26 PM'),
    (21,'XxXGokuXxX','Excelente',10,'Sep 30 2019 05:17 PM'),
    (12,'Emilian99','Muy Bueno',9,'May 23 2018 01:45 PM'),
    (5,'CuentaFeik','Excelente',10,'May 12 2019 12:20 AM'),
    (6,'Diana129','Regular',6,'Sep 20 2019 06:45 PM'),
    (2,'XxXGokuXxX','Muy Malo',1,'Mar 12 2020 01:26 PM'),
	(3, 'GabiLuna', NULL, 5, 'Feb 20 2018 03:25 PM'),
	(10, 'AlizV5', 'Excelente', 10, 'Sep 13 2019 11:55 AM'),
	(2, 'AlizV5', NULL, 8, 'May 10 2019 05:30 PM'),
	(11, 'MigueMF', 'Malo', 4, 'Feb 22 2020 04:55 PM'),
	(13, 'Coronavirus', NULL, 7, 'Oct 14 2019 08:44 PM'), 
	(12, 'SandCast', 'Muy bueno', 8, 'Nov 23 2019 05:23 PM'),
	(4, 'AnaALV', 'Regular', 7, 'Nov 23 2019 04:54 PM'),
	(7, 'Diana129', NULL, 2, 'Sep 23 2018 08:38 PM'),
	(10, 'MigueMF', NULL, 8, 'Sep 13 2019 11:55 AM'),
	(10, 'Emilian99', 'Bueno', 8, 'Jan 23 2020 10:20 AM'),
	(5, 'Emilian99', NULL, 1, 'Jan 23 2019 12:43 AM'),
	(2, 'Mari', 'Regular', 5, 'Dec 23 2019 05:33 PM'),
	(11, 'MigueMF', 'Bueno', 8, 'Mar 01 2018 07:23 AM'),
	(9, 'Luiz', 'Bueno', 8, 'Dec 05 2019 01:50 PM'),
	(16, 'Diana129', NULL, 5, 'Sep 25 2018 03:49 PM'),
	(20, 'CuentaFeik', NULL, 9, 'Mar 03 2020 12:04 PM'),
	(5, 'Mari', 'Muy bueno', 9, 'Apr 10 2018 08:29 PM'),
	(4, 'MigueMF', NULL, 6, 'Apr 23 2019 07:55 PM'),
	(6, 'GabiLuna', 'Bueno', 7, 'May 23 2019 05:44 PM'),
	(16, 'XxXGokuXxX', NULL, 10, 'Nov 14 2019 06:04 PM');

GO
    INSERT INTO LOGRO_USUARIO VALUES
    ('Coronavirus',5,'Jan 31 2020 08:15 PM'),
    ('Luiz',4,'Dec 28 2019 01:19 PM'),
    ('SandCast',6,'Oct 11 2019 03:40 PM'),
    ('AnaALV',1,'Mar 10 2020 08:19 AM'),
    ('Luiz',5,'Nov 05 2019 11:52 AM'),
    ('XxXGokuXxX',2,'Sep 15 2019 08:15 PM');
GO
    INSERT INTO INTERES VALUES 
    ('Lectura'),
    ('Viajar'),
    ('Escritura'),
    ('Coleccionismo'),
    ('Voluntariado'),
    ('Cocinar'),
    ('Deportes'),
    ('Música'),
    ('Animales'),
    ('Tecnología'),
    ('Medicina'),
    ('Economía'),
    ('Educación'),
    ('Familia'),
    ('Sociedad');
GO
    INSERT INTO INTERES_USUARIO VALUES
    ('AnaALV',1),
    ('AnaALV',3),
    ('AnaALV',5),
    ('Angel224',8),
    ('Coronavirus',11),
    ('Coronavirus',12),
    ('Panchogo94',15),
    ('Panchogo94',8),
    ('Luiz',5),
    ('Luiz',6),
    ('MenitaXD98',7),
    ('MenitaXD98',4),
    ('Mari',3),
    ('Mari',10),
    ('SandCast',11),
    ('SandCast',13),
    ('JoseCarl',4),
    ('JoseCarl',2);

    
