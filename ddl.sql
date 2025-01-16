create type estado_vehiculo as ENUM('Nuevo','Usado');
create type tipo_servicio as ENUM('Mantenimiento','Reparación');

create table if not exists vehiculo (
	placa varchar(7) primary key,
	marca varchar(100) not null,
	modelo varchar(50) not null,
	anio varchar(4) not null,
	precio decimal(15,2) not null,
	estado estado_vehiculo not null,
	vendido boolean not null default '0'
);

create table if not exists cliente (
	documento varchar(10) primary key,
	nombre varchar(100) not null,
	correo varchar(100) not null unique,
	telefono varchar(13) not null unique,
	direccion varchar(100),
	ha_comprado boolean not null default '0',
	favoritos varchar(7)[]
);

create table if not exists departamento (
	id serial primary key,
	nombre varchar(100) not null unique
);

create table if not exists rol (
	id serial primary key,
	nombre varchar(100) not null unique,
	id_departamento int not null references departamento(id)
);

create table if not exists empleado (
	documento varchar(10) primary key,
	nombre varchar(100) not null,
	correo varchar(100) unique,
	telefono varchar(13) not null unique,
	id_rol int not null references rol(id),
	fecha_contratacion date not null default current_day,
	activo boolean not null default '1'
);

create table if not exists venta (
	id serial primary key,
	placa varchar(7) not null references vehiculo(placa),
	documento_cliente varchar(10) not null references cliente(documento),
	documento_empleado varchar(10) not null references empleado(documento),
	total decimal(10,2) not null,
	fecha timestamp default current_timestamp
);

create table if not exists proveedor (
	nit varchar(50) primary key,
	nombre varchar(100) not null unique,
	direccion varchar(30) not null
);

create table if not exists servicio (
	id serial primary key,
	nombre varchar(100) not null unique,
	descripcion text,
	tipo tipo_servicio not null
);

create table if not exists historial_servicios (
	id serial primary key,
	id_servicio int not null references servicio(id),
	placa varchar(7) not null references vehiculo(placa),
	documento_empleado varchar(10) not null references empleado(documento),
	fecha timestamp default current_timestamp
);

create table if not exists historial_proveedor (
	id serial primary key,
	nit_proveedor varchar(50) not null references proveedor(nit),
	id_servicio int not null references servicio(id),
	producto varchar(80) not null,
	cantidad int not null default 1,
	fecha timestamp default current_timestamp
);

