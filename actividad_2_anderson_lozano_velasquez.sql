-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para comercializadora_la_45
DROP DATABASE IF EXISTS `comercializadora_la_45`;
CREATE DATABASE IF NOT EXISTS `comercializadora_la_45` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `comercializadora_la_45`;

-- Volcando estructura para tabla comercializadora_la_45.conveyor
DROP TABLE IF EXISTS `conveyor`;
CREATE TABLE IF NOT EXISTS `conveyor` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `brand of the item` char(50) NOT NULL DEFAULT '',
  `name of driver` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='este campo tendra los datos de las trasnportadoras de la comercializadora ';

-- Volcando datos para la tabla comercializadora_la_45.conveyor: ~3 rows (aproximadamente)
DELETE FROM `conveyor`;
INSERT INTO `conveyor` (`id`, `name`, `brand of the item`, `name of driver`) VALUES
	(1, 'Licores Suaza', 'Renaul', 'Carlos Zúñiga Suaza'),
	(2, 'Whiskys La Rumba', 'Chevrolet', 'Camila Maldonado Quintana'),
	(3, 'Don Taedro La Vida', 'Ford', 'Daniela Mongo Felzat');

-- Volcando estructura para tabla comercializadora_la_45.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `products` varchar(60) NOT NULL DEFAULT '',
  `medida` varchar(50) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra los produdtos del la comercializadora';

-- Volcando datos para la tabla comercializadora_la_45.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `products`, `medida`, `date`) VALUES
	(1, 'Ron Viejo Caldas', '1 L', '2021-01-04'),
	(3, 'Whisky', '1 L', '2021-01-05'),
	(4, 'Aguardiente', '1 L', '2021-01-10');

-- Volcando estructura para tabla comercializadora_la_45.providers
DROP TABLE IF EXISTS `providers`;
CREATE TABLE IF NOT EXISTS `providers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `nit` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `contact` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra los proveedores de la comercializadora ';

-- Volcando datos para la tabla comercializadora_la_45.providers: ~3 rows (aproximadamente)
DELETE FROM `providers`;
INSERT INTO `providers` (`id`, `name`, `nit`, `email`, `contact`) VALUES
	(1, 'Licorera la 80', '1253165348', 'LuizaQuintanaM@gmail', '34545452355'),
	(2, 'Whiskis de Leon', '9078389027', 'LeoCFontaner@gmail.com', '36224578214'),
	(3, 'Expendidora la 39', '2156465121', 'DCristinaCalvarez@gmail.com', '36456489545');

-- Volcando estructura para tabla comercializadora_la_45.shopings
DROP TABLE IF EXISTS `shopings`;
CREATE TABLE IF NOT EXISTS `shopings` (
  `id` smallint(6) NOT NULL DEFAULT 0,
  `amount` smallint(6) NOT NULL DEFAULT 0,
  `costo_producto` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `proveedor_id` smallint(6) NOT NULL DEFAULT 0,
  `producto_id` mediumint(9) NOT NULL DEFAULT 0,
  `transportadora_id` mediumint(9) NOT NULL DEFAULT 0,
  `costo_transporte` mediumint(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contendra todos los datos de la compra';

-- Volcando datos para la tabla comercializadora_la_45.shopings: ~3 rows (aproximadamente)
DELETE FROM `shopings`;
INSERT INTO `shopings` (`id`, `amount`, `costo_producto`, `date`, `proveedor_id`, `producto_id`, `transportadora_id`, `costo_transporte`) VALUES
	(1, 6, 380000, '2021-01-11', 2, 4, 1, 25000),
	(2, 21, 400000, '2021-01-05', 3, 3, 2, 59000),
	(3, 34, 650000, '0000-00-00', 1, 1, 3, 70000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
