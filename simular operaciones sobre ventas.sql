/* simular operaciones sobre ventas */

UPDATE VENTAS
  SET fecha = '2013-06-12'
    where noventa = 642 ;


select count(*) from ventas order by noventa;

select * from ventas order by noventa;

select * from ventas where noventa = 600000;
insert into ventas (noventa, fecha, cliente, empleado, tienda, total)
   values (600000, '2018-03-09', 10, 10, 10, 100);

delete from ventas where noventa = 600000;

select * from bitacora;