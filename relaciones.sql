-- comandos 
-- ingresar al gestor de base de datos
-- mysql -u root 
-- Mostrar base de datos
-- show databases;
-- create database prueba;
-- show databases;
-- use prueba;
-- show tables;
-- desc empleado;

DROP database relacionunoauno;
CREATE database relacionunoauno;
USE relacionunoauno;

CREATE TABLE empleado(
idEmpleado INT AUTO_INCREMENT PRIMARY KEY,
ci VARCHAR(15) UNIQUE,
primerNombre VARCHAR(15) NOT NULL, 
segundoNombre VARCHAR(15), 
apellidoPaterno VARCHAR(15) NOT NULL, 
apellidoMaterno VARCHAR(15) NULL,
telefono INT NOT NULL,
genero ENUM('F','M') NOT NULL,
fechaNacimiento DATE NOT NULL,
activo bool NOT NULL
)ENGINE=InnoDB;

CREATE TABLE departamento(
idDepartamento INT PRIMARY KEY,
idEmpleado INT NOT NULL,
nombre VARCHAR(20) UNIQUE,
FOREIGN KEY(idEmpleado) REFERENCES empleado(idEmpleado)
)ENGINE=InnoDB;

-- RELACION 1:1
-- insercion de datos a tabla primaria, EMPLEADO
-- DEBEN INSERTAR 50 registros
-- primera forma
INSERT INTO empleado 
VALUES(NULL,'122','Kevin','Eduardo','Hidalgo','Ocampo',70790901,'M','1998-01-12',TRUE);

INSERT INTO empleado 
VALUES(NULL,'125','Eduardo','German','Cartagena','Mamani',70790902,'M','1998-10-15',TRUE);

INSERT INTO empleado 
VALUES(NULL,'126','Josefina','Carla','Zurita','Osorio',60680801,'F','2000-09-09',TRUE);

-- segunda forma
INSERT INTO empleado 
VALUES(NULL,'121','Delfin','','Arroyo','',70790901,'M','1998-10-25',TRUE);

INSERT INTO empleado 
VALUES(NULL,'131','Delia','','Guardia','',607101011,'F','2000-10-18',TRUE);

INSERT INTO empleado 
VALUES(NULL,'132','Susana','','Llusco','',60710123,'F','2001-04-09',False);

INSERT INTO empleado 
VALUES(NULL,'133','Vania','','Durcal','',60710124,'F','2002-05-30',False);

INSERT INTO empleado 
VALUES(NULL,'134','Oscar','','Jimenez','',60710125,'F','2002-05-30',False);


-- tercera forma
INSERT INTO empleado(idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES(NULL,'123','Gabriel','Javier','Galarza','Lopez',70778789,'F','1999-03-01',TRUE);

-- cuarta forma
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('124','Sara','Oscar','Manzanero','Duran',60912120,'F','1999-05-11',TRUE);

INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('141','Rudi','Hugo','Morales','Flores',60912121,'F','1997-11-13',TRUE);

-- quinta forma
INSERT INTO empleado(primerNombre,apellidoPaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Cenit','Cartagena',60912003,'F','1999-12-15',TRUE);

INSERT INTO empleado(primerNombre,apellidoPaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Gloria','Teran',70745451,'F','1997-08-19',TRUE);


-- insercion de datos a tabla relacional, DEPARTAMENTO
-- DEBEN INSERTAR 20 registros
INSERT INTO departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1001,4,'Almacenes');

INSERT INTO departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1002,9,'Contaduria');

INSERT INTO departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1003,4,'Finanzas');

INSERT INTO departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1004,11,'Marketing');


























