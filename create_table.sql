CREATE TABLE IF NOT EXISTS `Persona` (
    `apellido` varchar(20),
    `rest_nom` varchar(20),
    `DNI` INT(11) NOT NULL,
    PRIMARY KEY (`DNI`)); 


CREATE TABLE IF NOT EXISTS `Libro` (
    `ISBN` SMALLINT NOT NULL,
    `titulo` VARCHAR(30),
    `editorial` VARCHAR(30),
    `edicion` VARCHAR(30),
    PRIMARY KEY (`ISBN`));
--  CHECK `ISBN`>0 AND `edicion`>0, )


CREATE TABLE IF NOT EXISTS `Libro_autor` (
    `ISBN` SMALLINT NOT NULL,
    `nomb_autor` VARCHAR(30) ,
    PRIMARY KEY (`ISBN`)); 


CREATE TABLE IF NOT EXISTS `Socio` (
    `DNI` INT(11) NOT NULL,
    `posicion` VARCHAR(20) ,
    PRIMARY KEY (`DNI`)); 


CREATE TABLE IF NOT EXISTS `Biblioteca` (
    `nom_bib` VARCHAR(30),
    `calle` VARCHAR(50),
    `num` SMALLINT,
    PRIMARY KEY (`nom_bib`, `calle`, `num`));


CREATE TABLE IF NOT EXISTS `InscriptoEn` (
    `nom_bib` VARCHAR(30),
    `DNI` INT(11) NOT NULL,
    PRIMARY KEY(`DNI`));


CREATE TABLE IF NOT EXISTS `Bibliotecario` (
    `DNI` INT(11) NOT NULL,
    `antiguedad` SMALLINT,
    PRIMARY KEY(`DNI`));


CREATE TABLE IF NOT EXISTS `TrabajaEn` (
    `DNI` INT(11) NOT NULL,
    `nom_bib` VARCHAR(30),
    PRIMARY KEY(`DNI`));

