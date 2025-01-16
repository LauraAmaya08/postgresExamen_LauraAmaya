insert into vehiculo (placa,marca,modelo,anio,precio,estado) 
values 
('aaa-111', 'Nissan', 'xxxx', '2016', 30000000, 'Nuevo'),
('bbb-222', 'BMW', 'xhfsdc', '2018', 27800000, 'Usado'),
('ccc-456', 'BWM', 'vrfbg', '2025', 500000000, 'Nuevo'),
('ddd-788', 'Chevrolet', 'gwirr', '2023', 39800000, 'Usado'),
('eee-098', 'Mercedes Benz', '28dc', '2025', 123456789, 'Nuevo'),
('fff-534', 'Chevrolet', 'aaaa', '2010', 44460000, 'Usado'),
('hhh-147', 'Mercedes Benz', 'nvbve', '2021', 80000000, 'Nuevo'),
('iii-943', 'Nissan', 're42', '2020', 90000000, 'Nuevo'),
('jjj-385', 'KIA', 'r5s3', '2013', 120000000, 'Usado'),
('kkk-984', 'KIA', 'rs6', '2014', 64000500, 'Nuevo'),
('lll-723', 'Renault', 'zzzzzz', '2024', 15000000, 'Nuevo');


insert into cliente (documento,nombre,correo,telefono,direccion) 
values 
('1111111111','Juan Casado', 'juanito@gmail.com', '3154079288', 'calle 1'),
('2222222222','Laura Gil', 'lau@cd.com', '3872173740', 'calle 2'),
('3333333333','Isabela Quiroga', 'isaaaa@gmail.com', '1234567890', 'calle 3'),
('4444444444','Camilo Sanchez', 'camilooo@gmail.com', '4567890606', 'calle 4'),
('5555555555','Jhon Romero', 'jhonro@hotmail.com', '0230039486', 'calle 5'),
('6666666666','Juliana Rivera', 'juriver@hotmail.co,', '2424353647', 'calle 6'),
('1234567890','Luisa Serrano', 'lula@gmail.com', '3949596979', 'calle 7'),
('0987654332','Fernanda Botero', 'fer@gmail.com', '0191826364', 'calle 8'),
('3094830243','Sofia Garcia', 'sofiligar@gmail.com', '3252639400', 'calle 9'),
('7432087432','Santiago Barrera', 'sanbar@hotmail.com', '3456789098', 'calle 10'),
('8739232828','Jose Puentes', 'jopuen@cd.com', '5455468220', 'calle 11');


insert into departamento (nombre) 
values 
('Servicio'),
('Ventas');


insert into rol (nombre,id_departamento) 
values 
('Mecanico', 1),
('Limpiador', 1),
('Gerente de Ventas', 2),
('Vendedor', 2);


insert into empleado (documento,nombre,correo,telefono,id_rol, fecha_contratacion) 
values 
('8498438484','Juan Montoya', 'juanito@gmail.com', '1234567890', 1, '2022-12-10'),
('9290298332','Andrea Gil', 'and@cd.com', '0899887766', 2,  '2019-10-09'),
('8437238743','Isabela Ladera', 'isaaaa@gmail.com', '8288232910', 3, current_date ),
('4893372448','Cristina Sanchez', 'cris@gmail.com', '0987765432', 4, '2024-08-08'),
('2873927982','Paola Ruiz', 'paoru@hotmail.com', '5544332211', 4,  '2020-03-05'),
('3493849389','Juliana Lozano', 'juloz@hotmail.co,', '9988776655', 4, current_date ),
('3293944398','Lauren Boterro', 'lauren@gmail.com', '9098876541', 2, '2018-11-15'),
('3843438293','Camila Suarez', 'carzu@gmail.com', '9876543210', 4, '2022-12-14'),
('8496836723','Sara Garcia', 'saritaa@gmail.com', '3232456781', 1, '2010-10-22'),
('3298398433','Santiago Santos', 'sansan@hotmail.com', '3978653029', 1, '2019-09-24'),
('3823847616','Jose Calderon', 'jocald@cd.com', '2341567829', 2, current_date );

insert into venta(placa,documento_cliente,documento_empleado,total)
values
('aaa-111','1111111111', '4893372448', 3000000),
('bbb-222', '1111111111', '4893372448', 10000000),
('ccc-456', '2222222222', '2873927982', 2780000);

insert into proveedor (nit, nombre, direccion) 
values 
('123456', 'Limpiadores Brillantes', 'Carrera 1'),
('234521', 'Ferreteria buendia', 'Calle 20'),
('0971812', 'Proveedor de autos ideal', 'Carrera 40'),
('1098292', 'Auto limpio y nuevp', 'Calle 14');


insert into servicio  (nombre, descripcion, tipo) 
values 
('Limpieza de muebles', 'Limpiar muebles interiores', 'Mantenimiento'),
('Arreglo de motor', 'Revision y reparacion motor', 'Reparación'),
('Mantenimiento puertas', 'Chequeo de puertas', 'Mantenimiento'),
('Limpieza ventanas', 'Limpiar ventanales', 'Mantenimiento');


insert into historial_servicios(id_servicio,placa,documento_empleado)
values
(1,'aaa-111','8496836723'),
(2,'bbb-222','3298398433'),
(3,'ccc-456','8498438484'),
(2,'ddd-788','8496836723'),
(3,'eee-098','3298398433'),
(4,'aaa-111','8498438484');


insert into historial_proveedor(id_servicio,nit_proveedor,producto,cantidad)
values
(1,'123456', 'Productos de limpieza', 9),
(2,'234521','valvulas',4),
(3,'0971812', 'Implementos de seguridad', 2),
(4,'1098292', 'Productos de olor', 5),
(1,'123456', 'Ambientadores', 3),
(2, '234521','destornilladores',2);

