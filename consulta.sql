-- Libros cuya editorial es Prentice Hall y cuya edicion no es la primera
SELECT *
FROM `Libro`
WHERE `editorial` = "Prentice Hall"
AND `edicion` >1;

-- Titulo e ISBN de todos los libros cuyo autor es Avi Silberschatz
SELECT `titulo`, `Libro`.`ISBN`
FROM `Libro`, `Libro_autor`
WHERE `Libro`.`ISBN` = `Libro_autor`.`ISBN` 
AND `nomb_autor` = "Avi Silberschatz";

-- ISBN y titulo de todos los libros cuyo autor es Andrew S. Tanenbaum ordenados de forma descendente
SELECT `Libro`.`ISBN`, `titulo`
FROM `Libro`, `Libro_autor`
WHERE `Libro`.`ISBN` = `Libro_autor`.`ISBN`
AND `Libro_autor`.`nomb_autor` = "Andrew S. Tanenbaum" 
ORDER BY `Libro`.`ISBN` DESC;
