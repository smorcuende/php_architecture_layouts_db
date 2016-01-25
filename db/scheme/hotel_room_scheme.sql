# Table n-n elementos. Relacion entre hoteles y tipos de habitacion
CREATE TABLE `hotel_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) NOT NULL COMMENT 'Id hotel associated with the table hotels',
  `id_room_type` tinyint(2) NOT NULL COMMENT 'Id room type associated with the table room_types',
  PRIMARY KEY (`id`),
  CONSTRAINT fk_hr_hotel FOREIGN KEY (id_hotel) REFERENCES hotels (id),
  CONSTRAINT fk_hr_room FOREIGN KEY (id_room_type) REFERENCES room_types (id)
) DEFAULT CHARSET=utf8;



