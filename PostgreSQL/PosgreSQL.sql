/** ## EJERCICIO 1
 *******************************************************************************
 
1. Cree una tabla llamada *agenda*, debe tener los siguientes campos: 
	* *apellido*, varchar(30); 
	* *nombre*,varchar(20); 
	* *domicilio*, varchar (30)
	* *telefono*, varchar(11)
3. Visualice la estructura de la tabla *agenda*.
4. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE agenda (
	apellido 	VARCHAR(30),
	nombre		VARCHAR(20),
	domicilio	VARCHAR(30),
	telefono	VARCHAR(11)
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'agenda';

DROP TABLE agenda;

DROP TABLE IF EXISTS agenda;


/** ## EJERCICIO 2
 *******************************************************************************
 
Necesita almacenar informaci�n referente a los libros de su biblioteca personal. 

Los datos que guardar� ser�n: t�tulo del libro, nombre del autor y nombre de la 
editorial.

1. Cree una tabla llamada "libros". Debe definirse con los siguientes campos: 
	* titulo, varchar(20)
	* autor, varchar(30)
	* editorial, varchar(15)
2. Visualice la estructura de la tabla "libros".
3. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE libros (
	titulo VARCHAR(20),
	autor VARCHAR(30),
	editorial VARCHAR(15)
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'libros';

DROP TABLE libros;

DROP TABLE IF EXISTS libros;


/** ## EJERCICIO 3
 *******************************************************************************
 
Trabaje con la tabla "agenda" que almacena informaci�n de sus amigos.

1. Cree una tabla llamada "agenda". Debe tener los siguientes campos: 
	* apellido (cadena de 30)
	* nombre (cadena de 20)
	* domicilio (cadena de 30)
	* telefono (cadena de 11)
2. Visualice la estructura de la tabla "agenda".
3. Ingrese los siguientes registros:
	* 'Moreno','Alberto','Colon 123','4234567'
	* 'Torres','Juan','Avellaneda 135','4458787'
4. Seleccione todos los registros de la tabla:
5. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE agenda (
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'agenda';

INSERT INTO agenda ( apellido, nombre, domicilio, telefono ) 
	VALUES	( 'Moreno','Alberto','Colon 123','4234567' ),
		('Torres','Juan','Avellaneda 135','4458787');

SELECT * FROM agenda;

DROP TABLE agenda;

DROP TABLE IF EXISTS agenda;


/** ## EJERCICIO 4
 *******************************************************************************

Trabaje con la tabla "libros" que almacena los datos de los libros de su propia 
biblioteca.

1. Cree una tabla llamada "libros". Debe definirse con los siguientes campos: 
	* titulo (cadena de 20)
	* autor (cadena de 30)
	* editorial (cadena de 15)
2. Visualice la estructura de la tabla "libros".
3. Ingrese los siguientes registros:
	* 'El aleph','Borges','Planeta'
	* 'Martin Fierro','Jose Hernandez','Emece'
	* 'Aprenda PHP','Mario Molina','Emece'
4. Muestre todos los registros.
5. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE libros (
	titulo 	  VARCHAR(20),
	autor	  VARCHAR(30),
	editorial VARCHAR(15)
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'libros';

INSERT INTO libros ( titulo, autor, editorial )
	VALUES  ( 'El aleph','Borges','Planeta' ),
		( 'Martin Fierro','Jose Hernandez','Emece'),
		( 'Aprenda PHP','Mario Molina','Emece' );

SELECT * FROM libros;

DROP TABLE IF EXISTS libros;


/** ## EJERCICIO 5
 *******************************************************************************

Un videoclub que alquila pel�culas en video almacena la informaci�n de sus 
pel�culas en una tabla llamada "peliculas"; para cada pel�cula necesita los 
siguientes datos:

	* nombre, cadena de caracteres de 20 de longitud
	* actor, cadena de caracteres de 20 de longitud
	* duraci�n, valor num�rico entero
	* cantidad de copias: valor entero

1. Cree la tabla eligiendo el tipo de dato adecuado para cada campo.
2. Vea la estructura de la tabla.
3. Ingrese los siguientes registros:
	* 'Mision imposible','Tom Cruise',128,3
	* 'Mision imposible 2','Tom Cruise',130,2
	* 'Mujer bonita','Julia Roberts',118,3
	* 'Elsa y Fred','China Zorrilla',110,2
4. Muestre todos los registros.
5. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE peliculas (
	nombre 	 VARCHAR(20),
	actor	 VARCHAR(20),
	duracion SMALLINT,
	copias	 SMALLINT
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'peliculas';

INSERT INTO peliculas (nombre, actor, duracion, copias)
	VALUES 	 ('Mision imposible','Tom Cruise',128,3),
		 ('Mision imposible 2','Tom Cruise',130,2),
		 ('Mujer bonita','Julia Roberts',118,3),
		 ('Elsa y Fred','China Zorrilla',110,2);

SELECT * FROM peliculas;

DROP TABLE IF EXISTS peliculas;


 /** ## EJERCICIO 6
 *******************************************************************************

Una empresa almacena los datos de sus empleados en una tabla "empleados" que 
guarda los siguientes datos: 

	* nombre
	* documento
	* sexo
	* domicilio
	* sueldobasico

1. Cree la tabla eligiendo el tipo de dato adecuado para cada campo.
2. Vea la estructura de la tabla:
3. Ingrese algunos registros:
	* 'Juan Perez','22333444','m','Sarmiento 123',500
	* 'Ana Acosta','24555666','f','Colon 134',650
	* 'Bartolome Barrios','27888999','m','Urquiza 479',800
4. Seleccione todos los registros.
6. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE empleados (
	nombre VARCHAR(20),
	documento VARCHAR(8),
	sexo VARCHAR(1),
	domicilio VARCHAR(30),
	sueldobasico FLOAT
);

SELECT table_name,column_name,udt_name,character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'empleados';

INSERT INTO empleados ( nombre, documento, sexo, domicilio,sueldobasico )
	VALUES	('Juan Perez','22333444','m','Sarmiento 123',500),
		('Ana Acosta','24555666','f','Colon 134',650),
		('Bartolome Barrios','27888999','m','Urquiza 479',800);

SELECT * FROM empleados;

DROP TABLE IF EXISTS empleados;


/** ## EJERCICIO 7
 *******************************************************************************
 
Un videoclub que alquila pel�culas en video almacena la informaci�n de sus 
pel�culas en alquiler en una tabla llamada "peliculas".

1. Cree la tabla peliculas con los siguienetes campos:
	* titulo varchar(20)
	* actor varchar(20)
	* duracion integer
	* cantidad integer
2. Vea la estructura de la tabla.
3. Ingrese los siguientes registros:
	* 'Mision imposible','Tom Cruise',180,3
	* 'Mision imposible 2','Tom Cruise',190,2
	* 'Mujer bonita','Julia Roberts',118,3
	* 'Elsa y Fred','China Zorrilla',110,2
4. Realice un "select" mostrando solamente el t�tulo y actor de todas las pel�culas
5. Muestre el t�tulo y duraci�n de todas las peliculas
6. Muestre el t�tulo y la cantidad de copias
7. Elimine la tabla creada.

 ******************************************************************************/
 
CREATE TABLE peliculas (
	titulo VARCHAR(20),
	actor VARCHAR(29),
	duracion SMALLINT,
	cantidad SMALLINT
);

SELECT table_name, column_name, udt_name, character_maximum_length 
	FROM information_schema.columns WHERE table_name = 'empleados';

INSERT INTO peliculas (titulo, actor, duracion, cantidad)
	VALUES	('Mision imposible','Tom Cruise',180,3),
		('Mision imposible 2','Tom Cruise',190,2),
		('Mujer bonita','Julia Roberts',118,3),
		('Elsa y Fred','China Zorrilla',110,2);

SELECT titulo, actor FROM peliculas;

DROP TABLE IF EXISTS peliculas;


/** ## EJERCICIO 8
 *******************************************************************************
 
Una empresa almacena los datos de sus empleados en una tabla llamada 
"empleados".

1. Cree la tabla empleados con los siguienetes campos:
	* nombre varchar(20)
	* documento varchar(8)
	* sexo varchar(1)
	* domicilio varchar(30)
	* sueldobasico float   
2. Vea la estructura de la tabla
3. Ingrese algunos registros:
	* 'Juan Juarez','22333444','m','Sarmiento 123',500
	* 'Ana Acosta','27888999','f','Colon 134',700
	* 'Carlos Caseres','31222333','m','Urquiza 479',850
4. Muestre todos los datos de los empleados
5. Muestre el nombre, documento y domicilio de los empleados
6. Realice un "select" mostrando el documento, sexo y sueldo b�sico de todos 
los empleados
7. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE empleados (
	nombre VARCHAR(20),
	documento VARCHAR(8),
	sexo VARCHAR(1),
	domicilio VARCHAR(30),
	sueldobasico FLOAT   
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'empleados';

INSERT INTO empleados ( nombre, documento, sexo, domicilio, sueldobasico )
	VALUES 	( 'Juan Juarez','22333444','m','Sarmiento 123',500 ),
		( 'Ana Acosta','27888999','f','Colon 134',700 ),
		( 'Carlos Caseres','31222333','m','Urquiza 479',850 );

SELECT * FROM empleados;

SELECT nombre, documento, domicilio FROM empleados;

SELECT documento, sexo, sueldobasico FROM empleados;

DROP TABLE IF EXISTS empleados;


/** ## EJERCICIO 9
 *******************************************************************************

Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.

1. Cree la tabla, con los siguientes campos: 
	* apellido (cadena de 30)
	* nombre (cadena de 20)
	* domicilio (cadena de 30)
	* telefono (cadena de 11)
2. Visualice la estructura de la tabla "agenda".
3. Ingrese los siguientes registros:
	* Acosta, Ana, Colon 123, 4234567
	* Bustamante, Betina, Avellaneda 135, 4458787
	* Lopez, Hector, Salta 545, 4887788
	* Lopez, Luis, Urquiza 333, 4545454   
	* Lopez, Marisa, Urquiza 333, 4545454         
4. Seleccione todos los registros de la tabla
5. Seleccione el registro cuyo nombre sea "Marisa" (1 registro)
6. Seleccione los nombres y domicilios de quienes tengan apellido igual 
a "Lopez" (3 registros)
7. Muestre el nombre de quienes tengan el tel�fono "4545454" (2 registros)
8. Eliminar la tabla creada.

 ******************************************************************************/

CREATE TABLE agenda (
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'agenda';

INSERT INTO agenda ( apellido, nombre, domicilio, telefono )
	VALUES 	( 'Acosta', 'Ana', 'Colon 123', 4234567 ),
		( 'Bustamante', 'Betina', 'Avellaneda 135', 4458787 ),
		( 'Lopez', 'Hector', 'Salta 545', 4887788 ),
		( 'Lopez', 'Luis', 'Urquiza 333', 4545454 ),
		( 'Lopez', 'Marisa', 'Urquiza 333', 4545454 );

SELECT * FROM agenda;

SELECT * FROM agenda WHERE nombre LIKE 'Marisa';

SELECT nombre, domicilio FROM agenda WHERE apellido LIKE 'Lopez';

SELECT nombre FROM agenda WHERE telefono LIKE '4545454';

DROP TABLE IF EXISTS agenda;


/** ## EJERCICIO 10
 *******************************************************************************

Trabaje con la tabla "libros" de una librer�a que guarda informaci�n referente 
a sus libros disponibles para la venta.

1. Cree la tabla "libros". Debe tener la siguiente estructura:
	* titulo varchar(20)
	* autor varchar(30)
	* editorial varchar(15)
2. Visualice la estructura de la tabla "libros".
3. Ingrese los siguientes registros:
	* El aleph,Borges,Emece
	* Martin Fierro,Jose Hernandez,Emece
	* Martin Fierro,Jose Hernandez,Planeta
	* Aprenda PHP,Mario Molina,Siglo XXI
4. Seleccione los registros cuyo autor sea "Borges" (1 registro)
5. Seleccione los t�tulos de los libros cuya editorial sea "Emece" (2 registros)
6. Seleccione los nombres de las editoriales de los libros cuyo titulo sea 
"Martin Fierro" (2 registros)
7. Eliminar la tabla creada.

 ******************************************************************************/

CREATE TABLE libros (
	titulo VARCHAR(20),
	autor VARCHAR(30),
	editorial VARCHAR(15)
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'libros';

INSERT INTO libros ( titulo, autor, editorial )
	VALUES 	('El aleph','Borges','Emece'),
		('Martin Fierro','Jose Hernandez','Emece'),
		('Martin Fierro','Jose Hernandez','Planeta'),
		('Aprenda PHP','Mario Molina','Siglo XXI');

SELECT * FROM libros WHERE autor LIKE 'Borges';

SELECT titulo FROM libros WHERE editorial LIKE 'Emece';

SELECT editorial FROM libros WHERE titulo LIKE 'Martin Fierro';

DROP TABLE IF EXISTS libros;


/** ## EJERCICIO 11
 *******************************************************************************

Un comercio que vende art�culos de computaci�n registra los datos de sus 
art�culos en una tabla con ese nombre.

1. Cree la tabla "articulos". Debe tener la siguiente estructura:
	* codigo integer
	* nombre varchar(20)
	* descripcion varchar(30)
	* precio float
	* cantidad integer       
2. Ingrese algunos registros:
	* 1,'impresora','Epson Stylus C45',400.80,20
	* 2,'impresora','Epson Stylus C85',500,30
	* 3,'monitor','Samsung 14',800,10
	* 4,'teclado','ingles Biswal',100,50
	* 5,'teclado','espa�ol Biswal',90,50
3. Seleccione los datos de las impresoras (2 registros)
4. Seleccione los art�culos cuyo precio sea mayor o igual a 400 (3 registros)
5. Seleccione el c�digo y nombre de los art�culos cuya cantidad sea menor a 30 
(2 registros)
6. Selecciones el nombre y descripci�n de los art�culos que NO cuesten $100 
(4 registros)
7. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE articulos (
	codigo INTEGER,
	nombre VARCHAR(20),
	descripcion VARCHAR(30),
	precio FLOAT,
	cantidad INTEGER       
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'articulos';

INSERT INTO articulos (codigo, nombre, descripcion, precio, cantidad)
	VALUES 	(1,'impresora','Epson Stylus C45',400.80,20),
		(2,'impresora','Epson Stylus C85',500,30),
		(3,'monitor','Samsung 14',800,10),
		(4,'teclado','ingles Biswal',100,50),
		(5,'teclado','espa�ol Biswal',90,50);

SELECT * FROM articulos WHERE nombre LIKE 'impresora';

SELECT * FROM articulos WHERE precio >= 400;

SELECT codigo, nombre FROM articulos WHERE precio < 30;

SELECT nombre, descripcion FROM articulos WHERE precio <> 100;

DROP TABLE IF EXISTS articulos;
 

/** ## EJERCICIO 12
 *******************************************************************************

Un video club que alquila pel�culas en video almacena la informaci�n de sus 
pel�culas en alquiler en una tabla denominada "peliculas".

1. Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
	* titulo varchar(20),
	* actor varchar(20),
	* duracion integer,
	* cantidad integer   
2. Ingrese los siguientes registros:
	* 'Mision imposible','Tom Cruise',120,3
	* 'Mision imposible 2','Tom Cruise',180,4
	* 'Mujer bonita','Julia R.',90,1
	* 'Elsa y Fred','China Zorrilla',80,2
3. Seleccione las pel�culas cuya duraci�n no supere los 90 minutos 
(2 registros)
4. Seleccione el t�tulo de todas las pel�culas en las que el actor NO sea 
"Tom Cruise" (2 registros)
5. Muestre todos los campos, excepto "duracion", de todas las pel�culas de las 
que haya m�s de 2 copias (2 registros)
6. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE peliculas (
	titulo VARCHAR(20),
	actor VARCHAR(20),
	duracion INTEGER,
	cantidad INTEGER   
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'peliculas';

INSERT INTO peliculas (titulo, actor, duracion, cantidad)
	VALUES 	('Mision imposible','Tom Cruise',120,3),
		('Mision imposible 2','Tom Cruise',180,4),
		('Mujer bonita','Julia R.',90,1),
		('Elsa y Fred','China Zorrilla',80,2);

SELECT * FROM peliculas WHERE duracion < 90;

SELECT titulo FROM peliculas WHERE actor <> 'Tom Cruise';

SELECT titulo, actor, cantidad FROM peliculas WHERE cantidad > 2;

DROP TABLE IF EXISTS peliculas;


/** ## EJERCICIO 13
 *******************************************************************************

Trabaje con la tabla "agenda" que registra la informaci�n referente a sus 
amigos.

1. Cree la tabla con los siguientes campos: 
	* apellido (cadena de 30)
	* nombre (cadena de 20)
	* domicilio (cadena de 30)
	* telefono (cadena de 11)
2. Ingrese los siguientes registros (insert into):
	* Alvarez,Alberto,Colon 123,4234567
	* Juarez,Juan,Avellaneda 135,4458787
	* Lopez,Maria,Urquiza 333,4545454
	* Lopez,Jose,Urquiza 333,4545454
	* Salas,Susana,Gral. Paz 1234,4123456
3. Elimine el registro cuyo nombre sea "Juan" (1 registro afectado)
4. Elimine los registros cuyo n�mero telef�nico sea igual a "4545454" 
(2 registros afectados)
5. Muestre la tabla.
6. Elimine todos los registros (2 registros afectados)
7. Muestre la tabla.
8. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE agenda (
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'agenda';

INSERT INTO agenda (apellido, nombre, domicilio, telefono)
	VALUES 	('Alvarez','Alberto','Colon 123',4234567),
		('Juarez','Juan','Avellaneda 135',4458787),
		('Lopez','Maria','Urquiza 333',4545454),
		('Lopez','Jose','Urquiza 333',4545454),
		('Salas','Susana','Gral. Paz 1234',4123456);

DELETE FROM agenda WHERE nombre LIKE 'Juan';

DELETE FROM agenda WHERE telefono LIKE '4545454';

SELECT * FROM agenda;

DELETE FROM agenda;

SELECT * FROM agenda;

DROP TABLE IF EXISTS agenda;

 
/** ## EJERCICIO 14
 *******************************************************************************

Un comercio que vende art�culos de computaci�n registra los datos de sus 
art�culos en una tabla con ese nombre.

1. Cree la tabla articulos con los siguientes campos: 
	* codigo integer,
	* nombre varchar(20),
	* descripcion varchar(30),
	* precio float,
	* cantidad integer
2. Ingrese algunos registros:
	* 1,'impresora','Epson Stylus C45',400.80,20
	* 2,'impresora','Epson Stylus C85',500,30
	* 3,'monitor','Samsung 14',800,10
	* 4,'teclado','ingles Biswal',100,50
	* 5,'teclado','espa�ol Biswal',90,50
3. Elimine los art�culos cuyo precio sea mayor o igual a 500 (2 registros)
4. Elimine todas las impresoras (1 registro)
5. Elimine todos los art�culos cuyo c�digo sea diferente a 4 (1 registro)
6. Mostrar todos los datos de la tabla.
7. Elimine la tabla creada.

 ******************************************************************************/
 
CREATE TABLE articulos (
	codigo INTEGER,
	nombre VARCHAR(20),
	descripcion VARCHAR(30),
	precio FLOAT,
	cantidad INTEGER
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'articulos';

INSERT INTO articulos (codigo, nombre, descripcion, precio,cantidad)
	VALUES 	(1,'impresora','Epson Stylus C45',400.80,20),
		(2,'impresora','Epson Stylus C85',500,30),
		(3,'monitor','Samsung 14',800,10),
		(4,'teclado','ingles Biswal',100,50),
		(5,'teclado','espa�ol Biswal',90,50);

DELETE FROM articulos WHERE precio >= 500;

DELETE FROM articulos WHERE nombre LIKE 'impresora';

DELETE FROM articulos WHERE codigo <> 4;

SELECT * FROM articulos;

DROP TABLE IF EXISTS articulos;


/** ## EJERCICIO 15
 *******************************************************************************

Trabaje con la tabla "agenda" que almacena los datos de sus amigos.

1. Cree la tabla con los siguientes campos: 
	* apellido varchar(30),
	* nombre varchar(20),
	* domicilio varchar(30),
	* telefono varchar(11)
2. Ingrese los siguientes registros:
	* 'Acosta','Alberto','Colon 123','4234567'
	* 'Juarez','Juan','Avellaneda 135','4458787'
	* 'Lopez','Maria','Urquiza 333','4545454'
	* 'Lopez','Jose','Urquiza 333','4545454'
	* 'Suarez','Susana','Gral. Paz 1234','4123456'
3. Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" 
(1 registro afectado)
4- Actualice los registros cuyo n�mero telef�nico sea igual a "4545454" por 
"4445566"  (2 registros afectados)
5. Actualice los registros que tengan en el campo "nombre" el valor "Juan" por 
"Juan Jose" (ning�n  registro afectado porque ninguno cumple con la condici�n 
del "where")
6. Luego de cada actualizaci�n ejecute un select que muestre todos los registros 
de la tabla.
7. Elimine la tabla creada.

 ******************************************************************************/
 
CREATE TABLE agenda (
	apellido VARCHAR(30),
	nombre VARCHAR(20),
	domicilio VARCHAR(30),
	telefono VARCHAR(11)
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'agenda';

INSERT INTO agenda (apellido, nombre, domicilio, telefono)
	VALUES 	('Acosta','Alberto','Colon 123','4234567'),
		('Juarez','Juan','Avellaneda 135','4458787'),
		('Lopez','Maria','Urquiza 333','4545454'),
		('Lopez','Jose','Urquiza 333','4545454'),
		('Suarez','Susana','Gral. Paz 1234','4123456');

UPDATE agenda SET nombre='Juan Jose' WHERE nombre LIKE 'Juan';

SELECT * FROM agenda;

UPDATE agenda SET telefono='4445566' WHERE telefono LIKE '4545454';

SELECT * FROM agenda;

UPDATE agenda SET nombre='Juan Jose' WHERE nombre LIKE 'Juan';	-- No changes...

SELECT * FROM agenda;

UPDATE agenda SET nombre='Juan Jose' WHERE nombre LIKE 'Juan';

SELECT * FROM agenda;

DROP TABLE IF EXISTS agenda;

 
/** ## EJERCICIO 16
 *******************************************************************************
 
Trabaje con la tabla "libros" de una librer�a.

1. Cr�ela con los siguientes campos: titulo (cadena de 30 caracteres de 
longitud), autor (cadena de 20), editorial (cadena de 15) y precio (float):
	* titulo varchar(30),
	* autor varchar(20),
	* editorial varchar(15),
	* precio float             
2. Ingrese los siguientes registros:
	* 'El aleph','Borges','Emece',25.00
	* 'Martin Fierro','Jose Hernandez','Planeta',35.50
	* 'Aprenda PHP','Mario Molina','Emece',45.50
	* 'Cervantes y el quijote','Borges','Emece',25
	* 'Matematica estas ahi','Paenza','Siglo XXI',15
3. Muestre todos los registros (5 registros):
4. Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (1 registro 
afectado)
5. Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" 
(ning�n registro afectado porque ninguno cumple la condici�n)
6. Actualice el precio del libro de "Mario Molina" a 27 pesos (1 registro afectado):
7. Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya 
editorial sea igual a "Emece" (3 registros afectados)
8. Luego de cada actualizaci�n ejecute un select que muestre todos los registros de la tabla.
9. Elimine la tabla creada.

 ******************************************************************************/

CREATE TABLE libros (
	titulo VARCHAR(30),
	autor VARCHAR(20),
	editorial VARCHAR(15),
	precio FLOAT             
);

SELECT table_name, column_name, udt_name, character_maximum_length
	FROM information_schema.columns WHERE table_name = 'libros';

INSERT INTO libros (titulo, autor, editorial, precio)
	VALUES 	('El aleph','Borges','Emece',25.00),
		('Martin Fierro','Jose Hernandez','Planeta',35.50),
		('Aprenda PHP','Mario Molina','Emece',45.50),
		('Cervantes y el quijote','Borges','Emece',25),
		('Matematica estas ahi','Paenza','Siglo XXI',15);

SELECT * FROM libros;

UPDATE libros SET autor='Adrian Paenza' WHERE autor LIKE 'Paenza';

SELECT * FROM libros;

UPDATE libros SET autor='Adrian Paenza' WHERE autor LIKE 'Paenza'; -- No changes...

SELECT * FROM libros;

UPDATE libros SET precio=27 WHERE autor LIKE 'Mario Molina';	

SELECT * FROM libros;

UPDATE libros SET editorial='Emece S.A.' WHERE editorial LIKE 'Emece';

SELECT * FROM libros;

DROP TABLE IF EXISTS libros;