create or replace 
trigger trventas
  after insert or delete or update
  on ventas
   for each row
   
  declare
    -- variables que se usarán en las operaciones dml sobre BITACORA
    vconsecutivo integer;
    vfecha date;
    vhora varchar(8);
    vusuario varchar(20);
    vip varchar2(20);
    voperacion varchar(6);
    vtabla varchar(20);
    vcampo varchar(20);
    vvalor varchar(20);
  begin
    if inserting then
      dbms_output.put_line('Se agregó un cliente, pero cual ? '  || :new.rfc);
        
      select sqbitacora.nextval, sysdate, to_char(sysdate, 'HH24:MI:SS'),
        user, sys_context('userenv','ip_address'), 'INSERT', 'CLIENTES', 
        'RFC' , :new.rfc
        into vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor
          from dual; 
          
      --AGREGAR EL REGISTRO
      insert into bitacora (consecutivo, fecha, hora,
          usuario, ip, operacion, tabla, campo, valor)
        values (vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor);
     end if;
     if deleting then
      dbms_output.put_line('Se eliminó, pero cual ? '  || :old.rfc);
      select sqbitacora.nextval, sysdate, to_char(sysdate, 'HH24:MI:SS'),
        user, sys_context('userenv','ip_address'), 'DELETE', 'CLIENTES', 
        'RFC' , :old.rfc
        into vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor
          from dual; 
          
      --AGREGAR EL REGISTRO
      insert into bitacora (consecutivo, fecha, hora,
          usuario, ip, operacion, tabla, campo, valor)
        values (vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor);
        
     end if;
     if updating then
      dbms_output.put_line('Se actualizó, pero cual ? '  || :old.rfc);
select sqbitacora.nextval, sysdate, to_char(sysdate, 'HH24:MI:SS'),
        user, sys_context('userenv','ip_address'), 'UPDATE', 'CLIENTES', 
        'RFC' , :old.rfc
        into vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor
          from dual; 
          
      --AGREGAR EL REGISTRO
      insert into bitacora (consecutivo, fecha, hora,
          usuario, ip, operacion, tabla, campo, valor)
        values (vconsecutivo, vfecha, vhora,
          vusuario, vip, voperacion, vtabla, vcampo, vvalor);      
        
     end if;
   
  end;