declare
/* 
  Programa que hace operaciones artimenticas
  febrero 2018
*/
  valor1 float;
  valor2 float;
  
begin
  valor1 := 22345.43453;
  valor2 := 8123.754;
  
  dbms_output.put_line('Sumamos ' || (valor1 + valor2));
  dbms_output.put_line('Restamos ' || (valor1 - valor2));
  dbms_output.put_line('Miltiplicamos ' || (valor1 * valor2));
  dbms_output.put_line('Dividimos ' || (valor1 / valor2));
  
end;