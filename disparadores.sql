CREATE TRIGGER ins_persona AFTER INSERT ON `Bibliotecario`
FOR EACH ROW
BEGIN
INSERT INTO `Persona` VALUES ("Nuevo", "Desconocido", NEW.`DNI`);
END;

CREATE TRIGGER ins_bib BEFORE INSERT ON `Biblioteca`
FOR EACH ROW
BEGIN
    IF NEW.`num`="" THEN 
            SET NEW.`num`=0;
    END IF;
END;
