/* Es un procedimiento que recib e tres parámetros
Los dos primeros de tipo flotante servirán para 
hacer operaciones aritméticas
El tercer argumento define el tipo de operación a reealizar
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
    dbms_output.put_line('La multiplicación es ' || (arg1 * arg2));
  end if;
  if (arg3 = 4) then -- Es una suma
    dbms_output.put_line('La división es ' || (arg1 / arg2));
  end if;
  
  --null;
end;