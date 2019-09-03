-- se esta insertando clientes
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia) 
VALUES(31222,'Nilda','Huayta','Feliciano','direccion re reacaudaciones','2018-04-25',74790901,'auto');
-- 2
-- 665448484898 este 
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia) 
VALUES(312348,'Ahon','Rivald','manzano','Ocampo','departamento de educacion','1990-04-18',70790941,'auto');

-- 665448484898 este 

-- 3
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia) 
VALUES(31224,'Silvia','Celia','Feliciano','Cruz','banco sol','2019-04-27',60790901,'motos');

-- 4
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia) 
VALUES(31225,'Jhoana','espinoza','feliciano','banco sol','2019-04-28',69790901,'motos');

-- 5
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia)  
VALUES(316,'Licet','Maria','Kachi','Nina','banco sol','2016-04-25',65790901,'motos');


-- 7
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia)  
VALUES(31228,'Noemi','Villca','Romal','banco sol','2010-04-2',70000901,'motos');

-- 8
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia)  
VALUES(31229,'Marisol','Mary','panoso','Gomes','banco sol','1999-04-3',7071101,'motos');

-- 9
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia)  
VALUES(312210,'Diego','Eduardo','Hinojosa','Oto','banco sol','1999-04-4',790901,'motos');

-- 10
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,direccion,fechaNacimiento,telefono,fotografia)  
VALUES(312211,'jose','antonio','carrasco','sanches','banco sol','1999-04-5',707909050,'motos');



-- insertando datos de coche
insert into  coche(matricula,marca,modelo,precio,anio,color,esNuevo,cantidadNuevo,kilometrosRecorridos,activo)
values('3685HDR','toyota','crusier',2345.90,'1999-04-4','negro',TRUE,2,2.2 ,TRUE);
insert into  coche(matricula,marca,modelo,precio,anio,color,esNuevo,cantidadNuevo,kilometrosRecorridos,activo)
values('3685HDR','toyota','C-HR',2345,'170-04-7','azul',FALSE,1,30000.0 ,TRUE);
insert into  coche(matricula,marca,modelo,precio,anio,color,esNuevo,cantidadNuevo,kilometrosRecorridos,activo)
values('3685HDR','toyota','Highlander',2345,'200-02-4','verde',TRUE,2,1.0 ,TRUE);
insert into  coche(matricula,marca,modelo,precio,anio,color,esNuevo,cantidadNuevo,kilometrosRecorridos,activo)
values('76TR','zusuqui','faniliar',2345,'1999-04-4','amariilo',FALSE,2,200000.1 ,TRUE);
insert into  coche(matricula,marca,modelo,precio,anio,color,esNuevo,cantidadNuevo,kilometrosRecorridos,activo)
values('675RE','kia','optima',2345,'1999-04-4','purple',TRUE,2,0.1 ,TRUE);



 -- insertar datos de mecanico
insert into mecanico(ciMecanicoo,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaContrato,salario,fechaNacimiento,estadoCivil,fotografia,activo)
VALUES(31227,'Edson','Eduardo','Hidalg','Rofrigues','1999-04-30',200.500,'2015-04-25','S','imagen1',TRUE);

-- 7
INSERT INTO mecanico(ciMecanico,primerNombre,apellidoPaterno,apellidoMaterno,fechaContrato,salario,fechaNacimiento,estadoCivil,fotografia,activo)
VALUES(3128,'Noemi','Villca','Romal','1999-04-1',300.7,'2010-04-2','V','imagen2',TRUE);

-- 8
INSERT INTO mecanico(ciMecanico,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaContrato,salario,fechaNacimiento,estadoCivil,fotografia,activo)
VALUES(31229,'Marisol','Mary','panoso','Gomes','1999-04-2',300.7,'1999-04-3','S','imagen3',FALSE);

-- 9
INSERT INTO mecanico(ciMecanico,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaContrato,salario,fechaNacimiento,estadoCivil,fotografia,activo)
VALUES(312210,'Diego','Eduardo','Hinojosa','Oto','1999-04-3',500.456,'1999-04-4','D','imagen4',TRUE);

-- 10
INSERT INTO mecanico(ciMecanico,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaContrato,salario,fechaNacimiento,estadoCivil,fotografia,activo)
VALUES('312211','jose','antonio','carrasco','sanches','1999-04-4',500.456,'1999-04-5','C','imagen5',TRUE);

-- insertando datos de rol
insert  into rol(nombre)
values('administrador');

insert  into rol(nombre)
values('vendedor');

insert  into rol(nombre)
values('usuario');

insert  into rol(nombre)
values('cliente');

-- insertar datos de imagenCoche
insert into imagencoche(idCoche, rutaImagenCoche)
values(1,'/img/imagen1.png'),
       (2,'/img/imagen2.png'),
       (3,'/img/imagen3.png'),
       (4,'/img/imagen4.png'),
       (5,'/img/imagen5.png');

-- insertar datos de familiaMecanico
insert  into familiamecanico(ciMecanico, ciPersona, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, tipoParentesco, fechaNacimiento)
values(3128,111,'Edson','Eduardo','Hidalg','Rofrigues','mama','1999-04-5'),
       (31227,112,'Marisol','Mary','panoso','Gomes','esposa','1999-04-6'),
       (31229,113,'jose','antonio','carrasco','sanches','suegro','1999-04-7'),
       (312210,114,'Diego','Eduardo','Hinojosa','Oto','esposo','1999-04-8'),
       (312211,115,'Edson','Eduardo','Hidalg','Rofriguez','papa','1999-04-9');

-- insertando datos imagenCoche
 insert into imagenCoche(idcoche,rutaImagenCoche)
 values(1,'imagen1.png');
  insert into imagenCoche(idcoche,rutaImagenCoche)
 values(2,'imagen2.png');
  insert into imagenCoche(idcoche,rutaImagenCoche)
 values(3,'imagen3.png');
  insert into imagenCoche(idcoche,rutaImagenCoche)
 values(4,'imagen4.png');
  insert into imagenCoche(idcoche,rutaImagenCoche)
 values(5,'imagen5.png');

-- insertando datos usuario
insert  into usuario(ciUsuario, idRol, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, usuario, contrasenia, activo)
values(316,1,'Edson','Eduardo','Hidalg','Rofrigues','administrador','nil12',true),
       (31222,2,'veronica','vero','Hidalg','Rofrigues','contrasenia','78n2',false),
       (31224,3,'heber','eber','Hidalg','Rofrigues','vendedor','nn2',true),
       (31225,4,'neydi','jhislen','Hidalg','Rofrigues','cliente','123g',false ),
       (31228,1,'Edson','jhon','Hidalg','Rofrigues','administrador','456g',true);

insert  into venta(ciCliente, idCoche, ciUsuario, fecha, seguro)
values(316,1,316,'1999-04-9',true ),
       (31222,2,31222,'2000-04-9',false ),
       (31224,3,31224,'2019-04-9',true ),
       (312348,4,31225,'1998-04-9',false );
insert into venta(ciCliente, idCoche, ciUsuario, fecha, seguro)
VALUES(316,1,316,now(),1) ;


insert  into cochemecanico(idCoche, ciMecanico, fechaReparacion, horasTrabajadas)
values(1,3128,'2000-04-9','2000-04-9'),
       (2,31227,'2000-04-9','2000-04-9'),
       (3,31229,'2000-04-9','2000-04-9'),
       (4,312210,'2000-04-9','2000-04-9'),
       (5,312211,'2000-04-9','2000-04-9');
