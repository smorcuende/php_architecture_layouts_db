# Table n-n elementos. Relacion entre Apartamentos y tipos de apartamento
CREATE TABLE `apartment_apartment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_apartment` int(11) NOT NULL COMMENT 'Id apartment associated with the table apartments',
  `id_apartment_type` tinyint(2) NOT NULL COMMENT 'Id apartment type associated with the table apartment_types',
  `available` tinyint(1) NOT NULL default '1' 'Boolean value - 0 not available/ 1 available',
  PRIMARY KEY (`id`),
  CONSTRAINT fk_aap_apartment FOREIGN KEY (id_apartment) REFERENCES apartments (id),
  CONSTRAINT fk_aap_type FOREIGN KEY (id_apartment_type) REFERENCES apartment_types (id)
) DEFAULT CHARSET=utf8;



