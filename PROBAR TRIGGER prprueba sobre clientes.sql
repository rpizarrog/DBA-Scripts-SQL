/* Probar el triger de clientes */

insert into clientes (rfc, colonia, numero)
	  values ('PIGR691106XXX', 100, 999999);

UPDATE clientes 
  SET NOMBRERAZONSOCIAL = 'RUBEN PIZARRO ' 
  WHERE rfc = 'PIGR691106XXX';

select * from clientes
  where rfc = 'PIGR691106XXX';

delete from clientes
  where rfc = 'PIGR691106XXX';
  
 
  
  
