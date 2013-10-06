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

-- ISBN y titulo de todos los libros cuyo autor es Andrew S. Tanenbaum 
-- ordenados de forma descendente
SELECT `Libro`.`ISBN`, `titulo`
FROM `Libro`, `Libro_autor`
WHERE `Libro`.`ISBN` = `Libro_autor`.`ISBN`
AND `Libro_autor`.`nomb_autor` = "Andrew S. Tanenbaum" 
ORDER BY `Libro`.`ISBN` DESC;

-- Todas las personas que son socios de la biblioteca de FaMAF.
-- Renombrar el Atributo rest_nom con nombre. 
SELECT `apellido`, `rest_nom` as `nombre`, `Persona`.`DNI`
FROM `Persona`, `InscriptoEn`
WHERE `Persona`.`DNI` = `InscriptoEn`.`DNI`
AND `InscriptoEn`.`nom_bib` = "FaMAF";

-- DNI de los bibliotecarios de mayor antiguedad que el bibliotecario de
-- DNI=12345666
SELECT `B1`.`DNI`
FROM `Bibliotecario` as `B1`, `Bibliotecario` as `B2`
WHERE `B2`.`DNI` = 12345666 
AND `B2`.`antiguedad` < `B1`.`antiguedad`;

-- Promedio de las antiguedades de los bibliotecarios que trabajan en
-- cada bibliotecario

SELECT `nom_bib`, AVG(`antiguedad`)
FROM `Bibliotecario`, `TrabajaEn`
WHERE `Biblioteca`.`DNI` = `TrabajaEn`.`DNI`
GROUP BY `nom_bib`;
