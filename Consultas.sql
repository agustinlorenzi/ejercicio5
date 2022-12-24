USE entrevista


-- Mostrar los nombres de los empleados ordenados alfab�ticamente (Z...A) 

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS' FROM EMPLEADOS ORDER BY NOMBRE DESC

--Seleccionar el nombre, el puesto y la localidad donde trabajan los empleados con puesto de �Soporte�.

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS', PUESTOS , LOCALIDAD
FROM EMPLEADOS E JOIN DEPARTAMENTOS D ON E.departamento_id=D.id_departamentos
                 JOIN LOCALIDADES L ON D.localidad_id=L.id_localidades
				 JOIN PUESTOS P ON E.puesto_id=P.id_puestos
WHERE puestos = 'Soporte'

--Listar los nombres de los empleados cuyo nombre termine con la letra �o�.

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS' FROM EMPLEADOS WHERE NOMBRE LIKE '%O'

--Seleccionar el nombre, el puesto y sueldo de los empleados que trabajan en la localidad Carlos Paz.

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS', PUESTOS ,SUELDO, LOCALIDAD
FROM EMPLEADOS E JOIN DEPARTAMENTOS D ON D.id_departamentos=E.departamento_id
                 JOIN LOCALIDADES L ON D.localidad_id=L.id_localidades
				 JOIN PUESTOS P ON E.puesto_id=P.id_puestos
WHERE LOCALIDAD = 'CARLOS PAZ'

--Seleccionar el nombre, sueldo y localidad donde trabajan de los empleados que tengan un sueldo entre 10000 y 13000.

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS' ,SUELDO, LOCALIDAD
FROM EMPLEADOS E JOIN DEPARTAMENTOS D ON E.departamento_id=D.id_departamentos
                 JOIN LOCALIDADES L ON D.localidad_id=L.id_localidades				 
WHERE SUELDO BETWEEN 100000 AND  160000   --CAMBIE LOS PRECIOS PORQUE CUANDO CARGUE CARGUE CON OTROS PRECIOS 

--Visualizar los departamentos con m�s de 5 empleados

SELECT DENOMINACION, COUNT (E.ID) 'EMPLEADOS' FROM empleados E
JOIN departamentos D ON D.id_departamentos=E.departamento_id
GROUP BY  denominacion
HAVING COUNT (D.id_departamentos)>=2  -- PUSE MENOS DE 5 EMPLEADOS PARA PODER VER PORQUE NO CARGUE TANTOS EMPLEADOS 

--Nombre de los empleados que trabajan en C�rdoba y cuyo puesto sea �Analista� o �Programador�.

SELECT NOMBRE+', '+APELLIDO 'EMPLEADOS' ,DENOMINACION, PUESTOS
FROM EMPLEADOS E JOIN DEPARTAMENTOS D ON E.departamento_id=D.id_departamentos  
                 JOIN puestos P ON E.puesto_id=P.id_puestos	 
WHERE (puestos like 'Analista' or puestos like 'Programador')  AND DENOMINACION IN (select denominacion from departamentos where denominacion = 'Cordoba')

--Calcula el sueldo medio de todos los empleados.

SELECT AVG(SUELDO) 'SUELDO MEDIO' FROM empleados

--�Cu�l es el m�ximo sueldo de los empleados del departamento 10?

SELECT MAX(SUELDO) FROM empleados WHERE departamento_id = 9 -- PUSE 9 PORQUE NO CARGUE DEPARTAMENTO 10 

--Calcula el sueldo m�nimo de los empleados del departamento �Soporte�. (DICE DEPARTAMENTO PERO SUPONGO ES "PUESTO SOPORTE")

SELECT MIN(SUELDO) 'SUELDO MINIMO' FROM empleados E JOIN PUESTOS P ON E.puesto_id=P.id_puestos WHERE puestos = 'Soporte'

--Para cada puesto obtener la suma de sueldos.

SELECT SUM(sueldo)'Sueldo',puestos  from  empleados e  join puestos p on e.puesto_id=p.id_puestos 
group by puestos 

