drop database ventaCoche;
create database ventaCoche;
USE ventaCoche;
-- 1
CREATE TABLE cliente(
ciCliente INT UNIQUE PRIMARY KEY,
primerNombre VARCHAR(15) NOT NULL,
segundoNombre VARCHAR(15),
apellidoPaterno VARCHAR(15) NOT NULL,
apellidoMaterno VARCHAR(15) NULL,
direccion VARCHAR(30) NULL,
fechaNacimiento DATE NOT NULL,
telefono INT NOT NULL,
fotografia VARCHAR(25) NOT null
)ENGINE=InnoDB;
-- 2
CREATE TABLE coche(
idCoche INT AUTO_INCREMENT PRIMARY KEY,
matricula VARCHAR(15) NOT NULL,
marca VARCHAR(20) NOT NULL,
modelo VARCHAR(20) NOT NULL,
precio double NOT NULL,
anio DATE NOT null,
color VARCHAR(15) NULL,
esNuevo bool NOT null,
cantidadNuevo INT null,
kilometrosRecorridos double not null,
activo bool NOT NULL
)ENGINE=InnoDB;



-- 3
CREATE TABLE  mecanico(
ciMecanico INT UNIQUE PRIMARY KEY,
primerNombre VARCHAR(15) NOT NULL,
segundoNombre VARCHAR(15),
apellidoPaterno VARCHAR(15) NOT NULL,
apellidoMaterno VARCHAR(15) NULL,
fechaContrato DATE NOT NULL,
salario double NOT NULL,
fechaNacimiento DATE NOT null,
estadoCivil ENUM('S','C','D','V') NOT NULL,
fotografia VARCHAR(15)NULL,
activo bool NOT NULL
)ENGINE=InnoDB;


-- 4
CREATE TABLE rol(
idRol int AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(15)
)ENGINE=InnoDB;


CREATE TABLE imagenCoche(
idImagenCoche INT AUTO_INCREMENT PRIMARY KEY,
idCoche INT NOT null,
rutaImagenCoche VARCHAR (20) NULL,
FOREIGN KEY(idCoche) REFERENCES coche(idCoche)
)ENGINE=InnoDB;


CREATE TABLE familiaMecanico(
idFamiliaMecanico  INT AUTO_INCREMENT PRIMARY KEY,
ciMecanico int not null,
ciPersona INT UNIQUE  NOT NULL,
primerNombre VARCHAR(15) NOT NULL,
segundoNombre VARCHAR(15),
apellidoPaterno VARCHAR(15) NOT NULL,
apellidoMaterno VARCHAR(15) NULL,
tipoParentesco VARCHAR(15) NOT NULL,
fechaNacimiento DATE NOT NULL,
FOREIGN KEY(ciMecanico) REFERENCES mecanico(ciMecanico)
)ENGINE=InnoDB;


CREATE TABLE usuario(
ciUsuario INT UNIQUE PRIMARY KEY,
idRol INT NOT NULL,
primerNombre VARCHAR(15) NOT NULL,
segundoNombre VARCHAR(15),
apellidoPaterno VARCHAR(15) NOT NULL,
apellidoMaterno VARCHAR(15) NULL,
usuario VARCHAR(15) NOT NULL,
contrasenia VARCHAR(15) NOT NULL,
activo bool NOT NULL,
FOREIGN KEY(idRol) REFERENCES rol(idRol)
)ENGINE=InnoDB;

CREATE TABLE venta(
idVenta int AUTO_INCREMENT PRIMARY KEY,
ciCliente int NOT null,
idCoche int NOT null,
ciUsuario int not null,
fecha DATE NOT NULL,
seguro bool NOT NULL,
FOREIGN KEY(ciCliente) REFERENCES cliente(ciCliente),
FOREIGN KEY(idCoche) REFERENCES coche(idCoche),
FOREIGN KEY(ciUsuario) REFERENCES usuario(ciUsuario)

)ENGINE=InnoDB;

CREATE TABLE cocheMecanico(
idCocheMecanico int AUTO_INCREMENT PRIMARY KEY,
idCoche int not null,
ciMecanico int not null,
fechaReparacion DATE not null,
horasTrabajadas DATE not null,
FOREIGN KEY(idCoche) REFERENCES coche(idCoche),
FOREIGN KEY(ciMecanico) REFERENCES mecanico(ciMecanico)

)ENGINE=InnoDB;


--- consultas
----  1Listar aquellos empleados, donde muestre
-- su ci, nombre completo, edad de los trabajadores,
--- en su estado mostrar si esta activo un “Activo” y si no “Inactivo”.
SELECT m.ciMecanico,concat_ws(' ',m.apellidoPaterno,m.apellidoMaterno,m.segundoNombre,m.primerNombre) as NombreCompleto ,
        TIMESTAMPDIFF(YEAR,m.fechaNacimiento,CURDATE()) AS Edad,
       if(m.activo=1,'Activo','Inactivo') as Estado
FROM mecanico m;

----  2Listar los clientes con los respectivos vehículos que compraron.
SELECT concat_ws(' ',c.apellidoPaterno,c.apellidoMaterno,c.segundoNombre,c.primerNombre) as NombreCompleto,
            concat_ws(' ',c2.marca,c2.modelo)as Coche
FROM cliente c inner join venta v on c.ciCliente = v.ciCliente
    inner join coche c2 on v.idCoche = c2.idCoche;
----  3Listar cuantos años tienen cada mecánico.
SELECT concat_ws(' ',m.apellidoPaterno,m.apellidoMaterno,m.segundoNombre,m.primerNombre) as NombreCompleto ,
       TIMESTAMPDIFF(YEAR,m.fechaNacimiento,CURDATE()) AS Edad
FROM mecanico m
group by  m.ciMecanico;
-- -- 4.Listar todos aquellos clientes que compraron la marca del
-- vehiculo “Toyota”, y sus respectivos, modelos,
-- en la fecha que lo compraron, y cuanto tiempo ya lo tienen comprado.
SELECT concat_ws(' ',c.apellidoPaterno,c.apellidoMaterno,c.segundoNombre,c.primerNombre) as NombreCompleto,
       co.marca,co.modelo,v.fecha ,
       TIMESTAMPDIFF(YEAR,v.fecha,now()) AS 'Tiempo comprado'
FROM cliente c inner  join  venta v on c.ciCliente = v.ciCliente
inner join coche co on v.idCoche = co.idCoche
and co.marca='toyota'
group by co.modelo;
-- 5.Listar cuantos vehículos repararon cada uno de los mecánicos.
select count(co.idCoche)as 'cantidad de coches reparados',co.modelo
from mecanico m inner join cocheMecanico cM on m.ciMecanico = cM.ciMecanico
inner join coche co on cM.idCoche = co.idCoche
group by m.ciMecanico;










-- 6.Listar cuantos vehículos compraron cada uno de los clientes.

select c.ciCliente, concat_ws(' ',c.apellidoPaterno,c.apellidoMaterno,c.segundoNombre,c.primerNombre) as NombreCompleto,
       count(v.idCoche) as 'total de coches'
FROM cliente c inner  join  venta v on c.ciCliente = v.ciCliente
inner join coche co on v.idCoche = co.idCoche
group by c.ciCliente;


-- 7.Listar aquellos clientes que compraron mas de 3 vehiculos.


select c.ciCliente, concat_ws(' ',c.apellidoPaterno,c.apellidoMaterno,c.segundoNombre,c.primerNombre) as NombreCompleto,
       count(v.idCoche) as 'totalCoches'
FROM cliente c inner  join  venta v on c.ciCliente = v.ciCliente
inner join coche co on v.idCoche = co.idCoche
group by c.ciCliente
having totalCoches>3;

-- 8.Listar aquellos clientes que compraron mas de 3 vehiculos








-- que sean de las marcas: Zusuki, Toyota, Kia.
-- 9.Listar aquellos mecánicos que repararon vehículos de
-- segunda mano que sean de la marca ‘Suzuki’.
-- 10.Listar aquellos clientes que no hayan comprado
-- los vehiculos de marca Mazda, Nissan.