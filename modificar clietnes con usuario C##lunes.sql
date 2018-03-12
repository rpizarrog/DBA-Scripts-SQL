/* Conectando con el usuario C##lunes */

select * from C##tiendaabarrotes.clientes
  where rfc = 'ABCI470424C11';
  
update C##tiendaabarrotes.clientes
  set email = 'prueba@yahoo.com.mx'
  where rfc = 'ABCI470424C11';
  
commit;  
  
  