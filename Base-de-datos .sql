create database entrevista

use entrevista
create table empleados 
(id int primary key,
apellido varchar(80),
comision int,
departamento_id int,
edad int,
fechaalta date,
nombre varchar(80),
puesto_id int,
sueldo int)

create table departamentos
(id_departamentos int primary key,
denominacion varchar(80),
localidad_id int)

create table localidades
(id_localidades int,
activo int,
localidad varchar(80))

create table puestos 
(id_puestos int,
activo int, 
puestos varchar(80))




select * from puestos
insert into puestos values (1,2,'Analista')
insert into puestos values (2,2,'Programador')
insert into puestos values (3,1,'Desarrollador')
insert into puestos values (4,3,'Tester')
insert into puestos values (5,1,'RRHH')
insert into puestos values (6,1,'WEB')
insert into puestos values (7,2,'Soporte')

select * from empleados 
insert into empleados values (1,'Lopez',1,1,25,'1992-11-11','Megan',2,150000)
insert into empleados values (2,'Gomez',1,3,25,'1992-11-11','Lucas',1,150000)
insert into empleados values (3,'Simpson',1,1,25,'1992-11-11','Homero',1,150000)
insert into empleados values (4,'Lupiz',2,2,25,'1992-11-11','Federico',2,150000)
insert into empleados values (5,'Kamaka',2,1,25,'1992-11-11','Megan',4,150000)
insert into empleados values (6,'Loorenzi',1,5,25,'1992-11-11','Agustin',2,150000)
insert into empleados values (7,'MCandre',1,1,25,'1992-11-11','Laura',5,150000)
insert into empleados values (8,'Benitez',5,7,30,'1992-11-11','Juan',7,100000)
insert into empleados values (9,'Contreraz',3,8,31,'1992-11-11','Veronica',3,160000)
insert into empleados values (10,'Carrion',2,9,22,'1992-11-11','Ana Maria',1,140000)
insert into empleados values (11,'Miley',2,9,22,'1992-11-11','Susana',2,1800000)
insert into empleados values (12,'Videla',5,9,22,'1992-11-11','Sara',1,1680000)

select * from departamentos
insert into departamentos values (1,'Tulumba',2)
insert into departamentos values (2,'Cruz del Eje',3)
insert into departamentos values (3,'Calamuchita',4)
insert into departamentos values (4,'Sobremonte',1)
insert into departamentos values (5,'Punilla',5)
insert into departamentos values (6,'Poco',6)
insert into departamentos values (7,'Juarez Celman',7)
insert into departamentos values (8,'San Roque',8)
insert into departamentos values (9,'Cordoba',9)

select * from localidades
insert into localidades values (1,2,'La Cumbrecita')
insert into localidades values (2,4,'La Falda')
insert into localidades values (3,1,'La Palestina')
insert into localidades values (4,7,'La Granja')
insert into localidades values (5,5,'La Francia')
insert into localidades values (6,6,'La Paisanita')
insert into localidades values (7,3,'La Pampa')
insert into localidades values (8,1,'Carlos Paz')
insert into localidades values (9,9,'Cordoba')



