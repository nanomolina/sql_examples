CREATE TABLE IF NOT EXISTS `Persona` (
  `apellido` varchar(20),
  `rest_nom` varchar(20),
  `DNI` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)) 
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `Libro` (
    `ISBN` SMALLINT NOT NULL,
    `titulo` VARCHAR(30),
    `editorial` VARCHAR(30),
    `edicion` VARCHAR(30),
    PRIMARY KEY (`ISBN`),
--    CHECK `ISBN`>0 AND `edicion`>0, )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `Libro_autor` (
    `ISBN` SMALLINT NOT NULL,
    `nomb_autor` VARCHAR( 30 ) ,
    PRIMARY KEY ( `ISBN` )) 
ENGINE = InnoDB;
