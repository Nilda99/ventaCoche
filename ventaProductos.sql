drop database ventaproductos;
create database ventaproductos;
USE ventaproductos;

create table cliente(
ciCliente VARCHAR(20) UNIQUE PRIMARY KEY,
primerNombre VARCHAR(15) NOT NULL,
segundoNombre VARCHAR(15),
apellidoPaterno VARCHAR(15) NOT NULL,
apellidoMaterno VARCHAR(15),
fechaRegistro DATE NOT NULL,
genero ENUM('F','M') NOT NULL,
fechaNacimiento DATE NOT NULL,
telefono int,
activo bool NOT NULL
  
)ENGINE=InnoDB;

create table tipoProducto(
    producto idTipoProducto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL

)ENGINE=InnoDB;

create table producto(
    idProducto INT AUTO_INCREMENT PRIMARY KEY,
    producto idTipoProducto int not null,
    precio float(5,2),
    nombreProducto VARCHAR(25) not NULL,
    descripcion text,
FOREIGN KEY producto(idTipoProducto) REFERENCES tipoProducto producto(idTipoProducto)
  
)ENGINE=InnoDB;

create table clienteProducto(
    idClienteProducto INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    ciCliente VARCHAR(20),
    idProducto int,
    FOREIGN KEY(ciCliente) REFERENCES cliente(ciCliente),
    FOREIGN KEY(idProducto) REFERENCES producto(idProducto)
)ENGINE=InnoDB;

-- se esta insertando clientes
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo) 
VALUES('31222','Nilda','Huayta','Feliciano','1999-04-25','F','2018-04-25',74790901,FALSE);
-- 2
-- 665448484898 este 
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo) 
VALUES('312348','Ahon','Rivald','manzano','Ocampo','1999-04-26','M','1990-04-18',70790941,FALSE);

-- 665448484898 este 

-- 3
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo) 
VALUES('31224','Silvia','Celia','Feliciano','Cruz','1999-04-27','F','2019-04-27',60790901,TRUE);

-- 4
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo) 
VALUES('31225','Jhoana','espinoza','feliciano','1999-04-28','F','2019-04-28',69790901,TRUE);

-- 5
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('31226','Licet','Maria','Kachi','Nina','1999-04-29','F','2016-04-25',65790901,TRUE);

-- 6
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('31227','Edson','Eduardo','Hidalg','Rofrigues','1999-04-30','M','2015-04-25',70790761,TRUE);

-- 7
INSERT INTO cliente(ciCliente,primerNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('31228','Noemi','Villca','Romal','1999-04-1','F','2010-04-2',70000901,TRUE);

-- 8
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('31229','Marisol','Mary','panoso','Gomes','1999-04-2','F','1999-04-3',7071101,TRUE);

-- 9
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('312210','Diego','Eduardo','Hinojosa','Oto','1999-04-3','M','1999-04-4',790901,TRUE);

-- 10
INSERT INTO cliente(ciCliente,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,fechaRegistro,genero,fechaNacimiento,telefono,activo)  
VALUES('312211','jose','antonio','carrasco','sanches','1999-04-4','M','1999-04-5',707909050,TRUE);

-- se esta insertando tipoProductos
INSERT INTO tipoProducto(nombre)
VALUES('lecheNatural');

INSERT INTO tipoProducto(nombre)
VALUES('lecheDeslactozada');

INSERT INTO tipoProducto(nombre)
VALUES('lecheSaborizada');

INSERT INTO tipoProducto(nombre)
VALUES('lecheCalsificada');

INSERT INTO tipoProducto(nombre)
VALUES('lecheChocolatada');

INSERT INTO tipoProducto(nombre)
VALUES('ArrosGranoDeOro');

INSERT INTO tipoProducto(nombre)
VALUES('QuesoRioGRande');

INSERT INTO tipoProducto(nombre)
VALUES('QuesoMozareala');

INSERT INTO tipoProducto(nombre)
VALUES('CerealChocapic');

INSERT INTO tipoProducto(nombre)
VALUES('AceiteFino');

-- se esta insertando producto
INSERT INTO producto(idTipoProducto,precio,nombreProducto,descripcion)
VALUES(1,1.50,'leche',"es una secreción nutritiva de color blanquecino ");

INSERT INTO producto(idTipoProducto,precio,nombreProducto,descripcion)
VALUES(6,1.50,'arroz',"Se trata de un cereal considerado alimento básico");

INSERT INTO producto(idTipoProducto,precio,nombreProducto,descripcion)
VALUES(7,1.50,'queso',"Alimento sólido que se obtiene por maduración de la cuajada de la leche una vez eliminado el suero");

INSERT INTO producto(idTipoProducto,precio,nombreProducto,descripcion)
VALUES(10,6.00,'aceite'," El aceite de oliva virgen extra de primera extracción en frío");

INSERT INTO producto(idTipoProducto,precio,nombreProducto,descripcion)
VALUES(9,6.00,'cereal',"El cereal es el rey de los alimentos");

-- se esta insertando clienteProducto 

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(2,'31222',1);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(2,'31223',3);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(7,'31224',2);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(10,'31225',5);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(3,'31226',5);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(2,'312348',5);

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto)
VALUES(7,'312348',2);
-- con hora mas 

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto,fecha)
VALUES(10,'31225',5,now());

INSERT INTO  clienteProducto(cantidad,ciCliente,idProducto,fecha)
VALUES(3,'31226',5,now());


--- con sultas de la practca 
-- 1.	Listar aquellos clientes que compraron productos de tipo leche. 
select c.primerNombre , p.nombreProducto
from cliente c inner join clienteProducto cp on c.ciCliente=cp.ciCliente
join producto p on cp.idProducto=p.idProducto
and p.nombreProducto='leche';

-- 2.	Listar aquellos clientes con los respectivos productos que compro, cantidad, fecha y hora que compraron. 
select c.primerNombre as clientes ,  p.nombreProducto as productos ,cp.cantidad,  DATE(cp.fecha) as Fecha,TIME(cp.fecha) as Hora
from cliente c inner join clienteProducto cp on c.ciCliente=cp.ciCliente
join producto p on cp.idProducto=p.idProducto
order by  clientes desc;

--group by  clientes;
--  3.	Lista aquellos clientes que compraron arroz donde el precio son de 6 Bs y no tengan el segundo
-- nombre nulo y el apellido materno nulo y su primer nombre empiece con A y su apellido paterno
-- contenga la cadena “za” y hayan nacido el año 1990 en el día 18. 

select c.primerNombre ,  p.nombreProducto as productos ,cp.cantidad
from cliente c inner join clienteProducto cp on c.ciCliente=cp.ciCliente
join producto p on cp.idProducto=p.idProducto
and p.nombreProducto='arroz' <<787+4
and p.precio=1.50
and c.segundoNombre is not null 
and c.apellidoMaterno is not null 
and c.primerNombre like 'A%' && c.apellidoPaterno like '%za%'<
and  year(c.fechaNacimiento)=1990  && day(c.fechaNacimiento)=18

--





alter table clienteProducto add( fecha DATETIME)