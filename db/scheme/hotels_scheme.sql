CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL  COMMENT 'Hotel name',
  `category` tinyint(2) NOT NULL default '0'  COMMENT 'Stars of a hotel or equivalent',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;