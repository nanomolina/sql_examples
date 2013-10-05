INSERT INTO `Libro`(`ISBN`, `Titulo`, `editorial`, `edicion`)
VALUES ("1", "aa", "bb", "4"); 

INSERT INTO `Libro` VALUES 
("8761", "Sistemas operativos modernos", "Pearson Educación", "2"),
("7369", "Computer Organization and Design", "Elsevier.inc", "4"),
("9364", "Redes de computadoras", "Prentice Hall", "4"),
("6492", "Fundamentos de bases de datos", "McGraw Hill", "3");

INSERT INTO `Libro_autor`(`ISBN`, `nomb_autor`) VALUES
("1345", "Jay L. Devore"),
("7369", "David A. Patterson"),
("8761", "Andrew S. Tanenbaum"),
("9364", "Andrew S. Tanenbaum"),
("6492", "Avi Silberschatz");
