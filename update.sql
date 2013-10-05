UPDATE `test`.`Libro` 
SET 	`ISBN` = '1345',
	`titulo` = 'Probabilidad Y Estadística para Ingenierías Y Ciencias',
	`editorial` = 'Cengage Learning Editores',
	`edicion` = '6' 
WHERE `Libro`.`ISBN` = 1;
