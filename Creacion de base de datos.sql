-- Creamos la base de datos si todavia no existe y las seleccionamos para su uso.
create database if not exists Restaurante;
use Restaurante;

-- Creación de Tablas.

create table if not exists mozo (

idMozo int auto_increment primary key,

nombre varchar(40) not null,

turno enum('Mañana', 'Tarde', 'Noche') not null

);

create table if not exists categoria (

idCategoria int auto_increment primary key,

nombre varchar(40) not null unique

);

create table if not exists producto (

idProducto int auto_increment primary key,

nombre varchar(40) not null,

precio decimal(10,2) not null,

idCategoria int not null,

foreign key (idCategoria) references categoria(idCategoria)
);

create table if not exists mesa (

idMesa int auto_increment primary key,

numeroMesa int not null unique,

capacidad int not null default 4

);

create table if not exists pedido (

idPedido int auto_increment primary key,

idMesa int not null,

idMozo int not null, 

fecha datetime default current_timestamp,

estado enum('Pendiente', 'Entregado', 'Cancelado') not null default 'Pendiente',

foreign key (idMesa) references mesa(idMesa),

foreign key (idMozo) references mozo(idMozo)

);

create table if not exists detallePedido(

idDetalle int auto_increment primary key,

idPedido int not null,

idProducto int not null,

cantidad int not null check (cantidad > 0),

precioUnitario decimal(10,2) not null,

foreign key (idPedido) references pedido(idPedido) on delete cascade,

foreign key (idProducto) references producto(idProducto)
);

