CREATE TABLE mascota(
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
FOREIGN KEY(idEmpleado) REFERENCES mascota(idEmpleado)
)ENGINE=InnoDB;

-- 1 si no pongo la condicion cambia todo mis datos de la tabla y el campo que seleccione con datos repetidos
-- 2 cuando actualizo 
