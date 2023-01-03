create or replace view info_clientes as
select Nombre,Apellido,Email 
from cliente
order by Nombre asc;

create or replace view factura_mes as
select Importe,Fecha,Hora,Pedido_ID
from factura
where Fecha between "2022-02-01" and "2022-02-28";