CREATE TABLE `room_types` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(10) NOT NULL COMMENT 'Types of standard room in a hotel',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;