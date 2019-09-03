DROP database relacionmuchosamuchos;
CREATE database relacionmuchosamuchos;
USE relacionmuchosamuchos;

-- N:N 
-- El estudiante toma una o mas materias y las materias son tomadas por uno o mas estudiantes
CREATE TABLE estudiante(
idEstudiante INT AUTO_INCREMENT PRIMARY KEY,
ci VARCHAR(15) UNIQUE,
primerNombre VARCHAR(15) NOT NULL, 
segundoNombre VARCHAR(15), 
apellidoPaterno VARCHAR(15) NOT NULL, 
apellidoMaterno VARCHAR(15) NULL,
telefono INT NULL,
genero ENUM('F','M') NOT NULL,
fechaNacimiento DATE NOT NULL,
activo bool NOT NULL
)ENGINE=InnoDB;

CREATE TABLE materia(
idMateria VARCHAR(15) PRIMARY KEY,
nombre VARCHAR(30) UNIQUE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE asignacionMateria(
idAsignacionMateria INT AUTO_INCREMENT PRIMARY KEY,
idEstudiante INT NOT NULL,
idMateria VARCHAR(15) NOT NULL,
FOREIGN KEY(idEstudiante) REFERENCES estudiante(idEstudiante),
FOREIGN KEY(idMateria) REFERENCES materia(idMateria)
)ENGINE=InnoDB;

-- empleado con todos sus atributos llenados
INSERT INTO estudiante(ci,primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('123','Ana Rosa','Blanca','Paniagua','Diaz',60710101,'F','1985-10-22',TRUE);

INSERT INTO estudiante(ci,primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('121','Carlos','Oscar','Ojeda','Zambrana',70720101,'M','1985-10-08',TRUE);

INSERT INTO estudiante(ci,primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('122-ABC','Rocio','Olivia','Bullon','Escalante',70720991,'M','1986-02-08',TRUE);

INSERT INTO estudiante(ci,primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('125','Carlos','Oscar','Ojeda','Zambrana',70720101,'M','1985-10-08',TRUE);
-- sin CI
INSERT INTO estudiante(primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Luana','Gabriela','Llanos','Salvatierra',70730001,'F','1987-02-13',TRUE);

INSERT INTO estudiante(primerNombre,segundoNombre,apellidoPaterno, 
apellidoMaterno,telefono,genero,fechaNacimiento,activo) 
VALUES('Eduardo','Enrique','Lluta','Cuellar',70750099,'M','1987-11-13',TRUE);

-- solo con atributos obligatorios
INSERT INTO estudiante(primerNombre,apellidoPaterno,genero,fechaNacimiento,activo) 
VALUES('Santiago','Rodriguez','M','1986-08-30',TRUE);

INSERT INTO estudiante(primerNombre,apellidoPaterno,genero,fechaNacimiento,activo) 
VALUES('Waldo','Juarez','M','1987-05-15',TRUE);

-- materia 
INSERT INTO materia(idMateria,nombre) VALUES('300-ALGI','Algebra I');
INSERT INTO materia(idMateria,nombre) VALUES('310-CALI','Calculo I');
INSERT INTO materia(idMateria,nombre) VALUES('320-ING','Ingles');
INSERT INTO materia(idMateria,nombre) VALUES('400-PROG I','Programacion I');
INSERT INTO materia(idMateria,nombre) VALUES('500-ALG II','Algebra II');
INSERT INTO materia(idMateria,nombre) VALUES('510-CALC II','CALCULO II');
INSERT INTO materia(idMateria,nombre) VALUES('520-ESTDATOS I','Estructuras de Datos I');
INSERT INTO materia(idMateria,nombre) VALUES('530-ROB I','Robotica I');



-- asignacionMateria
-- Ana rosa panigua id 1
insert into asignacionMateria(idEstudiante,idMateria) VALUES(1,'300-ALGI');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(1,'320-ING');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(1,'400-PROG I');


-- carlos ojeda id :2
insert into asignacionMateria(idEstudiante,idMateria) VALUES(2,'300-ALGI');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(2,'310-CALI');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(2,'320-ING');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(2,'500-ALG II');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(2,'530-ROB I');
-- 3
insert into asignacionMateria(idEstudiante,idMateria) VALUES(3,'300-ALGI');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(3,'310-CALI');
insert into asignacionMateria(idEstudiante,idMateria) VALUES(3,'530-ROB I');




-- listar los estudiantes co  las respectivas materias que se le asigno
-- los datos de estudiante  mostar concatenados y renombrados 
-- con estudiante y materia renobrado con materia
select concat_ws(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre)as estudiante ,
m.nombre as materia 
from estudiante e inner join asignacionMateria am
on e.idEstudiante=am.idEstudiante
inner join materia m on am.idMateria=m.idMateria;


-- listar aquellos estudiantes que hayan tomado la materia de algebra1  y robotica1

select concat_ws(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre)as estudiante ,
m.nombre as materia 
from materia m inner join asignacionMateria am 
on m.idMateria=am.idMateria 
inner JOIN estudiante e on am.idEstudiante=e.idEstudiante
having (m.nombre="Algebra I" or m.nombre="Robotica I")
order by e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre;



select concat_ws(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre)as estudiante ,
m.nombre as materia 
from estudiante e inner join asignacionMateria am on e.idEstudiante=am.idEstudiante 
inner join materia m on am.idMateria=m.idMateria
AND m.nombre='Algebra I'
AND m.nombre='Robotica I'
order by e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre;



select  concat_ws(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre)as estudiante ,
m.nombre as materia 
from estudiante e ,asignacionMateria am,materia m 
where m.nombre='Algebra I'
and m.nombre='Robotica I'
AND m.idMateria =am.idMateria
AND am.idMateria=m.idMateria

-- eber 
select concat_ws(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre)as estudiantes ,
m.nombre as materia  
from materia m  inner join asignacionmateria a on m.idMateria=a.idMateria
and m.nombre='Algebra I' && m.nombre='Robotica I' 
join estudiante e on a.idEstudiante= e.idEstudiante
having 
group by  estudiantes


;



