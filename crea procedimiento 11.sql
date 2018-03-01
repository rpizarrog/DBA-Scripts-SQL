create or replace procedure prtiendaventa(arg number)
as
  vnoventa ventas.noventa%type;
  vnotienda tiendas.notienda%type;
  vnomtienda tiendas.nombre%type;
  vnumerocol coloniasasentamientos.numero%type;
  vnomcolonia coloniasasentamientos.nombre%type;
  vnummunicipio municipios.municipio%type;
  vnommunicipio municipios.nombre%type;
  vestado estados.estado%type;
  vnomestado estados.nombre%type;  
begin
  
  select ventas.noventa, tiendas.notienda, tiendas.nombre,
  coloniasasentamientos.numero, coloniasasentamientos.nombre,
  municipios.municipio, municipios.nombre,
  estados.estado, estados.nombre
  into   vnoventa, vnotienda, vnomtienda, vnumerocol,
         vnomcolonia, vnummunicipio, vnommunicipio, 
         vestado, vnomestado
  from ventas, tiendas, coloniasasentamientos, municipios, estados
  where ventas.tienda = tiendas.notienda -- join 
  and tiendas.colonia = coloniasasentamientos.numero -- join
  and coloniasasentamientos.municipio = municipios.municipio-- join
  and municipios.estado = estados.estado-- join
  and ventas.noventa = arg; -- argumento del procedomiento y de la funcion
  
  dbms_output.put_line(vnoventa || ',' || vnotienda || ', ' 
        || vnomtienda || ', ' || vnumerocol || ', ' ||
         vnomcolonia || ', ' || vnummunicipio || ', '|| 
         ', ' || vnommunicipio || ', '|| 
         vestado || ', ' || vnomestado);  
end;