
-- 1Verificar y explicar en caso de actualizar que sucede si no se coloca una condicion.
UPDATE empleado
set primerNombre='eber'; -- si no pongo la condicion cambia todo mis datos de la tabla y el campo que seleccione con datos repetidos


-- 2Verificar y explicar como se actualiza utilizando el order by.
UPDATE empleado
set primerNombre='licet'
where idEmpleado=5
ORDER BY primerNombre desc limit 2;

-- 3Listar aquellos empleados cuyo ci contenga el numero 2.
SELECT ci 
FROM empleado 
where ci like '%2%';
-- 4Listar los empleados que son jefes de algun departamento cuyo apellido paterno termine en ‘za’.
select e.apellidoPaterno as 'apellido paterno',d.nombre
from empleado e inner join departamento d on  e.idEmpleado=d.idEmpleado
where e.apellidoPaterno LIKE '%za';
-- group by d.idDepartamento;
-- 5listar empleados cuyo primer nombre contenga la cadena "mar "y el apellido paterno termine en "o"
select  primerNombre,apellidoPaterno 
from empleado 
where primerNombre like '%Mar%'and apellidoPaterno LIKE '%n'
group by primerNombre;

-- 6listar los departamentos con sus respectivos empleados ordenados de manera  descendente ,donde su numero 
-- telefonico contenga los numeros '89' y el primer nombre comience con "ed" y el apellido paterno termine en 'a
select d.nombre as departamento ,concat_ws(' ',e.primerNombre,e.apellidoPaterno)as empleados ,e.telefono 
from empleado e inner join  departamento d
on  e.idEmpleado=d.idEmpleado
and e.telefono like'%89%'
and e.primerNombre LIKE 'ed%'
AND e.apellidoPaterno LIKE '%a' 
group by d.idDepartamento
ORDER BY e.idEmpleado  desc ; 





