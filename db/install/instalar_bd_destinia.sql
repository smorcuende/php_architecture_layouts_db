	#Creacion tabla room_types
	DROP TABLE IF EXISTS `room_types`;
	CREATE TABLE `room_types` (
	  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
	  `room_type` varchar(50) NOT NULL COMMENT 'Types of standard room in a hotel',
	  PRIMARY KEY (`id`)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla room_types
	INSERT INTO room_types
		(room_type)
	values
		('Habitacion doble'),
		('Habitacion doble con vistas'),
		('Habitacion sencilla')
	;
	
	#Creacion tabla apartment_types
	CREATE TABLE `apartment_types` (
	  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
	  `apartment_type` varchar(10) NOT NULL COMMENT 'Types of apartments by number of occupants',
	  PRIMARY KEY (`id`)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla room_types
	INSERT INTO apartment_types
		(apartment_type)
	values
		('2 adultos'),
		('4 adultos'),
		('6 adultos')
	;
	
	#Creacion tabla hotels
	CREATE TABLE `hotels` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) NOT NULL  COMMENT 'Hotel name',
	  `category` tinyint(2) NOT NULL default '0'  COMMENT 'Stars of a hotel or equivalent',
	  PRIMARY KEY (`id`)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla hotels
	INSERT INTO hotels
		(name, category)
	values
		('Sun', 1),
		('Beach', 3),
		('Palace', 5)
	;
	
	#Creacion tabla apartments
	CREATE TABLE `apartments` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) NOT NULL  COMMENT 'Apartment name',
	  PRIMARY KEY (`id`)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla apartments
	INSERT INTO apartments
		(name)
	values
		('Ana'),
		('Claudia'),
		('Julia')
	;
	
	#Creacion tabla hotel_room
	CREATE TABLE `hotel_room` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `id_hotel` int(11) NOT NULL COMMENT 'Id hotel associated with the table hotels',
	  `id_room_type` tinyint(2) NOT NULL COMMENT 'Id room type associated with the table room_types',
	  PRIMARY KEY (`id`),
	  CONSTRAINT fk_hr_hotel FOREIGN KEY (id_hotel) REFERENCES hotels (id),
	  CONSTRAINT fk_hr_room FOREIGN KEY (id_room_type) REFERENCES room_types (id)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla hotel_room
	INSERT INTO hotel_room
		(id_hotel, id_room_type)
	values
		(1, 1),
		(1, 2),
		(2, 1),
		(3, 2),
		(3, 3)
	;

	#Creacion tabla apartment_apartment_type
	CREATE TABLE `apartment_apartment_type` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `id_apartment` int(11) NOT NULL COMMENT 'Id apartment associated with the table apartments',
	  `id_apartment_type` tinyint(2) NOT NULL COMMENT 'Id apartment type associated with the table apartment_types',
	  `available` tinyint(1) NOT NULL default '1' COMMENT 'Boolean value - 0 not available/ 1 available',
	  PRIMARY KEY (`id`),
	  CONSTRAINT fk_aap_apartment FOREIGN KEY (id_apartment) REFERENCES apartments (id),
	  CONSTRAINT fk_aap_type FOREIGN KEY (id_apartment_type) REFERENCES apartment_types (id)
	) DEFAULT CHARSET=utf8;
	
	#Ingreso de datos en tabla apartment_apartment_type
	INSERT INTO apartment_apartment_type
		(id_apartment, id_apartment_type, available)
	values
		(1, 2, 0),
		(2, 1, 1),
		(2, 2, 1),
		(2, 3, 0),
		(3, 3, 1)
	;