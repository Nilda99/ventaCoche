-- primera forma
-- 1
INSERT INTO empleado 
VALUES(null,'1222','Nilda','Nil','Huayta','Feliciano',74790901,'F','1999-04-25',TRUE);
-- 2
INSERT INTO empleado 
VALUES(null,'1223','Jhon','Rivald','Huayta','Ocampo',70790941,'M','2007-12-17',FALSE);

-- 3
INSERT INTO empleado 
VALUES(null,'1224','Silvia','Celia','Feliciano','Cruz',60790901,'f','1990-01-12',TRUE);

-- 4
INSERT INTO empleado 
VALUES(null,'1225','Veronica','Vero','Huayta','feliciano',69790901,'F','2000-01-12',TRUE);

-- 5
INSERT INTO empleado 
VALUES(null,'1226','Licet','Maria','Kachi','Nina',65790901,'F','2001-01-12',TRUE);

-- 6
INSERT INTO empleado 
VALUES(null,'1227','Edson','Eduardo','Hidalg','Rofrigues',70790761,'M','1999-06-11',TRUE);

-- 7
INSERT INTO empleado 
VALUES(null,'1228','Noemi','Noe','Villca','Romal',70000901,'F','1999-05-12',TRUE);

-- 8
INSERT INTO empleado 
VALUES(null,'1229','Marisol','Mary','Chacon','Gomes',7071101,'F','1998-03-22',TRUE);

-- 9
INSERT INTO empleado 
VALUES(null,'12210','Diego','Eduardo','Hinojosa','Oto',790901,'M','1898-04-22',TRUE);

-- 10
INSERT INTO empleado 
VALUES(null,'12211','jose','antonio','sanches','sanches',707909050,'M','1998-01-12',TRUE);





-- segunda forma
-- 1
INSERT INTO empleado 
VALUES(null,'21222','Nilda','','Huayta','',74790901,'F','1999-04-25',TRUE);
-- 2
INSERT INTO empleado 
VALUES(null,'21223','Jhon','','Huayta','',70790941,'M','2007-12-17',FALSE);

-- 3
INSERT INTO empleado 
VALUES(null,'21224','Silvia','','Feliciano','',60790901,'f','1990-01-12',TRUE);

-- 4
INSERT INTO empleado 
VALUES(null,'21225','Veronica','','Huayta','',69790901,'F','2000-01-12',TRUE);

-- 5
INSERT INTO empleado 
VALUES(null,'21226','Licet','','Nina','',65790901,'F','2001-01-12',TRUE);

-- 6
INSERT INTO empleado 
VALUES(null,'21227','Edson','','Hidalg','',70790761,'M','1999-06-11',TRUE);

-- 7
INSERT INTO empleado 
VALUES(null,'21228','Noemi','','Vil','',70000901,'F','1999-05-12',TRUE);

-- 8
INSERT INTO empleado 
VALUES(null,'21229','Marisol','','Chacon','',7071101,'F','1998-03-22',TRUE);

-- 9
INSERT INTO empleado 
VALUES(null,'212210','Diego','','Hinojosa','',790901,'M','1898-04-22',TRUE);

-- 10
INSERT INTO empleado 
VALUES(null,'212211','jose','','sanches','',707909050,'M','1998-01-12',TRUE);




-- tercera forma
-- 1
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES(null,'31222','Nilda','Nil','Huayta','Feliciano',74790901,'F','1999-04-25',TRUE);
-- 2
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES(null,'31223','Jhon','Rivald','Huayta','Ocampo',70790941,'M','2007-12-17',FALSE);

-- 3
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES(null,'31224','Silvia','Celia','Feliciano','Cruz',60790901,'f','1990-01-12',TRUE);

-- 4
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES(null,'31225','Veronica','Vero','Huayta','feliciano',69790901,'F','2000-01-12',TRUE);

-- 5
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'31226','Licet','Maria','Kachi','Nina',65790901,'F','2001-01-12',TRUE);

-- 6
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'31227','Edson','Eduardo','Hidalg','Rofrigues',70790761,'M','1999-06-11',TRUE);

-- 7
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'31228','Noemi','Noe','Villca','Romal',70000901,'F','1999-05-12',TRUE);

-- 8
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'31229','Marisol','Mary','Chacon','Gomes',7071101,'F','1998-03-22',TRUE);

-- 9
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'312210','Diego','Eduardo','Hinojosa','Oto',790901,'M','1898-04-22',TRUE);

-- 10
INSERT INTO empleado(idDepartamento,idEmpleado,ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES(null,'312211','jose','antonio','sanches','sanches',707909050,'M','1998-01-12',TRUE);





-- cuarta forma

-- 1
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('41222','Nilda','Nil','Huayta','Feliciano',74790901,'F','1999-04-25',TRUE);
-- 2
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('41223','Jhon','Rivald','Huayta','Ocampo',70790941,'M','2007-12-17',FALSE);

-- 3
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('41224','Silvia','Celia','Feliciano','Cruz',60790901,'f','1990-01-12',TRUE);

-- 4
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('41225','Veronica','Vero','Huayta','feliciano',69790901,'F','2000-01-12',TRUE);

-- 5
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('41226','Licet','Maria','Kachi','Nina',65790901,'F','2001-01-12',TRUE);

-- 6
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('41227','Edson','Eduardo','Hidalg','Rofrigues',70790761,'M','1999-06-11',TRUE);

-- 7
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('41228','Noemi','Noe','Villca','Romal',70000901,'F','1999-05-12',TRUE);

-- 8
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('41229','Marisol','Mary','Chacon','Gomes',7071101,'F','1998-03-22',TRUE);

-- 9
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('412210','Diego','Eduardo','Hinojosa','Oto',790901,'M','1898-04-22',TRUE);

-- 10
INSERT INTO empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('412211','jose','antonio','sanches','sanches',707909050,'M','1998-01-12',TRUE);





-- quinta forma
-- 1
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Nilda','Nil','Huayta','Feliciano',74790901,'F','1999-04-25',TRUE);
-- 2
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Jhon','Rivald','Huayta','Ocampo',70790941,'M','2007-12-17',FALSE);

-- 3
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Silvia','Celia','Feliciano','Cruz',60790901,'f','1990-01-12',TRUE);

-- 4
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Veronica','Vero','Huayta','feliciano',69790901,'F','2000-01-12',TRUE);

-- 5
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('Licet','Maria','Kachi','Nina',65790901,'F','2001-01-12',TRUE);

-- 6
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('Edson','Eduardo','Hidalg','Rofrigues',70790761,'M','1999-06-11',TRUE);

-- 7
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('Noemi','Noe','Villca','Romal',70000901,'F','1999-05-12',TRUE);

-- 8
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('Marisol','Mary','Chacon','Gomes',7071101,'F','1998-03-22',TRUE);

-- 9
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('Diego','Eduardo','Hinojosa','Oto',790901,'M','1898-04-22',TRUE);

-- 10
INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('jose','antonio','sanches','sanches',707909050,'M','1998-01-12',TRUE);


INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('edgardo','antonio','zapata','sanches',708909050,'M','1998-01-12',TRUE);


INSERT INTO empleado(primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimiento,activo)  
VALUES('edwin','antonio','almanza','sanches',708909050,'M','1998-01-12',TRUE);



-- insercion de datos a tabla relacional, DEPARTAMENTO
-- DEBEN INSERTAR 20 registros
INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(112,81,'Almacenes');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1173,82,'salud');


INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(222,2,'Contaduria');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(333,3,'gestionClente');


INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(444,4,'finanzas');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(555,5,'administracion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(666,6,'comercial/ventas');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(777,7,'marketing');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(888,8,'controlDeGestion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(999,9,'produccion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1000,10,'recursosHumanos');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1112,11,'compras');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1212,12,'direccion/general');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(113,13,'produccion1');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(14232,14,'logistica');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1515,15,'manufacturacion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1616,16,'ventas');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1717,17,'compras');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1818,18,'sistemaDeGestion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(1919,19,'resepcion');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(2020,20,'controlDeInventario');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(2121,21,'gestionClente');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(2021,20,'finanzas1');

INSERT into departamento(idDepartamento,idEmpleado,nombre) 
VALUES(2122,21,'almacenes1');




----- insertando datos 
insert into empleado(ci,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,fechaNacimineto,activo)
values('2342','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('235','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('236','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('237','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('238','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('2349','eber','','kachi','nina',125424,'M','2019-02-01',1),
    ('2342','eber','','kachi','nina',125424,'M','2019-02-01',1);


INSERT into departamento(idEmpleado,nombre) 
VALUES(2,'gestionClente');


