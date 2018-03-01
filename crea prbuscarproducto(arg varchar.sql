create or replace procedure prbuscarproducto(arg varchar)
as
  varticulo varchar(20);
  vdescripcion varchar(70);
  vprecio float;
begin
  select articulo, descripcion, precio -- , descripcion, precio
    into varticulo, vdescripcion, vprecio
    from productos
    where articulo = arg;
    
  dbms_output.put_line(varticulo || ', ' ||vdescripcion || ', ' || vprecio);  
end;