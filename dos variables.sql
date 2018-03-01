declare
-- Declaramos dos variables
  vnombre varchar(60);
  vfechanacimiento date;
  
begin
 -- Asignamos valorea a las variables por medio del operador :=
  vnombre := 'Ruben Pizarro';
  vfechanacimiento := '1969-11-06';
  dbms_output.put_line('Nombre ' || vnombre);
  dbms_output.put_line('Fecha de nacimiento ' || vfechanacimiento);  
end;
