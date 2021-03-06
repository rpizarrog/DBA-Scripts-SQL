/* Crear paquete que integre operaciones transacciones 
 * sobre la tabla clientes
 * CON EL USUARO C##TIENDA
 * El paquete se llamar� pkprincipalclientes
 * Se necesita procedimientos para:
 ** Buscar un cliente por rfc y mostrar. YA
 ** Buscar un cliente por numero y mostrar. YA
 ** Agregar un cliente registro completo YA
 ** Eliminar un cliente por su RFC. YA
 ** Actualizar los datos de un cliente excepto el RFC y el numero, 
 *  son campos Llave primaria y Unica YA
 *  Devolver varios regisros con FUNCION YA
 ** Realizar el paquete paso a paso
 **/
CREATE OR REPLACE PACKAGE pkprincipalclientes
AS	
	PROCEDURE pencuentraclienteRFC(arg clientes.rfc%type);
	PROCEDURE pencuentraclienteNUMERO(arg clientes.numero%type);
	PROCEDURE pagregarcliente(argrfc clientes.rfc%TYPE,
				argnombre clientes.nombrerazonsocial%TYPE,
				argtipo clientes.tipo%TYPE,
				argsexo clientes.sexo%TYPE,
				argfechanacimiento clientes.fechanacimiento%TYPE,
				argdireccion clientes.direccion%TYPE,
				argactividad clientes.actividad%TYPE,
				argcolonia clientes.colonia%TYPE,
				argemail clientes.email%TYPE,
				argtelefono clientes.telefono%TYPE,
				argnumero clientes.numero%type); -- Varios argumentos
	PROCEDURE peliminarclienteRFC(arg clientes.rfc%type);	
	PROCEDURE pactualizarrclienteRFC(argrfc clientes.rfc%TYPE,
				argnombre clientes.nombrerazonsocial%TYPE,
				argtipo clientes.tipo%TYPE,
				argsexo clientes.sexo%TYPE,
				argfechanacimiento clientes.fechanacimiento%TYPE,
				argdireccion clientes.direccion%TYPE,
				argactividad clientes.actividad%TYPE,
				argcolonia clientes.colonia%TYPE,
				argemail clientes.email%TYPE,
				argtelefono clientes.telefono%TYPE); -- Varios argumentos

	function fndevuelveclientes return cliente_temp;


END; -- pkprincipalclientes

CREATE OR REPLACE PACKAGE body pkprincipalclientes
AS
	registro clientes%rowtype; -- Misma estrutcura que clientes
	PROCEDURE pencuentraclienteRFC(arg clientes.rfc%type)
	AS
	BEGIN
			SELECT * INTO registro
			FROM clientes
			WHERE rfc = arg;
		
			dbms_output.put_line('Estamos en procedimiento del paquete pkprincipalclientes');
			dbms_output.put_line('El RFC recibido es: ' || arg);
			dbms_output.put_line('Datos del cliente');
			dbms_output.put_line('NombreRazonSocial:' || registro.nombrerazonsocial);
			dbms_output.put_line('Fecha de Nacimiento:' || registro.fechanacimiento);		
			dbms_output.put_line('E Mail:' || registro.email);
			dbms_output.put_line('Tel�fono:' || registro.telefono);		
		
	end; -- pencuentraclienteRFC
	
	PROCEDURE pencuentraclienteNUMERO (arg clientes.numero%type)
	AS
	BEGIN
			SELECT * INTO registro
			FROM clientes
			WHERE numero = arg;
		
			dbms_output.put_line('Estamos en procedimiento del paquete pkprincipalclientes');
			dbms_output.put_line('El NUMERO recibido es: ' || arg);
			dbms_output.put_line('Datos del cliente');
			dbms_output.put_line('NombreRazonSocial:' || registro.nombrerazonsocial);
			dbms_output.put_line('Fecha de Nacimiento:' || registro.fechanacimiento);		
			dbms_output.put_line('E Mail:' || registro.email);
			dbms_output.put_line('Tel�fono:' || registro.telefono);		
		
	end; -- pencuentraclienteNUMERO
	
	PROCEDURE pagregarcliente(argrfc clientes.rfc%TYPE,
				argnombre clientes.nombrerazonsocial%TYPE,
				argtipo clientes.tipo%TYPE,
				argsexo clientes.sexo%TYPE,
				argfechanacimiento clientes.fechanacimiento%TYPE,
				argdireccion clientes.direccion%TYPE,
				argactividad clientes.actividad%TYPE,
				argcolonia clientes.colonia%TYPE,
				argemail clientes.email%TYPE,
				argtelefono clientes.telefono%TYPE,
				argnumero clientes.numero%type)
	AS
	BEGIN
		 insert into clientes (rfc, nombrerazonsocial, tipo, sexo, fechanacimiento,
direccion, actividad, colonia, email, telefono, numero, fregistro)
       values (argrfc, argnombre, argtipo, argsexo, 
				TO_DATE(argfechanacimiento,'DD-MM-YYYY'),
				argdireccion, argactividad,
				argcolonia, argemail, argtelefono, 
				argnumero, sysdate);
				dbms_output.put_line('Registro agregado...');
					
	END;

	PROCEDURE peliminarclienteRFC(arg clientes.rfc%type)
	AS
	BEGIN
			DELETE FROM CLIENTES	
				WHERE rfc = arg;
		dbms_output.put_line('Registro Eliminado...');
	
			
			
	end; --peliminarclienteRFC(arg clientes.rfc%type)
	PROCEDURE pactualizarrclienteRFC(argrfc clientes.rfc%TYPE,
				argnombre clientes.nombrerazonsocial%TYPE,
				argtipo clientes.tipo%TYPE,
				argsexo clientes.sexo%TYPE,
				argfechanacimiento clientes.fechanacimiento%TYPE,
				argdireccion clientes.direccion%TYPE,
				argactividad clientes.actividad%TYPE,
				argcolonia clientes.colonia%TYPE,
				argemail clientes.email%TYPE,
				argtelefono clientes.telefono%TYPE)
	AS
	BEGIN
		UPDATE CLIENTES
			SET nombrerazonsocial = argnombre,
				tipo = argtipo,
				sexo = argsexo,
				fechanacimiento = argfechanacimiento,
				direccion = argdireccion,
				actividad = argactividad,
				colonia = argcolonia,
				email = argemail,
				telefono = argtelefono,
				fregistro = sysdate -- Dia de hoy				
		WHERE rfc = argrfc;
	
		dbms_output.put_line('Registro actualizado');
	end;

	/* Crear una funci�n que devuelve registros de clientes 
	 * Hay varias alternativas
	 * Primero crear 
	 * */

	 function fndevuelveclientes
		return cliente_temp
	as
		registro cliente_temp := cliente_temp();
		n integer := 0;
	begin
	for r in (select rfc, nombrerazonsocial, 
		tipo, sexo, fechanacimiento, 
		direccion, actividad, colonia,
		email, telefono, numero,
		fregistro
		from clientes
		WHERE EXTRACT(YEAR FROM fregistro) = EXTRACT(YEAR FROM sysdate) 
  	    AND EXTRACT(month FROM fregistro) = EXTRACT(month FROM sysdate)
  	   AND EXTRACT(day FROM fregistro) = extract(day FROM sysdate))
		loop
			registro.extend;
			n := n + 1;
			registro(n) := cliente_obj(r.rfc, r.nombrerazonsocial, 
			r.tipo, r.sexo, r.fechanacimiento, 
			r.direccion, r.actividad,r.colonia,
			r.email, r.telefono, r.numero,
			r.fregistro);
		end loop;
		return registro;
	end; -- fndevuelveclientes
	
	
END; -- pkprincipalclientes

/* Ejecutamos los procedimientos que se tienen del paquete */
BEGIN
	
	pkprincipalclientes.pagregarcliente('PAGG991238', 'PAEZ GONZALEZ GABRIEL', 'F', 'M',
      TO_DATE('10-10-1998', 'DD-MM-YYYY'), 'VIVE EN LA CALLE ENFRENTE', 'POR SU CUENTA', 180, 
    'pag@gmail.com', '618102030', 400038);-- Agregar cliente
    
END;

/* Solo consultar */
BEGIN
	pkprincipalclientes.pencuentraclienteRFC('PAGG991237');-- Cliente n�mero 2000
	pkprincipalclientes.pencuentraclienteNUMERO(400037);-- Cliente n�mero 2000
END;

/* Eliminar cliente */
BEGIN
	pkprincipalclientes.peliminarclienteRFC('PAGG991237');
end;

/* Actualizar cliente por su RFC 
 * Se env�an todos los par�metros excepto el numero
 * porque este campo no se debe modificar por ser valor �nico y 
 * que otras tablas dependen de el. TABLA VENTAS
 * 
 */
BEGIN
 	pkprincipalclientes.pactualizarrclienteRFC('PAGG991237', 'PAEZ GONZALEZ GABRIELITA', 'F', 'F',
      TO_DATE('10-11-1998', 'DD-MM-YYYY'), 'VIVE EN LA CALLE ENFRENTE ROJA', 'POR SU CUENTA ACT', 184, 
    'pagg@gmail.com', '618102031');-- Agregar cliente
    
END;


/* Ejecutamos la funci�n del paquete */
select * from table (pkprincipalclientes.fndevuelveclientes);
