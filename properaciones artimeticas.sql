/* Es un procedimiento que recib e tres par�metros
Los dos primeros de tipo flotante servir�n para 
hacer operaciones aritm�ticas
El tercer argumento define el tipo de operaci�n a reealizar
*/
create or replace 
  procedure properacionesaritmeticas (arg1 float, arg2 float, arg3 integer)
as
begin
  if (arg3 = 1) then -- Es una suma
    dbms_output.put_line('La suma es ' || (arg1 + arg2));
  end if;
  if (arg3 = 2) then -- Es una suma
    dbms_output.put_line('La resta es ' || (arg1 - arg2));
  end if;
  if (arg3 = 3) then -- Es una suma
    dbms_output.put_line('La multiplicaci�n es ' || (arg1 * arg2));
  end if;
  if (arg3 = 4) then -- Es una suma
    dbms_output.put_line('La divisi�n es ' || (arg1 / arg2));
  end if;
  
  --null;
end;