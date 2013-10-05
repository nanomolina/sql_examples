CREATE TABLE IF NOT EXISTS `Libro`(
    `ISBN` SMALLINT,
    `titulo` VARCHAR(30),
    `editorial` VARCHAR(30),
    `edicion` VARCHAR(30),
    PRIMARY KEY (`ISBN`),
    CHECK `ISBN`>0 AND `edicion`>0, )
ENGINE = InnoDB;
