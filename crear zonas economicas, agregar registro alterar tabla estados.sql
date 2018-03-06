
/* Actualizar las tablas del esquema usuario C##tienda2018. Tabla de zonaseconomicas

•	Crear una tabla llamada zonaseconomicas con dos campos: ZONA char(1), REGION varchar(30)
•	Agregar registros a tabla zonaseconomicas.
•	Agregar un campo a la tabla de estados que se llame zonaeconomica que sea llave foránea y dependa de zonaeconomica de la tabla zonaseconomicas.
•	Actualizar el valor del campo zonaeconomica en la tabla estado conforme a la tabla e imagen mostrada al principio del documento.
•	Crear vistas una por cada zonaeconomica.
*/


/*
•	Crear una tabla llamada zonaseconomicas con dos campos: ZONA char(1), REGION varchar(30)
•	Agregar registros a tabla zonaseconomicas.
*/
-- Para cuando ya exista el campo. Sólo cuando ya exista*/
alter table estados
  drop column zona;
-- Para cuando ya exista la tabla
drop table zonaseconomicas; -- Para cuando ya exista


create table zonaseconomicas
(
  zona char(1) not null primary key,
  region varchar(30) not null
);

insert into zonaseconomicas (zona, region)
  values ('1', 'NORTE');
  
insert into zonaseconomicas (zona, region)
  values ('2', 'NORESTE');
  
insert into zonaseconomicas (zona, region)
  values ('3', 'NOROESTE');

insert into zonaseconomicas (zona, region)
  values ('4', 'CENTRO OCCIDENTE');
  
insert into zonaseconomicas (zona, region)
  values ('5', 'CENTRO ESTE');
  
insert into zonaseconomicas (zona, region)
  values ('6', 'ORIENTE');
  
insert into zonaseconomicas (zona, region)
  values ('7', 'SUR');
  
insert into zonaseconomicas (zona, region)
  values ('8', 'YUCATAN');
  
  
select * from zonaseconomicas;

/*  
•	Agregar un campo a la tabla de estados que se llame zonaeconomica que sea llave foránea y dependa de zonaeconomica de la tabla zonaseconomicas.
•	Actualizar el valor del campo zonaeconomica en la tabla estado conforme a la tabla e imagen mostrada al principio del documento.  
*/

-- Agregar el campo y la llave foránea
alter table estados
  add zona char(1);
  
alter table estados  
  add constraint FK_zonas foreign key (zona) 
    references zonaseconomicas(zona);
 
  
/* 
•	Actualizar el valor del campo zonaeconomica en la tabla estado conforme a la tabla e imagen mostrada al principio del documento.
*/

-- Zona NORTE: COAHUILA, CHIHUAHUA, DURANGO, SAN LUIS POTOSI, ZACATECAS
update estados
  set zona = 1
    where estado in ('05', '08', '10', '24', '32');
    
-- Zona NOROESTE: BAJA CALIFORNIA, BAJA CALIFORNIA SUR, NAYARIT, SINALOA, SONORA
update estados
  set zona = 2
    where estado in ('02', '03', '18', '25', '26');

-- Zona NORESTE: NUEVO LEON, TAMAULIPAS
update estados
  set zona = 3
    where estado in ('19', '28');
    

-- Zona  CENTRO OCCIDENTE: AGUASCALIENTES, COLIMA, GUANAJUATO, JALISCO, MICHOACAN, 
update estados
  set zona = 4
    where estado in ('01','06', '11', '14', '16');
    

-- Zona  CENTRO ESTE: DF, MEXICO, HIDALGO, MORELOS, PUEBLA, QUERETARO, TLAXCALA, 
update estados
  set zona = 5
    where estado in ('09','13', '15', '17', '21', '22', '29');
    

-- Zona  CENTRO ORIENTE: TABASCO, VERACRUZ
update estados
  set zona = 6
    where estado in ('27','30');

-- Zona  CENTRO SUR: CHIAPAS, GUERRERO, OAXACA 
update estados
  set zona = 7
    where estado in ('07','12', '20');


-- Zona  YUCATAN: CAMPECHE, QUINTANA ROO, YUCATAN
update estados
  set zona = 8
    where estado in ('04', '23', '31');
    
select * from estados order by zona, estado;    
    
    
    