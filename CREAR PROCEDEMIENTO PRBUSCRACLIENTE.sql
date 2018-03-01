create or replace 
  procedure prbuscarcliente(arg clientes.numero%type) -- Del mismo tipo
as
  vnombre clientes.nombrerazonsocial%type; -- mismo tipo que campo de tabla
begin  
  select nombrerazonsocial
    into vnombre
    from clientes
    where numero = arg;
  dbms_output.put_line('El cliente es ' || vnombre);
end;    
  