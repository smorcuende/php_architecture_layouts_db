CREATE TABLE `apartment_types` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `apartment_type` varchar(10) NOT NULL COMMENT 'Types of apartments by number of occupants',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;