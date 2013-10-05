-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-10-2013 a las 00:18:30
-- Versión del servidor: 5.6.12
-- Versión de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `FaMAF`
--
CREATE DATABASE IF NOT EXISTS `FaMAF` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `FaMAF`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `FaMAF_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libro`
--

CREATE TABLE IF NOT EXISTS `Libro` (
  `ISBN` smallint(6) NOT NULL DEFAULT '0',
  `titulo` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `editorial` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `edicion` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Libro`
--

INSERT INTO `Libro` (`ISBN`, `titulo`, `editorial`, `edicion`) VALUES
(1345, 'Probabilidad Y Estadística par', 'Cengage Learning Editores', '6'),
(6492, 'Fundamentos de bases de datos', 'McGraw Hill', '3'),
(7369, 'Computer Organization and Desi', 'Elsevier.inc', '4'),
(8761, 'Sistemas operativos modernos', 'Pearson Educación', '2'),
(9364, 'Redes de computadoras', 'Prentice Hall', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libro_autor`
--

CREATE TABLE IF NOT EXISTS `Libro_autor` (
  `ISBN` smallint(6) NOT NULL DEFAULT '0',
  `nomb_autor` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Libro_autor`
--

INSERT INTO `Libro_autor` (`ISBN`, `nomb_autor`) VALUES
(1345, 'Jay L. Devore'),
(6492, 'Avi Silberschatz'),
(7369, 'David A. Patterson'),
(8761, 'Andrew S. Tanenbaum'),
(9364, 'Andrew S. Tanenbaum');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Persona`
--

CREATE TABLE IF NOT EXISTS `Persona` (
  `apellido` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `rest_nom` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `DNI` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Persona`
--

INSERT INTO `Persona` (`apellido`, `rest_nom`, `DNI`) VALUES
('Pilotta', 'Elvio', 17987456),
('Vega', 'Juan Manuel', 33876453),
('Zapata', 'Illak Yuri', 34786534),
('Molina', 'Enrique Dario', 34876451),
('Segobia', 'Nazareno Juan', 35876245),
('Molina', 'Arnaldo Antonio', 37462761),
('Lusso', 'Joni', 37579234),
('Verblud', 'David Javier', 37696497);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
