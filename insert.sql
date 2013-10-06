INSERT INTO `Persona` (`apellido`, `rest_nom`, `DNI`) VALUES
('Pilotta', 'Elvio', 17987456),
('Vega', 'Juan Manuel', 33876453),
('Zapata', 'Illak Yuri', 34786534),
('Molina', 'Enrique Dario', 34876451),
('Segobia', 'Nazareno Juan', 35876245),
('Molina', 'Arnaldo Antonio', 37462761),
('Lusso', 'Joni', 37579234),
('Verblud', 'David Javier', 37696497);

INSERT INTO `Libro` VALUES 
(8761, 'Sistemas operativos modernos', 'Pearson Educación', '2'),
(7369, 'Computer Organization and Design', 'Elsevier.inc', '4'),
(9364, 'Redes de computadoras', 'Prentice Hall', '4'),
(6492, 'Fundamentos de bases de datos', 'McGraw Hill', '3');

INSERT INTO `Libro_autor`(`ISBN`, `nomb_autor`) VALUES
(1345, 'Jay L. Devore'),
(7369, 'David A. Patterson'),
(8761, 'Andrew S. Tanenbaum'),
(9364, 'Andrew S. Tanenbaum'),
(6492, 'Avi Silberschatz');

INSERT INTO `InscriptoEn`(`nom_bib`, `DNI`)  VALUES
('CONICET', 17987456),
('Manuel Belgrano', 33876453),
('FaMAF', 34786534),
('FaMAF', 34876451),
(NULL, 35876245),
('FaMAF', 37462761),
('FaMAF', 37579234),
('FaMAF', 37696497);

INSERT INTO `Bibliotecario`(`DNI`, `antiguedad`) VALUES
(11876345, 37),
(12345666, 32),
(25987345, 27),
(10876456, 42),
(24876290, 28);

INSERT INTO `TrabajaEn`(`DNI`, `nom_bib`) VALUES
(11876345, 'Manuel Belgrano'),
(12345666, 'FaMAF'),
(25987345, 'FaMAF'),
(10876456, 'CONICET'),
(24876290, 'FaMAF');






