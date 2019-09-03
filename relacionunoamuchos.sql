DROP database relacionunoamuchos;
CREATE database relacionunoamuchos;
USE relacionunoamuchos;

-- 1:N un empleado dirige uno o mas proyectos
CREATE TABLE empleado(
ciEmpleado VARCHAR(10) PRIMARY KEY,
primerNombre VARCHAR(15) NOT NULL, 
segundoNombre VARCHAR(15), 
apellidoPaterno VARCHAR(15) NOT NULL, 
apellidoMaterno VARCHAR(15) NULL,
telefono INT NOT NULL,
genero ENUM('F','M') NOT NULL,
activo bool NOT NULL
)ENGINE=InnoDB;

CREATE TABLE proyecto(
idProyecto INT AUTO_INCREMENT PRIMARY KEY,
ciEmpleado VARCHAR(10) NOT NULL,
nombre VARCHAR(80) UNIQUE,
FOREIGN KEY(ciEmpleado) REFERENCES empleado(ciEmpleado)
)ENGINE=InnoDB;

INSERT INTO empleado(ciEmpleado,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,activo)  
VALUES('100-A','Alvaro','Angel','Quiroz','Fernandez',60912121,'M',TRUE);

INSERT INTO empleado(ciEmpleado,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,activo)  
VALUES('101','Natalia','','Quispe','Flores',60912122,'F',TRUE);

INSERT INTO empleado(ciEmpleado,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,activo)  
VALUES('102-B','Fabian','Armando','Aguilar','Zurita',60912123,'M',TRUE),
('103','Andrea','','Ramirez','Cardozo',60912124,'F',TRUE),
('104','Roman','Cirilo','Guardia','San Jinez',60912125,'M',TRUE),
('105','Jose Maria','Leonardo','Zubieta','Nuñez',60912126,'M',TRUE),
('106-C','Sebastian','','Ruiz','Camacho',60912127,'M',TRUE);

INSERT INTO empleado(ciEmpleado,primerNombre,segundoNombre,apellidoPaterno,
apellidoMaterno,telefono,genero,activo)  
VALUES('107','Carla','Jimena','Soliz','Luizaga',60912128,'F',TRUE);


INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('100-A','POA');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('101','Reforestacion de Plaza en Vinto');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('100-A','Plantacion de Arboles');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('102-B','Limpieza del Parque Ecologico Pairumani');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('101','Reciclaje de Plasticos');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('100-A','Reciclaje de Plasticos');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('100-A','Laboratorio Urbano para la Transformación de Plásticos');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('103','Realizacion de Jardines Interiorres');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('104','Transformación Creativa de Basura');
INSERT INTO proyecto(ciEmpleado,nombre) 
VALUES('103','La Alternativa Verde para Eliminar Plagas');








 

 











