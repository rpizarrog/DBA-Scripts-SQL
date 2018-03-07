create or replace trigger trprueba
  after insert or delete or update
  on clientes
  for each row -- Para cada registro 
declare
  msg varchar(50) := 'Saludos desde trigger. Algo pasó con clientes';
begin
  dbms_output.put_line(msg);
end;