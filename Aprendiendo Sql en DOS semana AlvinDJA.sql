

--2 - Crear una tabla (Create Table - sp_Tables - sp_Columns - Drop Table)
--Necesita almacenar los datos de sus amigos en una tabla. Los datos que guardará serán: apellido, 
--nombre, domicilio y teléfono.
 if object_id('agenda') is not null
  Drop Table agenda
  Go

 Create Table /agenda(
  nombre varchar(20), apellido varchar(30),
  domicilio varchar(30), telefono varchar(11))
  Go

 Create Table agenda(
  nombre varchar(20), apellido varchar(30),
  domicilio varchar(30), telefono varchar(11))
  Go

 Create Table agenda(
  nombre varchar(20), apellido varchar(30),
  domicilio varchar(30), telefono varchar(11))
  Go

 Exec sp_Tables @Table_owner='db1';
 Exec sp_Columns agenda;
 Drop Table agenda;

 Drop Table agenda;
----------------Segundo Problema-----------------
 if object_id('libros') is not null
  Drop Table libros;

 exec sp_Tables @Table_owner='db1';

 Create Table libros(
  titulo varchar(20), autor varchar(30),
  editorial varchar(15))
  Go

 Create Table libros(
  titulo varchar(20), autor varchar(30),
  editorial varchar(15))
  Go

 exec sp_Tables @Table_owner='db1';

 exec sp_Columns libros;

 Drop Table libros;

 Drop Table libros;
--3 - Insertar y recuperar registros de una tabla (Insert Into - Select)
if object_id('agenda') is not null
  Drop Table agenda;

 Create Table agenda(
  apellido varchar(30), nombre varchar(20),
  domicilio varchar(30), telefono varchar(11))
  Go

 exec sp_Tables @Table_owner='db1';

 exec sp_Columns agenda;

 Insert Into agenda (apellido, nombre, domicilio, telefono)
  Values ('Moreno','Alberto','Colon 123','4234567');
 Insert Into agenda (apellido,nombre, domicilio, telefono)
  Values ('Torres','Juan','Avellaneda 135','4458787');

 Select * From agenda;

 Drop Table agenda;

 Drop Table agenda;
----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema------------
 if object_id('libros') is not null
  Drop Table libros;

 Create Table libros (
 titulo varchar(20),autor varchar(30), editorial varchar(15))
 Go

 exec sp_Tables @Table_owner='db1';

 exec sp_Columns libros;

 Insert Into libros(titulo,autor,editorial)
  Values ('El aleph','Borges','Planeta'),
		 ('Martin Fierro','Jose Hernandez','Emece'),
		 ('Aprenda PHP','Mario Molina','Emece')
  Go

 Select * From libros;
  --4	Tipos de datos básicos
 if object_id('peliculas')is not null
  Drop Table peliculas;

 Create Table peliculas(
  nombre varchar(20), actor varchar(20),
  duracion integer, cantidad integer);
  Go

 exec sp_Columns peliculas;

 Insert Into peliculas (nombre, actor, duracion, cantidad)
  Values ('Mision imposible','Tom Cruise',128,3),
   ('Mision imposible 2','Tom Cruise',130,2),
   ('Mujer bonita','Julia Roberts',118,3),
   ('Elsa y Fred','China Zorrilla',110,2)
   Go

 Select * From peliculas;
 ----------------Segundo Problema----------------Segundo Problema-----------
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(20), documento varchar(8),
  sexo varchar(1), domicilio varchar(30),
  sueldobasico float)
  Go

 exec sp_Columns empleados;

 Insert Into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  Values ('Juan Perez','22333444','m','Sarmiento 123',500),
		 ('Ana Acosta','24555666','f','Colon 134',650),
		 ('Bartolome Barrios','27888999','m','Urquiza 479',800)
   Go

 Select * From empleados;

  --5	Recuperar algunos campos (Select)
  if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  titulo varchar(20), actor varchar(20),
  duracion integer, cantidad integer)
  Go

 exec sp_Columns peliculas;

 Insert Into peliculas (titulo, actor, duracion, cantidad)
  Values ('Mision imposible','Tom Cruise',180,3),
		 ('Mision imposible 2','Tom Cruise',190,2),
		 ('Mujer bonita','Julia Roberts',118,3),
		 ('Elsa y Fred','China Zorrilla',110,2);

 Select titulo, actor From peliculas
 Go

 Select titulo, duracion From peliculas
 Go

 Select titulo, cantidad From peliculas
 Go
----------------Segundo Problema----------------Segundo Problema---------------
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(20), documento varchar(8), 
  sexo varchar(1), domicilio varchar(30),
  sueldobasico float)
  Go

 exec sp_Columns empleados;

 Insert Into empleados (nombre, documento, sexo, domicilio, sueldobasico)
   Values ('Juan Juarez','22333444','m','Sarmiento 123',500),
		  ('Ana Acosta','27888999','f','Colon 134',700),
		  ('Carlos Caseres','31222333','m','Urquiza 479',850);

 Select * From empleados
 Go

 Select nombre, documento, domicilio From empleados
 Go

 Select documento, sexo, sueldobasico From empleados;
 Go
  --6	Recuperar algunos registros (Where)
   if object_id('agenda') is not null
  Drop Table agenda;

 Create Table agenda (
  apellido varchar(30), nombre varchar(20),
  domicilio varchar(30),telefono varchar(11))
  Go

 exec sp_Columns agenda;

 Insert Into agenda(apellido, nombre, domicilio,telefono) 
 Values('Acosta', 'Ana', 'Colon 123', '4234567'),
		('Bustamante', 'Betina', 'Avellaneda 135', '4458787'),
		('Lopez', 'Hector', 'Salta 545', '4887788'), 
		('Lopez', 'Luis', 'Urquiza 333', '4545454'),
		('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 Select * From agenda;

 Select * From agenda
  Where nombre='Marisa';

 Select nombre ,domicilio From agenda
  Where apellido='Lopez';

 Select nombre From agenda
  Where telefono='4545454';
----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-------------
 if object_id('libros') is not null
  Drop Table libros;

 Create Table libros (
  titulo varchar(20), autor varchar(30), editorial varchar(15))
  Go

 exec sp_Columns libros;

 Insert Into libros(titulo,autor,editorial) Values
  ('El aleph','Borges','Emece'),
  ('Martin Fierro','Jose Hernandez','Emece'),
  ('Martin Fierro','Jose Hernandez','Planeta'),
  ('Aprenda PHP','Mario Molina','Siglo XXI');

 Select * From libros
  Where autor='Borges';

 Select titulo From libros
  Where editorial='Emece';

 Select editorial From libros
  Where titulo='Martin Fierro';
  --7	Operadores relacionales
   if object_id('articulos') is not null
  Drop Table articulos;

 Create Table articulos(
  codigo integer, nombre varchar(20),
  descripcion varchar(30), precio float,
  cantidad integer)
  Go

 exec sp_Columns articulos;

 Insert Into articulos (codigo, nombre, descripcion, precio,cantidad)
  Values (1,'impresora','Epson Stylus C45',400.80,20),
   (2,'impresora','Epson Stylus C85',500,30),
   (3,'monitor','Samsung 14',800,10),
   (4,'teclado','ingles Biswal',100,50),
   (5,'teclado','español Biswal',90,50);

 Select * From articulos
  Where nombre='impresora';

 Select * From articulos
  Where precio>=400;

 Select codigo,nombre
  From articulos
  Where cantidad<30;

 Select nombre, descripcion
  From articulos
  Where precio <> 100;
----------------Segundo Problema----------------Segundo Problema----------------
 if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  titulo varchar(20), actor varchar(20),
  duracion integer, cantidad integer)
  Go

 Insert Into peliculas (titulo, actor, duracion, cantidad)
  Values ('Mision imposible','Tom Cruise',120,3),
   ('Mision imposible 2','Tom Cruise',180,4),
   ('Mujer bonita','Julia R.',90,1),
   ('Elsa y Fred','China Zorrilla',80,2);

 Select * From peliculas
  Where duracion<=90;

 Select * From peliculas
  Where actor<>'Tom Cruise';

 Select titulo, actor, cantidad
  From peliculas
  Where cantidad >2;
  --8	Borrar registros (Delete)
 if object_id('agenda') is not null
  Drop Table agenda;

 Create Table agenda(
  apellido varchar(30), nombre varchar(20),
  domicilio varchar(30), telefono varchar(11))
  Go

 Insert Into agenda (apellido,nombre,domicilio,telefono)
   Values('Alvarez','Alberto','Colon 123','4234567'),
   ('Juarez','Juan','Avellaneda 135','4458787'),
   ('Lopez','Maria','Urquiza 333','4545454'),
   ('Lopez','Jose','Urquiza 333','4545454'),
   ('Salas','Susana','Gral. Paz 1234','4123456');

 Delete From agenda
 Where nombre='Juan';

 Delete From agenda
 Where telefono='4545454';

 Select * From agenda;

 Delete From agenda;

 Select * From agenda;
 ----------------Segundo Problema----------------Segundo Problema------------
 
 if object_id('articulos') is not null
  Drop Table articulos;

 Create Table articulos(
  codigo integer, nombre varchar(20),
  descripcion varchar(30), precio float,
  cantidad integer)
  Go

 exec sp_Columns articulos;

 Insert Into articulos (codigo, nombre, descripcion, precio,cantidad)
  Values (1,'impresora','Epson Stylus C45',400.80,20),
   (2,'impresora','Epson Stylus C85',500,30),
   (3,'monitor','Samsung 14',800,10),
   (4,'teclado','ingles Biswal',100,50),
   (5,'teclado','español Biswal',90,50);

 Delete From articulos
  Where precio>=500;

 Select * From articulos;

 Delete From articulos
  Where nombre='impresora';

 Select * From articulos;

 Delete From articulos
  Where codigo<>4;

 Select * From articulos;
  --9	Actualizar registros (Update)
 if object_id('agenda') is not null
  Drop Table agenda;

 Create Table agenda(
  apellido varchar(30), nombre varchar(20),
  domicilio varchar(30),telefono varchar(11))
  Go

 Insert Into agenda (apellido,nombre,domicilio,telefono)
  Values ('Acosta','Alberto','Colon 123','4234567'),
   ('Juarez','Juan','Avellaneda 135','4458787'),
   ('Lopez','Maria','Urquiza 333','4545454'),
   ('Lopez','Jose','Urquiza 333','4545454'),
   ('Suarez','Susana','Gral. Paz 1234','4123456');

 Select * From agenda;

 Update agenda Set nombre='Juan Jose'
  Where nombre='Juan';

 Select * From agenda;

 Update agenda Set telefono='4445566'
  Where telefono='4545454';

 Select * From agenda;

 Update agenda Set nombre='Juan Jose'
  Where nombre='Juan';

 Select * From agenda;
 ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema------------

 if object_id('libros') is not null
  Drop Table libros;

 Create Table libros(
  titulo varchar(30), autor varchar(20),
  editorial varchar(15), precio float)
  Go

 Insert Into libros (titulo, autor, editorial, precio)
  Values ('El aleph','Borges','Emece',25.00),
   ('Martin Fierro','Jose Hernandez','Planeta',35.50),
   ('Aprenda PHP','Mario Molina','Emece',45.50),
   ('Cervantes y el quijote','Borges','Emece',25),
   ('Matematica estas ahi','Paenza','Siglo XXI',15);

 Select * From libros;
 
 Update libros Set autor='Adrian Paenza'
  Where autor='Paenza';

 Select * From libros;

 Update libros Set autor='Adrian Paenza'
  Where autor='Paenza';

 Select * From libros;

 Update libros Set precio=27
 Where autor='Mario Molina';

 Select * From libros;

 Update libros Set editorial='Emece S.A.'
  Where editorial='Emece';

 Select * From libros;
  --11	Valores null (is null)
  if object_id('medicamentos') is not null
   Drop Table medicamentos;

 Create Table medicamentos(
  codigo integer not null, nombre varchar(20) not null,
  laboratorio varchar(20), precio float,
  cantidad integer not null);

 exec sp_Columns medicamentos;

 Insert Into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  Values(1,'Sertal gotas',null,null,100),
  (2,'Sertal compuesto',null,8.90,150),
  (3,'Buscapina','Roche',null,200);

 Select * From medicamentos;

 Insert Into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  Values(4,'Bayaspirina','',0,150),
  (0,'','Bayer',15.60,0);

 Select * From medicamentos;

 Insert Into medicamentos (codigo, nombre, laboratorio, precio, cantidad)
  Values(null,'Amoxidal jarabe','Bayer',25,120);

 Select * From medicamentos
  Where laboratorio is null;

 Select * From medicamentos
  Where laboratorio='';

 Select * From medicamentos
  Where precio is null;

 Select * From medicamentos
  Where precio=0;

 Select * From medicamentos
  Where laboratorio<>'';

 Select * From medicamentos
  Where laboratorio is not null;

 Select * From medicamentos
  Where precio<>0;

 Select * From medicamentos
  Where precio is not null;
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema---------------
 if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  codigo int not null, titulo varchar(40) not null,
  actor varchar(20), duracion int);

 exec sp_Columns peliculas;

 Insert Into peliculas (codigo,titulo,actor,duracion)
  Values(1,'Mision imposible','Tom Cruise',120),
  (2,'Harry Potter y la piedra filosofal',null,180),
  (3,'Harry Potter y la camara secreta','Daniel R.',null),
  (0,'Mision imposible 2','',150),
  (4,'','L. Di Caprio',220),
  (5,'Mujer bonita','R. Gere-J. Roberts',0);

 Select * From peliculas;

 Insert Into peliculas (codigo,titulo,actor,duracion)
  Values(null,'Mujer bonita','R. Gere-J. Roberts',190);

 Select * From peliculas
  Where actor is null;

 Update peliculas Set duracion=120 Where duracion is null;

 Update peliculas Set actor='Desconocido'
  Where actor='';

 Select * From peliculas;

 Delete From peliculas
  Where titulo='';

 Select * From peliculas;
  --12	Clave primaria
 if object_id('libros') is not null
  Drop Table libros;

 Create Table libros(
  codigo int not null, titulo varchar(40) not null,
  autor varchar(20), editorial varchar(15),
  primary key(codigo));

 Insert Into libros (codigo,titulo,autor,editorial)
  Values (1,'El aleph','Borges','Emece'),
   (2,'Martin Fierro','Jose Hernandez','Planeta'),
   (3,'Aprenda PHP','Mario Molina','Nuevo Siglo'),
   (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta'),
   (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 Update libros Set codigo=1
  Where titulo='Martin Fierro';
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema----
 if object_id('alumnos') is not null
  Drop Table alumnos;

 Create Table alumnos(
  legajo varchar(4) not null, documento varchar(8),
  nombre varchar(30), domicilio varchar(30),
  primary key(documento), primary key(legajo));

 Create Table alumnos(
  legajo varchar(4) not null, documento varchar(8),
  nombre varchar(30), domicilio varchar(30),
  primary key(documento));

 exec sp_Columns alumnos;

 Insert Into alumnos (legajo,documento,nombre,domicilio)
  Values('A233','22345345','Perez Mariana','Colon 234'),
  ('A567','23545345','Morales Marcos','Avellaneda 348'),
  ('A642','23545345','Gonzalez Analia','Caseros 444'),
  ('A685',null,'Miranda Carmen','Uspallata 999');
  --13	Campo con atributo Identity
 if object_id('medicamentos') is not null
  Drop Table medicamentos;

 Create Table medicamentos(
  codigo int identity, nombre varchar(20) not null,
  laboratorio varchar(20), precio float,
  cantidad integer);

 exec sp_Columns medicamentos;

 Insert Into medicamentos (nombre, laboratorio,precio,cantidad)
   Values('Sertal','Roche',5.2,100),
  ('Buscapina','Roche',4.10,200),
  ('Amoxidal 500','Bayer',15.60,100);

 Select * From medicamentos;

 Insert Into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  Values(4,'Amoxilina 500','Bayer',15.60,100);

 Update medicamentos Set codigo=5
  Where nombre='Bayaspirina';

 Delete From medicamentos
  Where codigo=3;

 Insert Into medicamentos (nombre, laboratorio,precio,cantidad)
  Values('Amoxilina 500','Bayer',15.60,100);

 Select * From medicamentos;
----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema----
 if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  codigo int identity, titulo varchar(40),
  actor varchar(20), duracion int,
  primary key(codigo));

 exec sp_Columns peliculas;

 Insert Into peliculas (titulo,actor,duracion)
  Values('Mision imposible','Tom Cruise',120),
  ('Harry Potter y la piedra filosofal','Daniel R.',180),
  ('Harry Potter y la camara secreta','Daniel R.',190),
  ('Mision imposible 2','Tom Cruise',120),
  ('La vida es bella','zzz',220);

 Select * From peliculas;

 Update peliculas Set codigo=7
  Where codigo=4;

 Delete From peliculas
  Where titulo='La vida es bella';

 Insert Into peliculas (titulo,actor,duracion)
  Values('Elsa y Fred','China Zorrilla',90);

 Select * From peliculas;
  --14	Otras características del atributo Identity

 if object_id('medicamentos') is not null
  Drop Table medicamentos;

 Create Table medicamentos(
  codigo integer identity(10,1), nombre varchar(20) not null,
  laboratorio varchar(20),precio float,
  cantidad integer);

 Insert Into medicamentos (nombre, laboratorio,precio,cantidad)
   Values('Sertal','Roche',5.2,100),
  ('Buscapina','Roche',4.10,200),
  ('Amoxidal 500','Bayer',15.60,100);

 Select * From medicamentos;

 Insert Into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  Values(4,'Amoxilina 500','Bayer',15.60,100);

  Set identity_Insert medicamentos on;

 Insert Into medicamentos (nombre, laboratorio,precio,cantidad)
  Values('Amoxilina 500','Bayer',15.60,100);

 Insert Into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  Values(10,'Amoxilina 500','Bayer',15.60,100);

 Select ident_seed('medicamentos');

 Select ident_incr('medicamentos');

----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-----
 if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  codigo int identity (50,3),titulo varchar(40),
  actor varchar(20), duracion int);

 Insert Into peliculas (titulo,actor,duracion)
  Values('Mision imposible','Tom Cruise',120),
  ('Harry Potter y la piedra filosofal','Daniel R.',180),
  ('Harry Potter y la camara secreta','Daniel R.',190);

 Select * From peliculas;

 Set identity_Insert peliculas on;

 Insert Into peliculas (codigo,titulo,actor,duracion)
  Values(20,'Mision imposible 2','Tom Cruise',120),
  (80,'La vida es bella','zzz',220);

 Select ident_seed('peliculas');

 Select ident_incr('peliculas');

 Insert Into peliculas (titulo,actor,duracion)
  Values('Elsa y Fred','China Zorrilla',90);

 Set identity_Insert peliculas off; 

 Insert Into peliculas (titulo,actor,duracion)
  Values('Elsa y Fred','China Zorrilla',90);
 Select * From peliculas;
  --15	Truncate Table
 if object_id('alumnos') is not null
  Drop Table alumnos;

 Create Table alumnos(
  legajo int identity, documento varchar(8),
  nombre varchar(30),domicilio varchar(30));

 Insert Into alumnos (documento,nombre,domicilio)
  Values('22345345','Perez Mariana','Colon 234'),
  ('23545345','Morales Marcos','Avellaneda 348'),
  ('24356345','Gonzalez Analia','Caseros 444'),
  ('25666777','Torres Ramiro','Dinamarca 209');

 Delete From alumnos;

 Insert Into alumnos (documento,nombre,domicilio)
  Values('22345345','Perez Mariana','Colon 234'),
  ('23545345','Morales Marcos','Avellaneda 348'),
  ('24356345','Gonzalez Analia','Caseros 444'),
  ('25666777','Torres Ramiro','Dinamarca 209');

 Select * From alumnos;

 Truncate Table alumnos;

 Insert Into alumnos (documento,nombre,domicilio)
  Values('22345345','Perez Mariana','Colon 234'),
  ('23545345','Morales Marcos','Avellaneda 348'),
  ('24356345','Gonzalez Analia','Caseros 444'),
  ('25666777','Torres Ramiro','Dinamarca 209');

 Select * From alumnos;

 ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema----
 if object_id('articulos') is not null
  Drop Table articulos;

 Create Table articulos(
  codigo integer identity,nombre varchar(20),
  descripcion varchar(30),precio float);

 Insert Into articulos (nombre, descripcion, precio)
  Values ('impresora','Epson Stylus C45',400.80),
   ('impresora','Epson Stylus C85',500);

 Truncate Table articulos;

 Insert Into articulos (nombre, descripcion, precio)
  Values ('monitor','Samsung 14',800),
   ('teclado','ingles Biswal',100),
   ('teclado','español Biswal',90);

 Select * From articulos;

 Delete From articulos;

 Insert Into articulos (nombre, descripcion, precio)
  Values ('monitor','Samsung 14',800),
   ('teclado','ingles Biswal',100),
   ('teclado','español Biswal',90);

 Select * From articulos;
  --17	Tipo de dato (texto)
 if object_id('autos') is not null
  Drop Table autos;

 Create Table autos(
  patente char(6), marca varchar(20),
  modelo char(4), precio float,
  primary key (patente));

 Insert Into autos
  Values('ACD123','Fiat 128','1970',15000),
  ('ACG234','Renault 11','1990',40000),
  ('BCD333','Peugeot 505','1990',80000),
  ('GCD123','Renault Clio','1990',70000),
  ('BCC333','Renault Megane','1998',95000),
  ('BVF543','Fiat 128','1975',20000);

 Select * From autos
  Where modelo='1990';
----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-----------
 if object_id('clientes') is not null
  Drop Table clientes;

 Create Table clientes(
  documento char(8), apellido varchar(20),
  nombre varchar(20), domicilio varchar(30),
  telefono varchar (11));

 Insert Into clientes
  Values('2233344','Perez','Juan','Sarmiento 980','4342345'),
  ('2433344','Garcia','Luis','Avellaneda 1454','4558877'),
  ('2533344','Juarez','Ana','Urquiza 444','4789900');
  
  Insert Into clientes
  Values ('2333344','Perez','Ana','Colon 234');

 Select * From clientes
  Where apellido='Perez';

  --18	Tipo de dato (numérico)

 if object_id('cuentas') is not null
  Drop Table cuentas;

 Create Table cuentas(
  numero int not null, documento char(8),
  nombre varchar(30), saldo money,
  primary key (numero));

 Insert Into cuentas(numero,documento,nombre,saldo)
  Values('1234','25666777','Pedro Perez',500000.60),
		('2234','27888999','Juan Lopez',-250000),
		('3344','27888999','Juan Lopez',4000.50),
		('3346','32111222','Susana Molina',1000);

 Select * From cuentas
  Where saldo<4000;

 Select numero,saldo From cuentas
  Where nombre='Juan Lopez';

 Select * From cuentas
  Where saldo<0;

 Select * From cuentas
  Where numero>=3000;
 
----------------Segundo Problema----------------Segundo Problema-----------------
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(30), documento char(8),
  sexo char(1), domicilio varchar(30),
  sueldobasico decimal(7,2),cantidadhijos tinyint);

 Insert Into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  Values ('Juan Perez','22333444','m','Sarmiento 123',500,2),
  ('Ana Acosta','24555666','f','Colon 134',850,0),
  ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4),
('Susana Molina','29000555','f','Salta 876',800.888,3),
 ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

 Select * From empleados
  Where sueldobasico>=900;

 Select * From empleados
  Where cantidadhijos>0;
  --19	Tipo de dato (fecha y hora)	

 if object_id('alumnos') is not null
  Drop Table alumnos;

 Create Table alumnos(
  apellido varchar(30), nombre varchar(30),
  documento char(8), domicilio varchar(30),
  fechaingreso datetime, fechanacimiento datetime);

 Set dateformat 'dmy';

 Insert Into alumnos 
 Values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972'),
		('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972'),
		('Perez','Laura','26666666','Bulnes 345','03-03-91',null),
		('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 Select * From alumnos Where fechaingreso<'1-1-91';

 Select * From alumnos Where fechanacimiento is null;

 Insert Into alumnos Values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

 Set dateformat 'mdy';

 Insert Into alumnos 
 Values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
  --20	Ingresar algunos campos (Insert Into)
   if object_id('cuentas') is not null
  Drop Table cuentas;

 Create Table cuentas(
  numero int identity, documento char(8) not null,
  nombre varchar(30),saldo money);

 Insert Into cuentas
  Values (1,'25666777','Juan Perez',2500.50);

 Insert Into cuentas
  Values ('25666777','Juan Perez',2500.50);

 Insert Into cuentas (documento,saldo)
  Values ('28999777',-5500);

 Insert Into cuentas (numero,documento,nombre,saldo)
  Values (5,'28999777','Luis Lopez',34000);

 Insert Into cuentas (numero,documento,nombre)
  Values (3344,'28999777','Luis Lopez',34000);

 Insert Into cuentas (nombre, saldo)
  Values ('Luis Lopez',34000);

 Select * From libros;
  --21 - Valores por defecto (default)
 if object_id('visitantes') is not null
  Drop Table visitantes;

 Create Table visitantes(
  nombre varchar(30), edad tinyint,
  sexo char(1) default 'f', domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba', telefono varchar(11),
  email varchar(30) default 'no tiene', montocompra decimal (6,2));

 exec sp_Columns visitantes;

 Insert Into visitantes (nombre, domicilio, montocompra)
  Values ('Susana Molina','Colon 123',59.80);

 Insert Into visitantes (nombre, edad, ciudad, email)
  Values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');

 Select *From visitantes;

 Insert Into visitantes
  Values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 Insert Into visitantes default Values;

 Select * From visitantes;
 ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema---------
 if object_id('prestamos') is not null
  Drop Table prestamos;

 Create Table prestamos(
  titulo varchar(40) not null, documento char(8) not null,
  fechaprestamo datetime not null, fechadevolucion datetime,
  devuelto char(1) default 'n');

 Insert Into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  Values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18'),
   ('El aleph','22543987','2006-12-16','2006-08-19');
 Insert Into prestamos (titulo,documento,fechaprestamo)
  Values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 Insert Into prestamos (titulo,documento,fechaprestamo,devuelto)
  Values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

 Select * From prestamos;

 Insert Into prestamos
  Values('Manual de historia','32555666','2006-10-25',default,default);

 Select * From prestamos;

 Insert Into prestamos default Values;
  --22	Columnas calculadas (operadores aritméticos y de concatenación)	
 if object_id ('articulos') is not null
  Drop Table articulos;

 Create Table articulos(
  codigo int identity, nombre varchar(20),
  descripcion varchar(30), precio smallmoney,
  cantidad tinyint default 0, 
  primary key (codigo));

 Insert Into articulos (nombre, descripcion, precio,cantidad)
  Values ('impresora','Epson Stylus C45',400.80,20),
		('teclado','ingles Biswal',100,50);
   Insert Into articulos (nombre, descripcion, precio)
   Values('impresora','Epson Stylus C85',500),
		 ('monitor','Samsung 14',800);
   

 Update articulos Set precio=precio+(precio*0.15);

 Select * From articulos;

 Select nombre+','+descripcion
  From articulos;

 Update articulos Set cantidad=cantidad-5
 Where nombre='teclado';

 Select * From articulos;
  --23	Alias

 if object_id ('libros') is not null
  Drop Table libros;

 Create Table libros(
  codigo int identity, titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido', editorial varchar(20),
  precio decimal(6,2), cantidad tinyint default 0,
  primary key (codigo));

 Insert Into libros (titulo,autor,editorial,precio)
  Values('El aleph','Borges','Emece',25);
 Insert Into libros
  Values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 Insert Into libros (titulo,autor,editorial,precio,cantidad)
  Values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 Select titulo, autor,editorial,precio,cantidad,
  precio*cantidad as 'Monto Total'
  From libros;

 Select titulo,autor,precio, precio*0.1 as descuento,
  precio-(precio*0.1) as 'Preico Final'
  From libros
  Where editorial='Emece';

 Select titulo+' - '+autor as "Título y autor"
  From libros;	
  --27	Funciones para el uso de fechas y horas	
 if object_id ('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(30) not null, apellido varchar(20) not null,
  documento char(8), fechanacimiento datetime,
  fechaingreso datetime, sueldo decimal(6,2),
  primary key(documento));
 
 Insert Into empleados 
 Values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50),
	 ('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309),
	 ('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68),
	 ('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25),
	 ('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 Select nombre+space(1)+upper(apellido) as Nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo From empleados;

 Select documento, stuff(ceiling(sueldo),1,0,'$ ') From empleados;

 Select nombre,apellido From empleados
  Where datename(month, fechanacimiento)='October';

  --28	Ordenar registros (Order by)	

 if object_id('visitas') is not null
  Drop Table visitas;

 Create Table visitas (
  numero int identity, nombre varchar(30) default 'Anonimo',
  email varchar(50), pais varchar (20),
  fecha datetime, primary key(numero));

 Insert Into visitas (nombre,email,pais,fecha)
  Values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10'),
	('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30'),
	('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45'),
	('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15'),
	('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45'),
	('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20'),
	('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 Select * From visitas
  Order by fecha desc;

 Select nombre,pais, datename(month,fecha)
  From visitas
  Order by pais,datename(month,fecha) desc;

   Select nombre,email,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  From visitas
  Order by 3,4,5;

  --29 - Operadores lógicos ( and - or - not)
   if object_id('medicamentos') is not null
  Drop Table medicamentos;

 Create Table medicamentos(
  codigo int identity, nombre varchar(20),
  laboratorio varchar(20), precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo));

 Insert Into medicamentos
  Values('Sertal','Roche',5.2,100),
  ('Buscapina','Roche',4.10,200),
  ('Amoxidal 500','Bayer',15.60,100),
  ('Paracetamol 500','Bago',1.90,200),
  ('Bayaspirina','Bayer',2.10,150),
  ('Amoxidal jarabe','Bayer',5.10,250); 

 Select codigo,nombre
 From medicamentos
 Where laboratorio='Roche' and precio<5;

 Select * From medicamentos
  Where laboratorio='Roche' or precio<5;

 Select * From medicamentos
  Where not laboratorio='Bayer' and cantidad=100;

 Select * From medicamentos
  Where laboratorio='Bayer' and not cantidad=100;

 Delete From medicamentos
  Where laboratorio='Bayer' and precio>10;

 Update medicamentos set cantidad=200
  Where laboratorio='Roche' and precio>5;

 Delete From medicamentos
  Where laboratorio='Bayer' or precio<3;
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-----------------
   if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  codigo int identity, titulo varchar(40) not null,
  actor varchar(20), duracion tinyint,
  primary key (codigo));

 Insert Into peliculas(titulo, actor, duracion)
  Values('Mision imposible','Tom Cruise',120),
  ('Harry Potter y la piedra filosofal','Daniel R.',180),
  ('Harry Potter y la camara secreta','Daniel R.',190),
  ('Mision imposible 2','Tom Cruise',120),
  ('Mujer bonita','Richard Gere',120),
  ('Tootsie','D. Hoffman',90),
  ('Un oso rojo','Julio Chavez',100),
  ('Elsa y Fred','China Zorrilla',110);

 Select * From peliculas
  Where actor='Tom Cruise' or actor='Richard Gere';

 Select * From peliculas
  Where actor='Tom Cruise' and duracion<100;

 Update peliculas set duracion=200
  Where actor='Daniel R.' and duracion=180;

 Delete From peliculas
  Where not actor='Tom Cruise' and duracion<=100;
  --30 - Otros operadores relacionales (is null)
 if object_id('peliculas') is not null
  Drop Table peliculas;

 Create Table peliculas(
  codigo int identity, titulo varchar(40) not null,
  actor varchar(20), duracion tinyint,
  primary key (codigo));

 Insert Into peliculas
  Values('Mision imposible','Tom Cruise',120),
  ('Harry Potter y la piedra filosofal','Daniel R.',null),
  ('Harry Potter y la camara secreta','Daniel R.',190),
  ('Mision imposible 2','Tom Cruise',120),
  ('Mujer bonita',null,120),
  ('Tootsie','D. Hoffman',90);
 Insert Into peliculas (titulo)
  Values('Un oso rojo');

 Select * From peliculas
  Where actor is null;

 Update peliculas Set duracion=0
  Where duracion is null;

 Delete From peliculas
  Where actor is null and duracion=0;

 Select * From peliculas;
  --31 - Otros operadores relacionales (between)	
 if object_id('visitas') is not null
  Drop Table visitas;

 Create Table visitas (
  numero int identity, nombre varchar(30) default 'Anonimo',
  email varchar(50), pais varchar (20),
  fechayhora datetime, primary key(numero));

 Insert Into visitas (nombre,email,pais,fechayhora)
  Values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10'),
   ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30'),
  ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45'),
  ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15'),
  ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45'),
  ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20'),
  ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 Insert Into visitas (nombre,email,pais)
  Values ('Federico1','federicogarcia@xaxamail.com','Argentina');

 Select * From visitas
  Where fechayhora between '2006-09-12' and '2006-10-11';

 Select * From visitas
  Where numero between 2 and 5;
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-----------------
 if object_id('autos') is not null
  Drop Table autos;

 Create Table autos(
  patente char(6), marca varchar(20),
  modelo char(4), precio decimal(8,2),
  primary key(patente));

 Insert Into autos
  Values('ACD123','Fiat 128','1970',15000),
  ('ACG234','Renault 11','1980',40000),
  ('BCD333','Peugeot 505','1990',80000),
  ('GCD123','Renault Clio','1995',70000),
  ('BCC333','Renault Megane','1998',95000),
  ('BVF543','Fiat 128','1975',20000);

 Select * From autos
  Where modelo between '1970' and '1990'
  Order by modelo;

 Select * From autos
  Where precio between 50000 and 100000; 
  --32 - Otros operadores relacionales (in)	
 if object_id('medicamentos') is not null
  Drop Table medicamentos;

 Create Table medicamentos(
  codigo int identity, nombre varchar(20),
  laboratorio varchar(20), precio decimal(6,2),
  cantidad tinyint, fechavencimiento datetime not null,
  primary key(codigo));

 Insert Into medicamentos
  Values('Sertal','Roche',5.2,1,'2015-02-01'),
  ('Buscapina','Roche',4.10,3,'2016-03-01'),
  ('Amoxidal 500','Bayer',15.60,100,'2017-05-01'),
  ('Paracetamol 500','Bago',1.90,20,'2018-02-01'),
  ('Bayaspirina','Bayer',2.10,150,'2019-12-01'),
  ('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

 Select nombre,precio From medicamentos
  Where laboratorio in ('Bayer','Bago');

 Select * From medicamentos
  Where cantidad between 1 and 5;

 Select * From medicamentos
  Where cantidad in (1,2,3,4,5);
  --33	Búsqueda de patrones (like - not like)
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(30), documento char(8),
  domicilio varchar(30), fechaingreso datetime,
  seccion varchar(20), sueldo decimal(6,2),
  primary key(documento));

 Insert Into empleados
  Values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50),
  ('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30),
  ('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790),
  ('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550),
  ('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70),
  ('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400),
  ('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

 Select * From empleados
  Where nombre like '%Perez%';

 Select * From empleados
  Where domicilio like 'Co%8%';

 Select * From empleados
  Where documento like '%[02468]';

 Select * From empleados
  Where documento like '[^13]%' and nombre like '%ez';

 Select nombre From empleados
  Where nombre like '%[yj]%';

 Select nombre,seccion From empleados
  Where seccion like '[SG]_______';

 Select nombre,seccion From empleados
  Where seccion not like '[SG]%';

 Select nombre,sueldo From empleados
  Where sueldo not like '%.00';

 Select * From empleados
  Where fechaingreso like '%1990%';
  --34	Contar registros (count)	
 if object_id('medicamentos') is not null
  Drop Table medicamentos;

 Create Table medicamentos(
  codigo int identity, nombre varchar(20),
  laboratorio varchar(20), precio decimal(6,2),
  cantidad tinyint, fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo));

 Insert Into medicamentos
  Values('Sertal','Roche',5.2,1,'2015-02-01',null),
  ('Buscapina','Roche',4.10,3,'2016-03-01',null),
  ('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null),
  ('Paracetamol 500','Bago',1.90,20,'2018-02-01',null),
  ('Bayaspirina',null,2.10,null,'2019-12-01',null),
  ('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

 Select count(*)
  From medicamentos;

 Select count(laboratorio)
   From medicamentos;

 Select count(precio) as 'Con precio',
  count(cantidad) as 'Con cantidad'
  From medicamentos;

 Select count(precio)
  From medicamentos
  Where laboratorio like 'B%';

 Select count(numerolote) From medicamentos;	
 
  --36	Funciones de agrupamiento (count - sum - min - max - avg)	
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(30), documento char(8),
  domicilio varchar(30), seccion varchar(20),
  sueldo decimal(6,2), cantidadhijos tinyint,
  primary key(documento));

 Insert Into empleados
  Values('Juan Perez','22333444','Colon 123','Gerencia',5000,2),
  ('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0),
  ('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1),
  ('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3),
  ('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0),
  ('Yolanda Perez','35111222','Colon 180','Administracion',3200,1),
  ('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3),
  ('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4),
  ('Andres Costa','28444555',default,'Secretaria',null,null);

 Select count(*)
  From empleados;

 Select count(sueldo)
  From empleados
  Where seccion='Secretaria';

 Select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  From empleados;

 Select max(cantidadhijos)
  From empleados
  Where nombre like '%Perez%';

 Select avg(sueldo)
  From empleados;

 Select avg(sueldo)
  From empleados
  Where seccion='Secretaria';

 Select avg(cantidadhijos)
  From empleados
  Where seccion='Sistemas';

  --37	Agrupar registros (Group by)
 if object_id('visitantes') is not null
  Drop Table visitantes;

 Create Table visitantes(
  nombre varchar(30), edad tinyint,
  sexo char(1) default 'f', domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba', telefono varchar(11),
  email varchar(30) default 'no tiene', montocompra decimal (6,2));

 Insert Into visitantes
  Values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80),
   ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50),
   ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90),
   ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85),
   ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 Insert Into visitantes (nombre, edad,sexo,telefono, email)
  Values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');

 Insert Into visitantes (nombre, ciudad, montocompra)
  Values ('Alejandra Gonzalez','La Falda',280.50);
 
 Insert Into visitantes (nombre, edad,sexo, ciudad, email,montocompra)
  Values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
  
 Select ciudad, count(*)
  From visitantes
  Group by ciudad;

 Select ciudad, count(telefono)
  From visitantes
  Group by ciudad;

 Select sexo, sum(montocompra)
  From visitantes
  Group by sexo;

 Select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  From visitantes
  Group by sexo,ciudad;

 Select ciudad, avg(montocompra) as 'promedio de compras'
  From visitantes
  Group by ciudad;

 Select ciudad,
  count(*) as 'cantidad con mail'
  From visitantes
  Where email is not null and
  email<>'no tiene'
  Group by ciudad;

 Select ciudad,
  count(*) as 'cantidad con email'
  From visitantes
  Where email is not null and email<>'no tiene'
  Group by all ciudad;
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema--
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  nombre varchar(30), documento char(8),
  domicilio varchar(30), seccion varchar(20),
  sueldo decimal(6,2), cantidadhijos tinyint,
  fechaingreso datetime, primary key(documento));

 Insert Into empleados
  Values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10'),
  ('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12'),
  ('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25'),
  ('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25'),
  ('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01'),
  ('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01'),
  ('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01'),
  ('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01'),
  ('Andres Costa','28444555',default,'Secretaria',null,null,null);

 Select seccion, count(*)
  From empleados
  Group by seccion;

  Select seccion, avg(cantidadhijos) as 'promedio de hijos'
   From empleados
   Group by seccion;

 Select datepart(year,fechaingreso), count(*)
  From empleados
  Group by datepart(year,fechaingreso);

 Select seccion, avg(sueldo) as 'promedio de sueldo'
  From empleados
  Where cantidadhijos>0 and cantidadhijos is not null
  Group by seccion;

 Select seccion, avg(sueldo) as 'promedio de sueldo'
  From empleados
  Where cantidadhijos>0 and cantidadhijos is not null
  Group by all seccion;
  --38	Seleccionar grupos (having)		
 if object_id('clientes') is not null
  Drop Table clientes;

 Create Table clientes (
  codigo int identity, nombre varchar(30) not null,
  domicilio varchar(30),ciudad varchar(20),
  provincia varchar (20),telefono varchar(11),
  primary key(codigo));

 Insert Into clientes
  Values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null'),
   ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585'),
   ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445'),
   ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null),
   ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685'),
   ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525'),
   ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455'),
   ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null),
   ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366'),
   ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 Select ciudad, provincia,
  count(*) as cantidad
  From clientes
  Group by ciudad,provincia;

 Select ciudad, provincia,
  count(*) as cantidad
  From clientes
  Group by ciudad,provincia
  having count(*)>1;

 Select ciudad, count(*)
  From clientes
  Where domicilio like '%San Martin%'
  Group by all ciudad
  having count(*)<2 and ciudad <> 'Cordoba';
  ----------------Segundo Problema----------------Segundo Problema----------------Segundo Problema-----
 if object_id('visitantes') is not null
  Drop Table visitantes;

 Create Table visitantes(
  nombre varchar(30), edad tinyint,
  sexo char(1),domicilio varchar(30),
  ciudad varchar(20), telefono varchar(11),
  montocompra decimal(6,2) not null);

 Insert Into visitantes
  Values ('Susana Molina',28,'f',null,'Cordoba',null,45.50), 
   ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40),
   ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25),
   ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120),
   ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20),
   ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95),
   ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50),
   ('Roxana Lopez',20,'f','null','Alta Gracia',null,240),
   ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48),
   ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

 Select ciudad,sexo,
  sum(montocompra) as Total
  From visitantes
  Group by ciudad,sexo
  having sum(montocompra)>50;

 Select ciudad, sexo,
  sum(montocompra) as 'total'
  From visitantes
  Where montocompra>50 and telefono is not null
  Group by all ciudad,sexo
  having ciudad<>'Cordoba'
 Order by ciudad;

 Select ciudad,max(montocompra) as maximo
  From visitantes
  Where domicilio is not null and sexo='f'
  Group by all ciudad
  having max(montocompra)>50;

 Select ciudad,sexo, count(*) as cantidad,
  sum(montocompra) as total,
  avg(montocompra) as promedio
  From visitantes
  Group by ciudad,sexo
  having avg(montocompra)>30
  Order by total;
  
  --43	Registros duplicados (Distinct)		
 if object_id('clientes') is not null
  Drop Table clientes;

 Create Table clientes (
  codigo int identity, nombre varchar(30) not null,
  domicilio varchar(30), ciudad varchar(20),
  provincia varchar (20),  primary key(codigo));

 Insert Into clientes
  Values ('Lopez Marcos','Colon 111','Cordoba','Cordoba'),
   ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba'),
   ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba'),
   ('Perez Luis','Sarmiento 444','Rosario','Santa Fe'),
   ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba'),
   ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe'),
   ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba'),
   ('Lopez Carlos',null,'Cruz del Eje','Cordoba'),
   ('Ramos Betina','San Martin 999','Cordoba','Cordoba'),
   ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 Select Distinct provincia From clientes;

 Select count(Distinct provincia) as cantidad
  From clientes;

 Select Distinct ciudad From clientes;

 Select count(Distinct ciudad) From clientes;

 Select Distinct ciudad From clientes
  Where provincia='Cordoba';

 Select provincia,count(Distinct ciudad)
  From clientes
  Group by provincia;
  ----------------Segundo Problema----------------Segundo Problema---------------
 if object_id('inmuebles') is not null
  Drop Table inmuebles;

 Create Table inmuebles (
  documento varchar(8) not null, apellido varchar(30),
  nombre varchar(30), domicilio varchar(20),
  barrio varchar(20),ciudad varchar(20),
  tipo char(1),superficie decimal (8,2));

 Insert Into inmuebles
  Values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100),
   ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200),
   ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250),
   ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200),
   ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300),
   ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200),
   ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500),
   ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350),
   ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);

 Select Distinct apellido From inmuebles;

 Select Distinct documento From inmuebles;

 Select count(Distinct documento)
  From inmuebles
 Where ciudad='Cordoba';

 Select count(ciudad)
  From inmuebles
  Where domicilio like 'San Martin %';

 Select Distinct apellido,nombre 
  From inmuebles;

 Select documento,count(Distinct barrio) as 'cantidad'
  From inmuebles
  Group by documento;
  --44	Cláusula top		
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados (
  documento varchar(8) not null, nombre varchar(30),
  estadocivil char(1), seccion varchar(20));

 Insert Into empleados
  Values ('22222222','Alberto Lopez','c','Sistemas'),
   ('23333333','Beatriz Garcia','c','Administracion'),
   ('24444444','Carlos Fuentes','s','Administracion'),
   ('25555555','Daniel Garcia','s','Sistemas'),
   ('26666666','Ester Juarez','c','Sistemas'),
   ('27777777','Fabian Torres','s','Sistemas'),
   ('28888888','Gabriela Lopez',null,'Sistemas'),
   ('29999999','Hector Garcia',null,'Administracion');

 Select top 5 * From empleados;

 Select top 4 nombre,seccion
  From empleados
  Order by seccion;

 Select top 4 with ties nombre,seccion
  From empleados
  Order by seccion;

 Select top 4 nombre,estadocivil,seccion
  From empleados
  Order by estadocivil,seccion;

 Select top 4 with ties nombre,estadocivil,seccion
  From empleados
  Order by estadocivil,seccion;
  --53	Eliminar restricciones (Alter Table - Drop)	
 if object_id('vehiculos') is not null
  Drop Table vehiculos;

 Create Table vehiculos(
  patente char(6) not null,tipo char(1),
  horallegada datetime not null,horasalida datetime);

 Alter Table vehiculos
 Add constraint CK_vehiculos_tipo
 check (tipo in ('a','m'));

 Alter Table vehiculos
  Add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 Alter Table vehiculos
  Add constraint CK_vehiculos_patente_patron
  check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 Alter Table vehiculos
  Add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 Insert Into vehiculos 
 Values('SDR456','a','2005/10/10 10:10',null),
	('SDR456','m','2005/10/10 10:10',null),
	('SDR456','m','2005/10/10 12:10',null),
	('SDR111','m','2005/10/10 10:10',null);

 exec sp_helpconstraint vehiculos;

 Alter Table vehiculos
  Drop DF_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;

 Alter Table vehiculos
  Drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

 exec sp_helpconstraint vehiculos;

  --66	Combinación interna (inner join)
  if (object_id('clientes')) is not null
   Drop Table clientes;
  if (object_id('provincias')) is not null
   Drop Table provincias;

 Create Table clientes (
  codigo int identity,nombre varchar(30),
  domicilio varchar(30),ciudad varchar(20),
  codigoprovincia tinyint not null,primary key(codigo));

 Create Table provincias(
  codigo tinyint identity,nombre varchar(20),
  primary key (codigo) );

 Insert Into provincias (nombre) 
 Values('Cordoba'),
	('Santa Fe'),
	('Corrientes');

 Insert Into clientes 
 Values ('Lopez Marcos','Colon 111','Córdoba',1),
		('Perez Ana','San Martin 222','Cruz del Eje',1),
		('Garcia Juan','Rivadavia 333','Villa Maria',1),
		('Perez Luis','Sarmiento 444','Rosario',2),
		('Pereyra Lucas','San Martin 555','Cruz del Eje',1),
		('Gomez Ines','San Martin 666','Santa Fe',2),
		('Torres Fabiola','Alem 777','Ibera',3);

 Select c.nombre,domicilio,ciudad,p.nombre
  From clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 Select c.nombre,domicilio,ciudad,p.nombre
  From clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  Order by p.nombre;

 Select c.nombre,domicilio,ciudad
  From clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  Where p.nombre='Santa Fe';
  ----------------Segundo Problema----------------Segundo Problema-----
 if (object_id('inscriptos')) is not null
  Drop Table inscriptos;
 if (object_id('inasistencias')) is not null
  Drop Table inasistencias;

 Create Table inscriptos(
  nombre varchar(30), documento char(8),
  deporte varchar(15), matricula char(1), 
  primary key(documento,deporte));

 Create Table inasistencias(
  documento char(8),deporte varchar(15),
  fecha datetime);

 Insert Into inscriptos 
 Values('Juan Perez','22222222','tenis','s'),
	('Maria Lopez','23333333','tenis','s'),
	('Agustin Juarez','24444444','tenis','n'),
	('Marta Garcia','25555555','natacion','s'),
	('Juan Perez','22222222','natacion','s'),
	('Maria Lopez','23333333','natacion','n');

 Insert Into inasistencias 
 Values('22222222','tenis','2006-12-01'),
	('22222222','tenis','2006-12-08'),
	('23333333','tenis','2006-12-01'),
	('24444444','tenis','2006-12-08'),
	('22222222','natacion','2006-12-02'),
	('23333333','natacion','2006-12-02');

 Select nombre,insc.deporte,ina.fecha
  From inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  Order by nombre, insc.deporte;

 Select nombre, insc.deporte, ina.fecha
  From inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  Where insc.documento='22222222';

 Select nombre,insc.deporte, ina.fecha
  From inscriptos as insc
  join inasistencias as ina
  on insc.documento=ina.documento and
  insc.deporte=ina.deporte
  Where insc.matricula='s';

  --67	Combinación externa izquierda (left join)	
  if (object_id('clientes')) is not null
   Drop Table clientes;
  if (object_id('provincias')) is not null
   Drop Table provincias;

 Create Table clientes (
  codigo int identity, nombre varchar(30),
  domicilio varchar(30),ciudad varchar(20),
  codigoprovincia tinyint not null,primary key(codigo));

 Create Table provincias(
  codigo tinyint identity,nombre varchar(20),
  primary key (codigo));

 Insert Into provincias (nombre) 
 Values('Cordoba'),
	('Santa Fe'),
	('Corrientes');

 Insert Into clientes 
 Values ('Lopez Marcos','Colon 111','Córdoba',1),
	('Perez Ana','San Martin 222','Cruz del Eje',1),
	('Garcia Juan','Rivadavia 333','Villa Maria',1),
	('Perez Luis','Sarmiento 444','Rosario',2),
	('Gomez Ines','San Martin 666','Santa Fe',2),
	('Torres Fabiola','Alem 777','La Plata',4),
	('Garcia Luis','Sucre 475','Santa Rosa',5);

 Select c.nombre,domicilio,ciudad, p.nombre
  From clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 Select c.nombre,domicilio,ciudad, p.nombre
  From provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 Select c.nombre,domicilio,ciudad, p.nombre
  From clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  Where p.codigo is not null;

 Select c.nombre,domicilio,ciudad, p.nombre
  From clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  Where p.codigo is null
  Order by c.nombre;

 Select c.nombre,domicilio,ciudad, p.nombre
  From clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  Where p.nombre='Cordoba';

  --68	Combinación externa derecha (right join)
  if (object_id('clientes')) is not null
   Drop Table clientes;
  if (object_id('provincias')) is not null
   Drop Table provincias;

 Create Table clientes (
  codigo int identity,nombre varchar(30),
  domicilio varchar(30),ciudad varchar(20),
  codigoprovincia tinyint not null, primary key(codigo));

 Create Table provincias(
  codigo tinyint identity, nombre varchar(20),
  primary key (codigo));

 Insert Into provincias (nombre) 
 Values('Cordoba'),
	('Santa Fe'),
	('Corrientes');

 Insert Into clientes Values ('Lopez Marcos','Colon 111','Córdoba',1),
	('Perez Ana','San Martin 222','Cruz del Eje',1),
	('Garcia Juan','Rivadavia 333','Villa Maria',1),
	('Perez Luis','Sarmiento 444','Rosario',2),
	('Gomez Ines','San Martin 666','Santa Fe',2),
	('Torres Fabiola','Alem 777','La Plata',4),
	('Garcia Luis','Sucre 475','Santa Rosa',5);

 Select c.nombre,domicilio,ciudad, p.nombre
  From provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo;

 Select c.nombre,domicilio,ciudad, p.nombre
  From clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 Select c.nombre,domicilio,ciudad, p.nombre
  From provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  Where p.codigo is not null;

 Select c.nombre,domicilio,ciudad, p.nombre
  From provincias as p
  right join clientes as c
  on codigoprovincia = p.codigo
  Where p.codigo is null
  Order by ciudad;
  --69	Combinación externa completa (full join)	
 if (object_id('deportes')) is not null
  Drop Table deportes;
 if (object_id('inscriptos')) is not null
  Drop Table inscriptos;
 
 Create Table deportes(
  codigo tinyint identity,nombre varchar(30),
  profesor varchar(30),primary key (codigo));

 Create Table inscriptos(
  documento char(8), codigodeporte tinyint not null,
  matricula char(1));

 Insert Into deportes 
 Values('tenis','Marcelo Roca'),
	('natacion','Marta Torres'),
	('basquet','Luis Garcia'),
	('futbol','Marcelo Roca');
 
 Insert Into inscriptos 
 Values('22222222',3,'s'),
	('23333333',3,'s'),
	('24444444',3,'n'),
	('22222222',2,'s'),
	('23333333',2,'s'),
	('22222222',4,'n'),
	('22222222',5,'n'); 

 Select documento,d.nombre,matricula
  From inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

 Select documento,d.nombre,matricula
  From inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

 Select documento,d.nombre,matricula
  From deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

 Select nombre
  From deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  Where codigodeporte is null;

 Select documento
  From inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  Where codigo is null;

 Select documento,nombre,profesor,matricula
  From inscriptos as i
  full join deportes as d
  on codigodeporte=codigo; 
  ----------------Segundo Problema----------------Segundo Problema------
 if object_id('guardias') is not null
  Drop Table guardias;
 if object_id('tareas') is not null
  Drop Table tareas;

 Create Table guardias(
  documento char(8),nombre varchar(30),
  sexo char(1), domicilio varchar(30),
  primary key (documento));

 Create Table tareas(
  codigo tinyint identity, domicilio varchar(30),
  descripcion varchar(30),horario char(2),
  primary key (codigo));

 Insert Into guardias 
 Values('22333444','Juan Perez','m','Colon 123'),
	('24333444','Alberto Torres','m','San Martin 567'),
	('25333444','Luis Ferreyra','m','Chacabuco 235'),
	('23333444','Lorena Viale','f','Sarmiento 988'),
	('26333444','Irma Gonzalez','f','Mariano Moreno 111');

 Insert Into tareas 
 Values('Colon 1111','vigilancia exterior','AM'),
	('Urquiza 234','vigilancia exterior','PM'),
	('Peru 345','vigilancia interior','AM'),
	('Avellaneda 890','vigilancia interior','PM');

 Select nombre,t.domicilio,descripcion
  From guardias
  cross join tareas as t;

 Select nombre,t.domicilio,descripcion
  From guardias as g
  cross join tareas as t
  Where (g.sexo='f' and t.descripcion='vigilancia interior') or
  (g.sexo='m' and t.descripcion='vigilancia exterior');
  --70	Combinaciones cruzadas (cross join)
 if object_id('mujeres') is not null
  Drop Table mujeres;
 if object_id('varones') is not null
  Drop Table varones;

 Create Table mujeres(
  nombre varchar(30), domicilio varchar(30),
  edad int);

 Create Table varones(
  nombre varchar(30),domicilio varchar(30),
  edad int);

 Insert Into mujeres 
 Values('Maria Lopez','Colon 123',45),
	('Liliana Garcia','Sucre 456',35),
	('Susana Lopez','Avellaneda 98',41);

 Insert Into varones 
 Values('Juan Torres','Sarmiento 755',44),
	('Marcelo Oliva','San Martin 874',56),
	('Federico Pereyra','Colon 234',38),
	('Juan Garcia','Peru 333',50);

 Select m.nombre,m.edad,v.nombre,v.edad
  From mujeres as m
  cross join varones as v;

 Select m.nombre,m.edad,v.nombre,v.edad
  From mujeres as m
  cross join varones as v
  Where m.edad>40 and
  v.edad>40;

 Select m.nombre,m.edad,v.nombre,v.edad
  From mujeres as m
  cross join varones as v
  Where m.edad-v.edad between -10 and 10;
  ----------------Segundo Problema----------------Segundo Problema--
 if object_id('guardias') is not null
  Drop Table guardias;

 if object_id('tareas') is not null
  Drop Table tareas;

 Create Table guardias(
  documento char(8), nombre varchar(30),
  sexo char(1), domicilio varchar(30),
  primary key (documento) );

 Create Table tareas(
  codigo tinyint identity,domicilio varchar(30),
  descripcion varchar(30), horario char(2),
  primary key (codigo) );

 Insert Into guardias 
 Values('22333444','Juan Perez','m','Colon 123'),
 ('24333444','Alberto Torres','m','San Martin 567'),
 ('25333444','Luis Ferreyra','m','Chacabuco 235'),
 ('23333444','Lorena Viale','f','Sarmiento 988'),
 ('26333444','Irma Gonzalez','f','Mariano Moreno 111');

 Insert Into tareas 
 Values('Colon 1111','vigilancia exterior','AM'),
 ('Urquiza 234','vigilancia exterior','PM'),
 ('Peru 345','vigilancia interior','AM'),
 ('Avellaneda 890','vigilancia interior','PM');

 Select nombre,t.domicilio,descripcion
  From guardias
  cross join tareas as t;

 Select nombre,t.domicilio,descripcion
  From guardias as g
  cross join tareas as t
  Where (g.sexo='f' and t.descripcion='vigilancia interior') or
  (g.sexo='m' and t.descripcion='vigilancia exterior');
  
  --73	Combinación de más de dos tablas
 if object_id('socios') is not null
  Drop Table socios;

 if object_id('deportes') is not null
  Drop Table deportes;

 if object_id('inscriptos') is not null
  Drop Table inscriptos;

 Create Table socios(
  documento char(8) not null, nombre varchar(30),
  domicilio varchar(30), primary key(documento));

 Create Table deportes(
  codigo tinyint identity,nombre varchar(20),
  profesor varchar(15), primary key(codigo));

 Create Table inscriptos(
  documento char(8) not null, codigodeporte tinyint not null,
  anio char(4),matricula char(1),
  primary key(documento,codigodeporte,anio));

 Insert Into socios 
 Values('22222222','Ana Acosta','Avellaneda 111'),
 ('23333333','Betina Bustos','Bulnes 222'),
 ('24444444','Carlos Castro','Caseros 333'),
 ('25555555','Daniel Duarte','Dinamarca 44');

 Insert Into deportes 
 Values('basquet','Juan Juarez'),
	('futbol','Pedro Perez'),
	('natacion','Marina Morales'),
	('tenis','Marina Morales');

 Insert Into inscriptos 
 Values ('22222222',3,'2006','s'),
 ('23333333',3,'2006','s'),
 ('24444444',3,'2006','n'),
 ('22222222',3,'2005','s'),
 ('22222222',3,'2007','n'),
 ('24444444',1,'2006','s'),
 ('24444444',2,'2006','s'),
 ('26666666',0,'2006','s');

 Select s.nombre,d.nombre,anio
  From deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 Select s.nombre,d.nombre,anio,matricula
  From deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 Select s.nombre,d.nombre,anio,matricula
  From deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  Where s.documento='22222222';
  --82 Unión
  if object_id('clientes') is not null
  Drop Table clientes;
 if object_id('proveedores') is not null
  Drop Table proveedores;
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table proveedores(
  codigo int identity, nombre varchar (30),
  domicilio varchar(30), primary key(codigo ));
 
 Create Table clientes(
  codigo int identity, nombre varchar (30),
  domicilio varchar(30), primary key(codigo));
 
 Create Table empleados(
  documento char(8) not null, nombre varchar(20),
  apellido varchar(20),domicilio varchar(30),
  primary key(documento));

 Insert Into proveedores Values('Bebida cola','Colon 123'),
	('Carnes Unica','Caseros 222'),
	('Lacteos Blanca','San Martin 987'),
	('Supermercado Lopez','Avellaneda 34');
 
 Insert Into clientes Values('Almacen Anita','Colon 987'),
	('Garcia Juan','Sucre 345');
 
 Insert Into empleados Values('23333333','Federico','Lopez','Colon 987'),
	('28888888','Ana','Marquez','Sucre 333'),
	('30111111','Luis','Perez','Caseros 956');

 Select nombre, domicilio From proveedores
  union
  Select nombre, domicilio From clientes
   union
   Select (apellido+' '+nombre), domicilio From empleados;

 Select nombre, domicilio, 'proveedor' as categoria From proveedores
  union
  Select nombre, domicilio, 'cliente' From clientes
	union
	Select (apellido+' '+nombre), domicilio , 'empleado' From empleados
	Order by categoria;

  --83 Agregar y eliminar campos ( Alter Table - Add - Drop)
  if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  apellido varchar(20), nombre varchar(20),
  domicilio varchar(30),fechaingreso datetime );
 
 Insert Into empleados(apellido,nombre) Values ('Rodriguez','Pablo');

 Alter Table empleados
  Add sueldo decimal(5,2);

 exec sp_Columns empleados;

 Alter Table empleados
  Add codigo int identity;

 Alter Table empleados
  Add documento char(8) not null;

 Alter Table empleados
  Add documento char(8) not null default '00000000';

 exec sp_Columns empleados;

 Alter Table empleados
  Drop Column sueldo;

 exec sp_Columns empleados;

 Alter Table empleados
  Drop Column documento;

 Alter Table empleados
  Drop Column codigo,fechaingreso;

 exec sp_Columns empleados;
  --84	Alterar campos (Alter Table - Alter)
  if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  legajo int not null, documento char(7) not null,
  nombre varchar(10), domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires', sueldo decimal(6,2),
  cantidadhijos tinyint default 0, primary key(legajo));

 Alter Table empleados
  Alter Column nombre varchar(30);

 sp_columns empleados;

 Alter Table empleados
  Alter Column sueldo decimal(6,2) not null;

 Alter Table empleados
  Alter Column documento char(8) not null;

 Alter Table empleados
  Alter Column legajo tinyint not null;

 Insert Into empleados Values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3),
	(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 Alter Table empleados
  Alter Column nombre varchar(30) not null;

 Delete From empleados Where nombre is null;
 
 Alter Table empleados
  Alter Column nombre varchar(30) not null;

 Alter Table empleados
  Alter Column ciudad varchar(10);

 Insert Into empleados Values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 Alter Table empleados
  Alter Column ciudad varchar(15);

 Insert Into empleados Values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 Alter Table empleados
  Alter Column legajo int identity;

  --86	Campos calculados
   if object_id('articulos') is not null
  Drop Table articulos;

 Create Table articulos(
  codigo int identity, descripcion varchar(30),
  precio decimal(5,2) not null, cantidad smallint not null default 0,
  montototal as precio *cantidad);

 Insert Into articulos Values('birome',1.5,100,150);
 Insert Into articulos Values('birome',1.5,100);
 Insert Into articulos Values('cuaderno 12 hojas',4.8,150);
 Insert Into articulos Values('lapices x 12',5,200);

 Select * From articulos;

 update articulos set precio=2 Where descripcion='birome';
 Select * From articulos;

 update articulos set cantidad=200 Where descripcion='birome';
 Select * From articulos;

 update articulos set montototal=300 Where descripcion='birome';
  --92	Subconsultas como expresión	
   if object_id('alumnos') is not null
  Drop Table alumnos;

 Create Table alumnos(
  documento char(8), nombre varchar(30),
  nota decimal(4,2),primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),);

 Insert Into alumnos Values('30111111','Ana Algarbe',5.1);
 Insert Into alumnos Values('30222222','Bernardo Bustamante',3.2);
 Insert Into alumnos Values('30333333','Carolina Conte',4.5);
 Insert Into alumnos Values('30444444','Diana Dominguez',9.7);
 Insert Into alumnos Values('30555555','Fabian Fuentes',8.5);
 Insert Into alumnos Values('30666666','Gaston Gonzalez',9.70);

 Select alumnos.*
  From alumnos
  Where nota=
   (Select max(nota) From alumnos);

 Select documento ,nombre, nota
  From alumnos
  Where nota=
   (Select nombre,max(nota) From alumnos);

 Select alumnos.*,
 (Select avg(nota) From alumnos)-nota as diferencia
  From alumnos
  Where nota<
   (Select avg(nota) From alumnos);

 update alumnos set nota=4
  Where nota=
   (Select min(nota) From alumnos);

 Delete From alumnos
 Where nota<
   (Select avg(nota) From alumnos);
  --93	Subconsultas con in	
   if (object_id('ciudades')) is not null
   Drop Table ciudades;
  if (object_id('clientes')) is not null
   Drop Table clientes;

 Create Table ciudades(
  codigo tinyint identity, nombre varchar(20),
  primary key (codigo));

 Create Table clientes (
  codigo int identity, nombre varchar(30),
  domicilio varchar(30), codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,);

 Insert Into ciudades (nombre) 
 Values('Cordoba'),
	('Cruz del Eje'),
	('Carlos Paz'),
	('La Falda'),
	('Villa Maria');

 Insert Into clientes 
 Values ('Lopez Marcos','Colon 111',1),
	('Lopez Hector','San Martin 222',1),
	('Perez Ana','San Martin 333',2),
	('Garcia Juan','Rivadavia 444',3),
	('Perez Luis','Sarmiento 555',3),
	('Gomez Ines','San Martin 666',4),
	('Torres Fabiola','Alem 777',5),
	('Garcia Luis','Sucre 888',5);

 Select nombre
  From ciudades
  Where codigo in
   (Select codigociudad
     From clientes
     Where domicilio like 'San Martin %');

 Select distinct ci.nombre
  From ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  Where domicilio like 'San Martin%';

 Select nombre
  From ciudades
  Where codigo not in
   (Select codigociudad
     From clientes
     Where nombre like 'G%');

 Select codigociudad
  From clientes
  Where nombre like 'G%';
  --94	Subconsultas any - some - all	
  if object_id('inscriptos') is not null
  Drop Table inscriptos;
 if object_id('socios') is not null
  Drop Table socios;

 Create Table socios(
  numero int identity, documento char(8),
  nombre varchar(30), domicilio varchar(30),
  primary key (numero));
 
 Create Table inscriptos (
  numerosocio int not null, deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on Delete cascade,);

 Insert Into socios 
 Values('23333333','Alberto Paredes','Colon 111'),
	('24444444','Carlos Conte','Sarmiento 755'),
	('25555555','Fabian Fuentes','Caseros 987'),
	('26666666','Hector Lopez','Sucre 344');

 Insert Into inscriptos 
 Values(1,'tenis',1),
	(1,'basquet',2),
	(1,'natacion',1),
	(2,'tenis',9),
	(2,'natacion',1),
	(2,'basquet',default),
	(2,'futbol',2),
	(3,'tenis',8),
	(3,'basquet',9),
	(3,'natacion',0),
	(4,'basquet',10);

 Select numero,nombre,deporte
  From socios as s
  join inscriptos as i
  on numerosocio=numero;

 Select nombre
  From socios
  join inscriptos as i
  on numero=numerosocio
  Where deporte='natacion' and 
  numero= any
  (Select numerosocio
    From inscriptos as i
    Where deporte='tenis');

 Select deporte
  From inscriptos as i
  Where numerosocio=1 and
  deporte= any
   (Select deporte
    From inscriptos as i
    Where numerosocio=2);

 Select i1.deporte
  From inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  Where i1.numerosocio=1 and
  i2.numerosocio=2;

 Select deporte
  From inscriptos as i
  Where numerosocio=2 and
  cuotas>any
   (Select cuotas
    From inscriptos
    Where numerosocio=1);

 Select deporte
  From inscriptos as i
  Where numerosocio=2 and
  cuotas>all
   (Select cuotas
    From inscriptos
    Where numerosocio=1);

 Delete From inscriptos
  Where numerosocio=any
   (Select numerosocio 
    From inscriptos
    Where cuotas=0);

  --95	Subconsultas correlacionadas
  if object_id('inscriptos') is not null
  Drop Table inscriptos;
 
 if object_id('socios') is not null
  Drop Table socios;

 Create Table socios(
  numero int identity, documento char(8),
  nombre varchar(30), domicilio varchar(30),
  primary key (numero));
 
 Create Table inscriptos (
  numerosocio int not null, deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on Delete cascade,);

 Insert Into socios 
 Values('23333333','Alberto Paredes','Colon 111'),
	('24444444','Carlos Conte','Sarmiento 755'),
	('25555555','Fabian Fuentes','Caseros 987'),
	('26666666','Hector Lopez','Sucre 344');

 Insert Into inscriptos 
 Values(1,'tenis',1),
	(1,'basquet',2),
	(1,'natacion',1),
	(2,'tenis',9),
	(2,'natacion',1),
	(2,'basquet',default),
	(2,'futbol',2),
	(3,'tenis',8),
	(3,'basquet',9),
	(3,'natacion',0),
	(4,'basquet',10);

 Select nombre,domicilio,
  (Select count(*)
    From inscriptos as i
    Where s.numero=i.numerosocio) as 'deportes'
 From socios as s;

 Select nombre,
  (Select (count(*)*10)
    From inscriptos as i
    Where s.numero=i.numerosocio) as total,
  (Select sum(i.cuotas)
    From inscriptos as i
    Where s.numero=i.numerosocio) as pagas
 From socios as s;

 Select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  From socios as s
  join inscriptos as i
  on numero=numerosocio
  Group by nombre;
  --96	Subconsulta - Exists y Not Exists
 if object_id('inscriptos') is not null
  Drop Table inscriptos;
 
 if object_id('socios') is not null
  Drop Table socios;

 Create Table socios(
  numero int identity, documento char(8),
  nombre varchar(30), domicilio varchar(30),
  primary key (numero));
 
 Create Table inscriptos (
  numerosocio int not null, deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on Delete cascade,
 );

 Insert Into socios 
 Values('23333333','Alberto Paredes','Colon 111'),
	('24444444','Carlos Conte','Sarmiento 755'),
	('25555555','Fabian Fuentes','Caseros 987'),
	('26666666','Hector Lopez','Sucre 344');

 Insert Into inscriptos
 Values(1,'tenis',1),
	(1,'basquet',2),
	(1,'natacion',1),
	(2,'tenis',9),
	(2,'natacion',1),
	(2,'basquet',default),
	(2,'futbol',2),
	(3,'tenis',8),
	(3,'basquet',9),
	(3,'natacion',0),
	(4,'basquet',10);

 Select nombre
  From socios as s
  Where exists
   (Select *From inscriptos as i
     Where s.numero=i.numerosocio
     and i.deporte='natacion');

 Select nombre
  From socios as s
  Where not exists
   (Select *From inscriptos as i
     Where s.numero=i.numerosocio
     and i.deporte='natacion');

 Select s.*
  From socios as s
  Where exists
   (Select *From inscriptos as i
     Where s.numero=i.numerosocio
     and i.cuotas=10);
  --98	Subconsulta en lugar de una tabla
 if object_id('inscriptos') is not null
  Drop Table inscriptos;
 
 if object_id('socios') is not null
  Drop Table socios;
 
 if object_id('deportes') is not null
  Drop Table deportes;

 Create Table socios(
  documento char(8) not null,  nombre varchar(30),
  domicilio varchar(30), primary key(documento));

 Create Table deportes(
  codigo tinyint identity, nombre varchar(20),
  profesor varchar(15), primary key(codigo));
 
 Create Table inscriptos(
  documento char(8) not null,  codigodeporte tinyint not null,
  año char(4), matricula char(1),
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on Delete cascade);

 Insert Into socios 
 Values('22222222','Ana Acosta','Avellaneda 111'),
	('23333333','Betina Bustos','Bulnes 222'),
	('24444444','Carlos Castro','Caseros 333'),
	('25555555','Daniel Duarte','Dinamarca 44');

 Insert Into deportes 
 Values('basquet','Juan Juarez'),
	('futbol','Pedro Perez'),
	('natacion','Marina Morales'),
	('tenis','Marina Morales');

 Insert Into inscriptos Values ('22222222',3,'2006','s'),
	('23333333',3,'2006','s'),
	('24444444',3,'2006','n'),
	('22222222',3,'2005','s'),
	('22222222',3,'2007','n'),
	('24444444',1,'2006','s'),
	('24444444',2,'2006','s');

 Select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
 From deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 Select s.nombre,td.deporte,td.profesor,td.año,td.matricula
  From socios as s
  join (Select i.documento,i.codigodeporte,d.nombre as deporte, año, matricula, d.profesor
	From deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;

  --99	Subconsulta (update - Delete)	
 if object_id('inscriptos') is not null
  Drop Table inscriptos;

 if object_id('socios') is not null
  Drop Table socios;

 Create Table socios(
  numero int identity, documento char(8),
  nombre varchar(30), domicilio varchar(30),
  primary key (numero));
 
 Create Table inscriptos (
  numerosocio int not null, deporte varchar(20) not null,
  matricula char(1),
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero));

 Insert Into socios 
 Values('23333333','Alberto Paredes','Colon 111'),
	('24444444','Carlos Conte','Sarmiento 755'),
	('25555555','Fabian Fuentes','Caseros 987'),
	('26666666','Hector Lopez','Sucre 344');

 Insert Into inscriptos 
 Values(1,'tenis','s'),
	(1,'basquet','s'),
	(1,'natacion','s'),
	(2,'tenis','s'),
	(2,'natacion','s'),
	(2,'basquet','n'),
	(2,'futbol','n'),
	(3,'tenis','s'),
	(3,'basquet','s'),
	(3,'natacion','n'),
	(4,'basquet','n');

 update inscriptos set matricula='s'
  Where numerosocio=
   (Select numero
     From socios
     Where documento='25555555');

 Delete From inscriptos
  Where numerosocio in
   (Select numero
    From socios as s
    join inscriptos
    on numerosocio=numero
    Where matricula='n');
  --100	Subconsulta (Insert)
 if object_id('facturas') is not null
  Drop Table facturas;
 
 if object_id('clientes') is not null
  Drop Table clientes;

 Create Table clientes(
  codigo int identity, nombre varchar(30),
  domicilio varchar(30), primary key(codigo));

 Create Table facturas(
  numero int not null, fecha datetime,
  codigocliente int not null, total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade);

 Insert Into clientes 
 Values('Juan Lopez','Colon 123'),
	('Luis Torres','Sucre 987'),
	('Ana Garcia','Sarmiento 576'),
	('Susana Molina','San Martin 555');

 Insert Into facturas 
 Values(1200,'2007-01-15',1,300),
	(1201,'2007-01-15',2,550),
	(1202,'2007-01-15',3,150),
	(1300,'2007-01-20',1,350),
	(1310,'2007-01-22',3,100);

 if object_id ('clientespref') is not null
  Drop Table clientespref;
 
 Create Table clientespref(
  nombre varchar(30), domicilio varchar(30));

 Insert Into clientespref
  Select nombre,domicilio
   From clientes 
   Where codigo in 
    (Select codigocliente
     From clientes as c
     join facturas as f
     on codigocliente=codigo
     Group by codigocliente
     having sum(total)>500);

 Select * From clientespref;
  --101	Crear tabla a partir de otra (Select - Into)
 if object_id('empleados')is not null
  Drop Table empleados;
 
 if object_id('sucursales')is not null
  Drop Table sucursales;

 Create Table sucursales( 
  codigo int identity, ciudad varchar(30) not null,
  primary key(codigo)); 

 Create Table empleados( 
  documento char(8) not null, nombre varchar(30) not null,
  domicilio varchar(30), seccion varchar(20),
  sueldo decimal(6,2),
  codigosucursal int,
  primary key(documento),
  constraint FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on update cascade); 

 Insert Into sucursales 
 Values('Cordoba'),
	('Villa Maria'),
	('Carlos Paz'),
	('Cruz del Eje');

 Insert Into empleados 
 Values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1),
	('23333333','Carlos Caseros','Colon 222','Sistemas',800,1),
	('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2),
	('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2),
	('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3),
	('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4),
	('28888888','Luis Lopez','Lules 888','Sistemas',780,4),
	('29999999','Maria Morales','Marina 999','Contaduria',670,4);

 Select documento,nombre,domicilio,seccion,sueldo,ciudad
  From empleados
  join sucursales on codigosucursal=codigo;

 if object_id('secciones') is not null
  Drop Table secciones;

 Select distinct seccion as nombre
  Into secciones
  From empleados;

 Select *From secciones;

 if object_id('sueldosxseccion') is not null
  Drop Table sueldosxseccion;

 Select seccion, sum(sueldo) as total
  Into sueldosxseccion
  From empleados
  Group by seccion;

 Select *From sueldosxseccion;

 if object_id('maximossueldos') is not null
  Drop Table maximossueldos;

 Select top 3 *
  Into maximossueldos
  From empleados
  Order by sueldo;

 Select *From maximossueldos;

 if object_id('sucursalCordoba') is not null
  Drop Table sucursalCordoba;

 Select nombre,ciudad
  Into sucursalCordoba
  From empleados
  join sucursales
  on codigosucursal=codigo
  Where ciudad='Cordoba';

 Select *From sucursalCordoba;
  --103	Vistas
 if object_id('inscriptos') is not null  
  Drop Table inscriptos;
 
 if object_id('socios') is not null  
  Drop Table socios;
 
 if object_id('profesores') is not null  
  Drop Table profesores; 
 
 if object_id('cursos') is not null  
  Drop Table cursos;

 Create Table socios(
  documento char(8) not null, nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento));

 Create Table profesores(
  documento char(8) not null, nombre varchar(40),
  domicilio varchar(30),
  constraint PK_profesores_documento
   primary key (documento));

 Create Table cursos(
  numero tinyint identity, deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor char(8),
  constraint PK_cursos_numero
   primary key (numero),);

 Create Table inscriptos(
  documentosocio char(8) not null, numero tinyint not null,
  matricula char(1),
  constraint CK_inscriptos_matricula check (matricula in('s','n')),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero));

 Insert Into socios 
 Values('30000000','Fabian Fuentes','Caseros 987'),
	('31111111','Gaston Garcia','Guemes 65'),
	('32222222','Hector Huerta','Sucre 534'),
	('33333333','Ines Irala','Bulnes 345');

 Insert Into profesores Values('22222222','Ana Acosta','Avellaneda 231'),
	('23333333','Carlos Caseres','Colon 245'),
	('24444444','Daniel Duarte','Sarmiento 987'),
	('25555555','Esteban Lopez','Sucre 1204');

 Insert Into cursos 
 Values('tenis','lunes','22222222'),
	('tenis','martes','22222222'),
	('natacion','miercoles','22222222'),
	('natacion','jueves','23333333'),
	('natacion','viernes','23333333'),
	('futbol','sabado','24444444'),
	('futbol','lunes','24444444'),
	('basquet','martes','24444444');

 Insert Into inscriptos Values('30000000',1,'s'),
	('30000000',3,'n'),
	('30000000',6,null),
	('31111111',1,'s'),
	('31111111',4,'s'),
	('32222222',8,'s');

 if object_id('vista_club') is not null 
 Drop view vista_club;

 Create view vista_club as
  Select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   From socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;

 Select *From vista_club;

 Select deporte,dia,count(socio) as cantidad
  From vista_club
  Where deporte is not null
  Group by deporte,dia
  Order by cantidad;

 Select deporte,dia From vista_club
  Where socio is null and deporte is not null;

 Select socio From vista_club
  Where deporte is null and socio is not null;

 Select profesor From vista_club Where deporte is null and profesor is not null;

 Select socio, docsocio From vista_club Where deporte is not null and matricula <> 's';

 Select distinct profesor,dia
  From vista_club Where profesor is not null;

 Select distinct profesor,dia
  From vista_club Where profesor is not null
  Order by dia;

 Select socio From vista_club
  Where deporte='tenis' and dia='lunes';

 if object_id('vista_inscriptos') is not null
  Drop view vista_inscriptos;

 Create view vista_inscriptos as
  Select deporte,dia,
   (Select count(*)
    From inscriptos as i
    Where i.numero=c.numero) as cantidad
  From cursos as c;

 Select *From vista_inscriptos;
  --110	Lenguaje de control de flujo (case)
  if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  documento char(8) not null, nombre varchar(30) not null,
  sexo char(1), fechanacimiento datetime,
  fechaingreso datetime, cantidadhijos tinyint,
  sueldo decimal(5,2), primary key(documento));

 Insert Into empleados Values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550),
	('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650),
	('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510),
	('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700),
	('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400),
	('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420),
	('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350),
	('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390),
	('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 Select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  From empleados
  Where datepart(month,fechanacimiento)=5
  Group by sexo;

 Select nombre,datepart(year,fechaingreso) as añoingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as AñosdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  
     else 'No'
   end
  From empleados
  Where datepart(month,fechaingreso)=4;

 Select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  From empleados
  Order by sueldototal;

  --111	Lenguaje de control de flujo (if)
  if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  documento char(8) not null, nombre varchar(30) not null,
  sexo char(1), fechanacimiento datetime,
  sueldo decimal(5,2), primary key(documento));

 Insert Into empleados 
 Values ('22333111','Juan Perez','m','1970-05-10',550),
	('25444444','Susana Morales','f','1975-11-06',650),
	('20111222','Hector Pereyra','m','1965-03-25',510),
	('30000222','Luis LUque','m','1980-03-29',700),
	('20555444','Laura Torres','f','1965-12-22',400),
	('30000234','Alberto Soto','m','1989-10-10',420),
	('20125478','Ana Gomez','f','1976-09-21',350),
	('24154269','Ofelia Garcia','f','1974-05-12',390),
	('30415426','Oscar Torres','m','1978-05-02',400);

 if exists(Select * From empleados
	   Where datepart(month,fechanacimiento)=5)--si hay empleados que cumplan en mayo
  (Select sexo,count(*) as cantidad 
   From empleados
   Where datepart(month,fechanacimiento)=5
   Group by sexo)
 else Select 'no hay empleados que cumplan en mayo';
   ----------------Segundo Problema----------------Segundo Problema--
  if object_id('entradas') is not null
  Drop Table entradas;

 Create Table entradas(
  sala tinyint, fechahora datetime,
  capacidad smallint, entradasvendidas smallint,
  primary key(sala,fechahora));

 Insert Into entradas 
 Values(1,'2006-05-10 20:00',300,50),
	(1,'2006-05-10 23:00',300,250),
	(2,'2006-05-10 20:00',400,350),
	(2,'2006-05-11 20:00',400,380),
	(2,'2006-05-11 23:00',400,400),
	(3,'2006-05-12 20:00',350,350),
	(3,'2006-05-12 22:30',350,100),
	(4,'2006-05-12 20:00',250,0);

 if exists
  (Select * From entradas Where capacidad>entradasvendidas)
  Select sala,fechahora,capacidad-entradasvendidas as disponibles
   From entradas
   Where capacidad>entradasvendidas
 else Select 'Todas las entradas estan agotadas';
  --120	Procedimientos almacenados (crear - ejecutar)
  if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  documento char(8), nombre varchar(20),
  apellido varchar(20), sueldo decimal(6,2),
  cantidadhijos tinyint, seccion varchar(20),
  primary key(documento));

 Insert Into empleados 
 Values('22222222','Juan','Perez',300,2,'Contaduria'),
	('22333333','Luis','Lopez',300,0,'Contaduria'),
	('22444444','Marta','Perez',500,1,'Sistemas'),
	('22555555','Susana','Garcia',400,2,'Secretaria'),
	('22666666','Jose Maria','Morales',400,3,'Secretaria');

 if object_id('pa_empleados_sueldo') is not null
  Drop procedure pa_empleados_sueldo;

 Create procedure pa_empleados_sueldo
 as
  Select nombre,apellido,sueldo
   From empleados;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_hijos') is not null
  Drop procedure pa_empleados_hijos;

 Create procedure pa_empleados_hijos
 as
  Select nombre,apellido,cantidadhijos
   From empleados
   Where cantidadhijos>0;

 exec pa_empleados_hijos;

 update empleados set cantidadhijos=1 Where documento='22333333';
 exec pa_empleados_hijos;
  --135	Funciones escalares (crear y llamar)
  if object_id('consultas') is not null
  Drop Table consultas;
  
  if object_id('medicos') is not null
  Drop Table medicos;

 Create Table medicos (
  documento char(8) not null, nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento));

 Create Table consultas(
  fecha datetime, medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on Delete cascade);

 Insert Into medicos 
 Values('22222222','Alfredo Acosta'),
	('23333333','Pedro Perez'),
	('24444444','Marcela Morales');

 Insert Into consultas 
 Values('2007/03/26 8:00','22222222','Juan Juarez'),
	('2007/03/26 8:00','23333333','Gaston Gomez'),
	('2007/03/26 8:30','22222222','Nora Norte'),
	('2007/03/28 9:00','22222222','Juan Juarez'),
	('2007/03/29 8:00','24444444','Nora Norte'),
	('2007/03/24 8:30','22222222','Hector Huerta'), 
	('2007/03/24 9:30','23333333','Hector Huerta');

 if object_id('f_nombreDia') is not null
  Drop function f_nombreDia;

 Create function f_nombreDia
 (@fecha varchar(30))
  returns varchar(10)
  as
  begin
    declare @nombre varchar(10)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'miércoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 'sábado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha válida
    return @nombre
 end;
 
 if object_id('f_horario') is not null
  Drop function f_horario;

 Create function f_horario
 (@fecha varchar(30))
  returns varchar(5)
  as
  begin
    declare @nombre varchar(5)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
      set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
    end--si es una fecha válida
    return @nombre
 end;

 if object_id('f_fecha') is not null
  Drop function f_fecha;

 Create function f_fecha
 (@fecha varchar(30))
  returns varchar(12)
  as
  begin
    declare @nombre varchar(12)
    set @nombre='Fecha inválida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
    end--si es una fecha válida
    return @nombre
 end;

 Select db1.f_nombredia(fecha) as dia,
  db1.f_fecha(fecha) as fecha,
  db1.f_horario(fecha) as horario,
  paciente
  From consultas as c
  join medicos as m
  on m.documento=c.medico
  Where m.nombre='Alfredo Acosta';

 Select fecha, m.nombre
 From consultas as c
 join medicos as m
 on m.documento=c.medico
 Where db1.f_nombredia(fecha)='sábado';

 declare @valor char(30)
 set @valor='2007/04/09'
 Select db1.f_nombreDia(@valor);
   ----------------Segundo Problema----------------Segundo Problema--
  if object_id('empleados') is not null
  Drop Table empleados;
 
 Create Table empleados(
  documento char(8) not null, nombre varchar(30),
  fechanacimiento datetime, fechaingreso datetime,
  telefono char(12), email varchar(50));

  Insert Into empleados 
  Values('22222222', 'Ana Acosta', '1970/10/02', '1995/10/10', '4556677', 'anitaacosta@hotmail.com'),
	('25555555', 'Bernardo Bustos', '1973/01/15', '1999/02/15', '4789012', null),
	('30000000', 'Carlos Caseros', '1980/5/25', '2001/05/05', null, null),
	('32222222', 'Estela Esper', '1985/02/20', '2006/12/12', null, 'estelaesper@gmail.com');

 if object_id('f_edad') is not null
  Drop function f_edad;

 Create function f_edad
 (@fechaactual datetime,
  @fecha datetime='2007/01/01'
  )
  returns tinyint
  as
  begin
    declare @edad tinyint
    set @edad=null
    if (@fechaactual>=@fecha)
    begin
      set @edad=datepart(year,@fechaactual)-datepart(year,@fecha)
      if (datepart(month,@fecha)>datepart(month,@fechaactual))
       set @edad=@edad-1
      else 
        if (datepart(month,@fecha)=datepart(month,@fechaactual)) and 
	   (datepart(day,@fecha)>datepart(day,@fechaactual))
          set @edad=@edad-1
     end--es mayor la actual
    return @edad
  end;

 Select nombre, db1.f_edad(getdate(),fechanacimiento) as edad
  From empleados;

 Select nombre, db1.f_edad(fechaingreso,fechanacimiento) as 'edad al ingresar',
   db1.f_edad(getdate(),fechaingreso) as 'años de servicio'
  From empleados;

 Select db1.f_edad(getdate(),'1971/05/25');

 Select db1.f_edad();

 Select db1.f_edad(getdate(),default);

  if object_id('f_valorNulo') is not null
   Drop function f_valorNulo;

 Create function f_valorNulo
 (@valor varchar(50))
 returns varchar(50)
 begin
  if @valor is null
   set @valor='No tiene'
  return @valor
 end;

 Select documento,nombre,fechanacimiento,
  db1.f_valorNulo(telefono) as telefono,
  db1.f_valorNulo(email) as mail
  From empleados;

  --136	Funciones de tabla de varias instrucciones
 if object_id('empleados') is not null
  Drop Table empleados;

 Create Table empleados(
  documento char(8) not null, apellido varchar(30) not null,
  nombre varchar(30) not null, domicilio varchar(30),
  ciudad varchar(30), fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento));

 Insert Into empleados 
 Values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10'),
	('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15'),
	('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25'),
	('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  Drop function f_empleados;

 Create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado Table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   Insert @listado 
    Select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     From empleados
  else
   Insert @listado
   Select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   From empleados
  return
end;

 Select *From db1.f_empleados('total');

 Select *From db1.f_empleados();

 Select *From db1.f_empleados('');

 Select *From db1.f_empleados('parcial')
  Where domicilio='Cordoba';