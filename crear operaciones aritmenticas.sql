/* Es una función que recibe tres parámetros
Los dos primeros de tipo flotante servirán para 
hacer operaciones aritméticas
El tercer argumento define el tipo de operación a reealizar
Regresa un tipo flotante
*/
create or replace 
  function  fnoperacionesaritmeticas (arg1 float, arg2 float, arg3 integer)
    return float
as
begin
  if (arg3 = 1) then -- Es una suma
    return (arg1 + arg2);
  end if;
  if (arg3 = 2) then -- Es una suma
    return (arg1 - arg2);
  end if;
  if (arg3 = 3) then -- Es una suma
    return (arg1 * arg2);
  end if;
  if (arg3 = 4) then -- Es una suma
    return (arg1 / arg2);
  end if;
  
  --null;
end;