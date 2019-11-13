/* Estamos conectados con C##user1 */

/* Como acceder a objetos que si se tienen permisos 
 * pero de los cuales no se espropietario
 * 
 * Se debe acceder a ellos por medio esquema.objeto
 */
-- Consultar los registros de un cliente
SELECT * 
	FROM c##tienda.clientes
	WHERE numero = 2000;

-- Actualizar datos de dicho cliente
UPDATE c##tienda.clientes
	SET tipo = 'M' 
	WHERE rfc = 'AGMA880402A19';

COMMIT; 

SELECT * 
	FROM c##tienda.clientes
	WHERE numero = 2000;

SELECT * FROM c##tienda.bitacora;



