/* Crear vistas una por cada zona economica de las ventas */

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
    
select * from vzona1norte;
