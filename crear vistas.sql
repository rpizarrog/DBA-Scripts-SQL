/* Crear vistas en Tienda */

CREATE VIEW vventas2010
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2010;

CREATE VIEW vventas2011
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2011;

CREATE VIEW vventas2012
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2012;

CREATE VIEW vventas2013
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2013;

CREATE VIEW vventas2014
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2014;

CREATE VIEW vventas2015
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2015;

CREATE VIEW vventas2016
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2016;

CREATE VIEW vventas2017
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2017;

CREATE VIEW vventas2018
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2018;

CREATE VIEW vventas2019
AS 
SELECT ventas.NOVENTA, ventas.fecha, ventas.CLIENTE, 
	ventas.EMPLEADO, ventas.TIENDA, ventas.total
	FROM VENTAS
	WHERE EXTRACT(YEAR FROM fecha) = 2019;


SELECT * FROM vventas2010;
	WHERE extract(MONTH FROM fecha) IN (1,2,3); -- Ener febr y marz
	
	
	SELECT min(fecha) FROM ventas; -- Primera venta
	SELECT max(fecha) FROM ventas;  -- Uktima venta
	
/* Probar las vistas */
SELECT '2010' año, count(*) cuantas FROM vventas2010
union
SELECT '2011' año, count(*)  cuantas FROM vventas2011
union
SELECT '2012' año, count(*)  cuantas FROM vventas2012
union
SELECT '2013' año, count(*)  cuantas FROM vventas2013
UNION
SELECT '2014' año, count(*)  cuantas FROM vventas2014
UNION
SELECT '2015' año, count(*)  cuantas FROM vventas2015
union
SELECT '2016' año, count(*)  cuantas FROM vventas2016
union
SELECT '2017' año, count(*)  cuantas FROM vventas2017
union
SELECT '2018' año, count(*)  cuantas FROM vventas2018
union
SELECT '2019' año, count(*)  cuantas FROM vventas2019;

SELECT count(*) FROM ventas;
SELECT * FROM VENTAS	
ORDER BY FECHA DESC;

select * from ventas
	order by noventa desc;
	
select extract(YEAR FROM fecha), 
	extract(month FROM fecha), extract(day FROM fecha),
	fecha
	from ventas 
	where noventa = 559828
	order by noventa desc;

SELECT * FROM vventas2019;
	
