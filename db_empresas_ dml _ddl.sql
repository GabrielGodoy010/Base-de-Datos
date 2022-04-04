/*
CREATE TABLE `db_empresa`.`clientes` (
  `id_Cliente` INT NOT NULL AUTO_INCREMENT,
  `nit` VARCHAR(9) NOT NULL,
  `nombres` VARCHAR(60) NOT NULL,
  `apellido` VARCHAR(60) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `telefono` INT NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  PRIMARY KEY (`id_Cliente`));

CREATE TABLE `puestos` (
  `id_Puestos` smallint(6) NOT NULL AUTO_INCREMENT,
  `Puesto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_Puestos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1

CREATE TABLE `empleados` (
  `id_Empleado` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `id_Puestos` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_Empleado`),
  KEY `id_Puesto_empleados_puestos_idx` (`id_Puestos`),
  CONSTRAINT `id_Puesto_empleados_puestos` FOREIGN KEY (`id_Puestos`) REFERENCES `puestos` (`id_Puestos`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1

INSERT into clientes(nit,nombres,apellido,direccion,telefono,fecha_nacimiento) 
VALUES ('77668899', 'Juana', 'Lopez', 'ciudad', '123', '1990-02-02');

insert into puestos(puesto) values('Programador'); 
insert into puestos(puesto) values('Analista Programador'); 
SELECT * FROM puestos;


insert into empleados (codigo,nombre,Apellido,Direccion,Telefono,Fecha_nacimiento,id_Puestos) 
values('002','Rocio','Vesquez','Guatemala',111,'1990-10-22',2);

update empleados set 
codigo = '003',nombre='Maria Fernanda',apellido = 'Ruiz Sosa',direccion='Jalapa',telefono =456,fecha_nacimiento = '1990-11-15',id_puestos = 3 
where id_empleado = 3;

delete from empleados where id_empleado = 4;

ALTER TABLE `db_empresa`.`empleados` 
AUTO_INCREMENT = 4 ;

select * from empleados;
select * from empleados where codigo='003';
select codigo,nombre,apellido from empleados;
select * from empleados where apellido like 'c%%';
select * from empleados where apellido like '%%z';
select * from empleados where apellido like '%a%';
select * from empleados where year(fecha_nacimiento) =1990 ;

SELECT 
e.id_Empleado,e.codigo,e.nombre,e.apellido,e.direccion,e.telefono,e.fecha_nacimiento,p.puesto
FROM empleados as e, puestos as p
where e.id_puestos = p.id_puestos;

SELECT 
e.id_Empleado,e.codigo,e.nombre,e.apellido,e.direccion,e.telefono,e.fecha_nacimiento,p.puesto
FROM empleados as e inner join puestos as p
on e.id_puestos = p.id_puestos;

*/

SELECT * FROM empleados;