/* Crear vistas una por cada zona economica de las ventas */

/* En caso de que ya existan */
drop view vzona1norte;
drop view vzona2noroeste;
drop view vzona3noreste;
drop view vzona4centrooccidente;
drop view vzona5centroeste;
drop view vzona6oriente;
drop view vzona7sur;
drop view vzona8yucatan;


create view vzona1norte
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 1;
    
-- select * from vzona1norte;

create view vzona2noroeste
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 2;
    
create view vzona3noreste
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 3;
    
create view vzona4centrooccidente
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 4;


create view vzona5centroeste
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 5;
    
create view vzona6oriente
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 6;
    

create view vzona7sur
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 7;

create view vzona8yucatan
as
select ventas.noventa, ventas.fecha, 
  ventas.empleado, ventas.total, 
  ventas.cliente, clientes.nombrerazonsocial,
  ventas.tienda, tiendas.nombre as "Nombre.Tienda", 
  coloniasasentamientos.numero, coloniasasentamientos.nombre as "Nombre.Colonia", 
  municipios.municipio, municipios.nombre as "Nombre.Municipio",
  estados.estado, estados.nombre as "Nombre.Estado",
  zonaseconomicas.zona, zonaseconomicas.region
  from ventas, clientes, tiendas, coloniasasentamientos, 
    municipios, estados, zonaseconomicas
  where ventas.cliente = clientes.numero
    and ventas.tienda = tiendas.notienda
    and tiendas.colonia = coloniasasentamientos.numero
    and municipios.municipio = coloniasasentamientos.municipio
    and municipios.estado = estados.estado
    and zonaseconomicas.zona = estados.zona
    and zonaseconomicas.zona = 8;

