/*1. Listar Vehículos Disponibles: Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.*/

select v.placa, v.marca, v.modelo, v.precio  from vehiculo v
where v.vendido = false; 

/*
2. Clientes con Compras Recientes: Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.
*/

select * from cliente c 
join venta v on v.documento_cliente = c.documento
join vehiculo v2 on v.placa = v2.placa 
where v.fecha_contratacion < now() - interval '1 month'; 

/*3.  Obtener el historial completo de servicios realizados para un vehículo específico, incluyendo detalles sobre los empleados involucrados y las fechas de servicio.
*/

select s.nombre, s.descripcion, hs.fecha, e.documento as documento_empleado, e.nombre  from servicio s 
join historial_servicios hs on hs.id_servicio = s.id 
join empleado e on hs.documento_empleado = e.documento
where hs.placa = 'aaa-111'; --Introducir placa específica

/*
4. Proveedores de Piezas Utilizados: Listar los proveedores de piezas que han suministrado componentes utilizados en los servicios de mantenimiento.
*/

select distinct p.*  from proveedor p 
join historial_proveedor hp on hp.nit_proveedor = p.nit 
join servicio s on s.id = hp.id_servicio 
where s.tipo = 'Mantenimiento';


/*
5. Rendimiento del Personal de Ventas: Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.
*/

/*
6. Servicios Realizados por un Empleado: Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.
*/

select s.nombre, hs.fecha, v.placa, v.marca, v.modelo, v.anio from servicio s 
join historial_servicios hs on hs.id_servicio = s.id 
join empleado e on hs.documento_empleado = e.documento
join vehiculo v on v.placa = hs.placa 
where s.tipo = 'Mantenimiento' and e.documento = '8498438484' ; --Introducir documento empleado

/*
7. Clientes Potenciales y Vehículos de Interés: Mostrar información sobre los clientes potenciales y los vehículos de su interés, proporcionando pistas valiosas para estrategias de marketing.
*/

select c.documento, c.nombre, c.telefono, c.correo, c.favoritos as autos_favoritos from cliente c 
where c.ha_comprado = false;


/*
8. Empleados del Departamento de Servicio: Listar todos los empleados que pertenecen al departamento de servicio, junto con sus horarios de trabajo.
*/

select e.* from empleado e 
join rol r on r.id = e.id_rol 
join departamento d on d.id = r.id_departamento 
where d.nombre = 'Servicio';

/*
9. Vehículos Vendidos en un Rango de Precios: Encontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.*/

select * from vehiculo v 
where v.precio between 15000000 and 30000000; -- Cambiar rangos

/*
10. Clientes con Múltiples Compras: Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.
*/