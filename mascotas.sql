CREATE TABLE `Persona` (
  `ciPersona` VARCHAR(20) UNIQUE PRIMARY KEY,
  `primerNombre`VARCHAR(15)NOT NULL,
  `segundoNombre`VARCHAR(15),
  `apellidoPaterno`VARCHAR(15)NOT NULL,
  `apellidoMaterno`VARCHAR(15),
  `genero`ENUM('F','M')NOT NULL,
  `telefono`INT,
  `activo`bool NOT NULL
  
)ENGINE=InnoDB;

CREATE TABLE `Mascota` (
  `idMascota`INT PRIMARY KEY ,
  `ciPersona`VARCHAR(20) NOT NULL,
  `nombre`VARCHAR(20)NOT NULL,
  `duenio`VARCHAR(20)NOT NULL,
  `raza`VARCHAR(30)NOT NULL,
  `fechaNacimiento`DATE NOT NULL,
  `descripcion`TEXT,
FOREIGN KEY(ciPersona) REFERENCES persona(ciPersona)
 )ENGINE=InnoDB;

-- llenando datos de persona
-- 1
INSERT INTO Persona(ciPersona,primerNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo) 
VALUES('31222','Nilda','Huayta','Feliciano',74790901,'F',FALSE);
-- 2
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo) 
VALUES('31223','Jhon','Rivald','Huayta','Ocampo',70790941,'M',FALSE);

-- 3
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo) 
VALUES('31224','Silvia','Celia','Feliciano','Cruz',60790901,'f',TRUE);

-- 4
INSERT INTO Persona(ciPersona,primerNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo) 
VALUES('31225','Veronica','Huayta','feliciano',69790901,'F',TRUE);

-- 5
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('31226','Licet','Maria','Kachi','Nina',65790901,'F',TRUE);

-- 6
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('31227','Edson','Eduardo','Hidalg','Rofrigues',70790761,'M',TRUE);

-- 7
INSERT INTO Persona(ciPersona,primerNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('31228','Noemi','Villca','Romal',70000901,'F',TRUE);

-- 8
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('31229','Marisol','Mary','panoso','Gomes',7071101,'F',TRUE);

-- 9
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('312210','Diego','Eduardo','Hinojosa','Oto',790901,'M',TRUE);

-- 10
INSERT INTO Persona(ciPersona,primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno,telefono,genero,activo)  
VALUES('312211','jose','antonio','carrasco','sanches',707909050,'M',TRUE);


-- llenando datos de mascota
-- 1
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion) 
VALUES(1,'31222','loqui','Nilda','Bulldog','1999-04-25',"es un perro grande de color negro azabache su pelage es abundante ");
-- 2
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion) 
VALUES(2,'31223','sam','Rivald','LabradorRetriever','2007-12-17','es un perro pequeno de color crema a en la frente');

-- 3
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion) 
VALUES(3,'31224','golum','Celia','Poodle','1990-01-12','es un perro grande de color negro azabache su pelage es abundante ');

-- 4
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion) 
VALUES(4,'31225','max','Vero','Beagle','2000-01-12','es un perro grande de color negro azabache su pelage es abundante ');

-- 5
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(5,'31226','athos','Maria','Chihuahua','2001-01-12','es un perro grande de color negro azabache su pelage es abundante ');

-- 6
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(6,'31227','rex','Eduardo','PastorAleman','1999-06-11','es un perro grande de color negro azabache su pelage es abundante ');

-- 7
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(7,'31228','apolo','Noe','pug','1999-05-12','es un perro grande de color negro azabache su pelage es abundante ');

-- 8
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(8,'31229','tina','Mary','Boxer','1998-03-22','es un perro grande de color negro azabache su pelage es abundante ');

-- 9
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(9,'312210','bruce','Eduardo','Rottweiler','1898-04-22','es un perro grande de color negro azabache su pelage es abundante ');

-- 10
INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(10,'312211','drako','antonio','Dalmata','1998-01-12','es un perro grande de color negro azabache su pelage es abundante ');

INSERT INTO mascota(idMascota,ciPersona,nombre,duenio,raza,fechaNacimiento,descripcion)  
VALUES(11,'312211','yaxer','jhon','bethoben','2019-02-12','es un perro grande de color negro azabache su pelage es abundante ');

-- 1Listar las personas cuyo primer nombre contenga el character ‘s’ y
-- apellido paterno termine en el character ‘o’.  Los datos deben ser ordenados 
-- alfabeticamente y concatenados su nombre completo y renombrado como Persona.
SELECT CONCAT_WS(' ',primerNombre,segundoNombre,apellidoPaterno,apellidoMaterno)AS 'persona'
FROM Persona 
WHERE primerNombre like '%s%'
and apellidoPaterno LIKE '%o'
ORDER BY  persona;

-- Mostrar aquellas mascotas que hayan nacido entre los meses de febrero y junio.
SELECT nombre,fechaNacimiento
FROM mascota 
where (month(fechaNacimiento)=02 or month(fechaNacimiento)=05 );


-- Listar aquellas personas donde su Segundo nombre sean nulos y el apellido 
-- materno no sea nulo.
SELECT segundoNombre,apellidoMaterno
FROM persona 
where segundoNombre is null
and apellidoMaterno is not NULL;

-- Listar aquellas personas con sus respectivas mascotas.
-- De las personas mostrar su nombre completo concatenado y ordenados alfabeticamente 
-- como tambien mostrar el nombre de la mascota, año de nacimiento de la mascota,
-- raza y donde el estado de las personas estén en estado activo.
SELECt CONCAT_WS(' ',p.primerNombre,p.segundoNombre,p.apellidoPaterno,p.apellidoMaterno)AS 'persona',m.nombre,m.fechaNacimiento, m.raza,p.activo
FROM persona p INNER JOIN mascota m on p.ciPersona=m.ciPersona
where p.activo=TRUE
ORDER BY persona;