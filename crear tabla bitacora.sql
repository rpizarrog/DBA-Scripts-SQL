DROP TABLE bitacora;

CREATE TABLE bitacora
(
  consecutivo integer primary key,
  fecha date,
  hora varchar(8),
  usuario varchar(20),
  ip varchar2(20),
  operacion varchar(6),
  tabla varchar(20),
  campo varchar(20),
  valor varchar(20)
);
