/* Una prueba de bitacora */

drop sequence sqprueba;

create sequence sqprueba
  minvalue 1 
  maxvalue 999999
increment by 1 start with 1;

select sqprueba.nextval from dual;
select sqprueba.currval from dual;


drop sequence sqbitacora;
create sequence sqbitacora
  minvalue 1 
  maxvalue 999999
increment by 1 start with 1;
