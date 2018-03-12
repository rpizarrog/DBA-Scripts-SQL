drop user C##lunes;

create user C##lunes identified by lunes;

grant connect to C##lunes;

grant select, insert, delete, update
on C##tiendaabarrotes.estados to C##lunes;

grant select, insert, delete, update
on C##tiendaabarrotes.clientes to C##lunes;

grant select, insert, delete, update
on C##tiendaabarrotes.ventas to C##lunes;



