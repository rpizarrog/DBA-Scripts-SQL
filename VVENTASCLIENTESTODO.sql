--------------------------------------------------------
--  DDL for View VVENTASCLIENTESTODO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TIENDA2018"."VVENTASCLIENTESTODO" ("NOVENTA", "FECHA", "CLIENTE", "EMPLEADO", "TIENDA", "TOTAL", "ARTICULO", "DESCRIPCIONPRODUCTO", "PRECIOUNITARIO", "CANTIDAD", "PRECIOVENTA", "IMPORTE", "NUMCATEGORIA", "NOMBRE", "RFC", "NOMBRERAZONSOCIAL", "TIPO", "DESCRIPCIONTIPOCLIENTE", "SEXO", "FECHANACIMIENTO", "DIRECCION", "ACTIVIDAD", "NUMCOLONIACLIENTE", "EMAIL", "TELEFONO", "NOTIENDA", "NOMBRETIENDA", "FECHAINICIO", "COLONIA", "NOMBRECA", "CPOSTAL", "MUNICIPIO", "TIPOASENTAMIENTO", "NOMBREASENTAMIENTO", "NOMMUNICIPIO", "ESTADO", "NOMESTADO", "ABREVIATURA", "PAIS", "ZONA", "REGION") AS 
  select --count(*)/*
  ventas.noventa, ventas.fecha, 
  ventas.cliente, ventas.empleado, ventas.tienda, ventas.total,
  productos.articulo, productos.descripcion AS DESCRIPCIONPRODUCTO, productos.precio as preciounitario,
  detalleventas.cantidad, detalleventas.precio as precioventa, 
  detalleventas.importe, categorias.numcategoria, categorias.nombre,
  clientes.rfc, clientes.nombrerazonsocial, clientes.tipo,tiposclientes.descripcion AS DESCRIPCIONTIPOCLIENTE,clientes.sexo,
    clientes.fechanacimiento, clientes.direccion, clientes.actividad,
    clientes.colonia as numcoloniacliente, clientes.email, clientes.telefono,
    tiendas.notienda,tiendas.nombre AS NOMBRETIENDA,tiendas.fechainicio,tiendas.colonia,
    coloniasasentamientos.NOMBRE AS NOMBRECA,coloniasasentamientos.CPOSTAL,coloniasasentamientos.MUNICIPIO
    ,coloniasasentamientos.TIPOASENTAMIENTO,TIPOsASENTAMIENTOs.nombreasentamiento,
    municipios.NOMBRE AS NOMMUNICIPIO,municipios.ESTADO,estados.nombre AS NOMESTADO,estados.abreviatura,estados.PAIS,estados.ZONA,
    zonaseconomicas.REGION
    --*/
  from ventas, detalleventas, productos, categorias, clientes,tiposclientes,
  tiendas,municipios,
  coloniasasentamientos,estados,TIPOSASENTAMIENTOS,zonaseconomicas
  where ventas.noventa = detalleventas.noventa
    and detalleventas.clave = productos.articulo
    and productos.numcategoria = categorias.numcategoria
    and ventas.cliente = clientes.numero
    and tiposclientes.TIPO=clientes.TIPO
    and tiendas.notienda=ventas.tienda 
    and tiendas.COLONIA=coloniasasentamientos.numero
    and municipios.MUNICIPIO=coloniasasentamientos.MUNICIPIO
    and estados.estado=municipios.estado
    and TIPOSASENTAMIENTOS.TIPO=coloniasasentamientos.TIPOASENTAMIENTO
    and zonaseconomicas.zona=estados.ZONa;
