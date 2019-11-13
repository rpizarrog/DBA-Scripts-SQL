/* Con la conexion C##Tienda crear sinomimos */
/* Ahora con una conexión de C##tienda */
CREATE OR REPLACE PUBLIC SYNONYM sclientes 
	FOR C##tienda.clientes
	
CREATE OR REPLACE PUBLIC SYNONYM scolonias 
	FOR C##tienda.coloniasasentamientos;

CREATE OR REPLACE PUBLIC SYNONYM stiendas 
	FOR C##tienda.tiendas;

CREATE OR REPLACE PUBLIC SYNONYM sempleados
	FOR C##tienda.empleados;
	
CREATE OR REPLACE PUBLIC SYNONYM sclientes
	for C##tienda.clientes;
	
CREATE OR REPLACE PUBLIC SYNONYM sventas
	for C##tienda.ventas;
	
CREATE OR REPLACE PUBLIC SYNONYM sdetalleventas
	for C##tienda.detalleventas;
	
CREATE OR REPLACE PUBLIC SYNONYM sfacturas
	for C##tienda.facturas;