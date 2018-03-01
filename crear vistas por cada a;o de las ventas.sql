create or replace view vventas2010
as
select ventas.noventa, fecha, cliente, tienda, total,
  detalleventas.clave, descripcion, cantidad, 
    detalleventas.precio, importe
  from ventas, detalleventas, productos
  where fecha between '2010-01-01' and '2010-12-31'
    and ventas.noventa = detalleventas.noventa
    and productos.articulo = detalleventas.clave
  order by fecha desc;


create or replace view vventas2011
as
select ventas.noventa, fecha, cliente, tienda, total,
  detalleventas.clave, descripcion, cantidad, 
    detalleventas.precio, importe
  from ventas, detalleventas, productos
  where fecha between '2011-01-01' and '2011-12-31'
    and ventas.noventa = detalleventas.noventa
    and productos.articulo = detalleventas.clave
  order by fecha desc;


create or replace view vventas2012
as
select ventas.noventa, fecha, cliente, tienda, total,
  detalleventas.clave, descripcion, cantidad, 
    detalleventas.precio, importe
  from ventas, detalleventas, productos
  where fecha between '2012-01-01' and '2012-12-31'
    and ventas.noventa = detalleventas.noventa
    and productos.articulo = detalleventas.clave
  order by fecha desc;
  
  