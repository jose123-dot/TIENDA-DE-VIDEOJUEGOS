create database tienda_videojuego
use tienda_videojuego

--tabla cliente
create table cliente(
Id_cliente int identity (1,1) primary key not null,
Nombre varchar (15) not null,
Apellido varchar (20) not null,
sexo varchar (8) not null,
Direccion text not null,
ciudad varchar (25) not null,
telefono varchar (14) not null,
correo text
)

insert into cliente
values
('Jose', 'Suero', 'M', 'Calle Prolongacion Jaime Mota, No.18, sector Savica', 'Barahona', '809-524-5011', 'josemariasuerocuevas@gmail.com'),
('Michelle', 'Suero', 'F', 'Calle Prolongacion Jaime Mota, No.18, sector Savica', 'Barahona', '809-660-4711', 'michellesuerocuevas@gmail.com'),
('Elvis', 'Suero', 'M', 'Calle Prolongacion Jaime Mota, No.18, sector Savica', 'Azua', '829-660-8013', 'elvis65@gmail.com'),
('Nelsy', 'Mieses', 'F', 'Calle Respaldo, sector Pueblo Nuevo', 'San Juan', '829-657-6987', 'chismosaoriginal@gmail.com'),
('Radhames', 'Suero', 'M', 'Calle Prolongacion Jaime Mota, No.18, sector Savica', 'Barahona', '809-524-5011', 'radhames suero6@gmail.com'),
('Angel Antonio', 'Diaz', 'M', 'Calle Segunda, No.15, sector Baitoita', 'Barahona', '849-549-6131', 'angeldiazp1@gmail.com'),
('Arcadio', 'Ventura', 'M', 'sector Camboya', 'Barahona', '829-654-3861', 'arcventura89@gmail.com'),
('Jade', 'Geraldo', 'F', 'Calle 30 de Mayo, Barrio La Policia', 'Azua', '849-254-7263', 'chismosa02@gmail.com'),
('Evan', 'Geraldo', 'M', 'Calle 30 de Mayo, Barrio La Policia', 'Barahona', '809-536-9814', 'evann891@gmail.com'),
('Ino', 'Yamilet', 'F', 'Calle Respaldo, Barrio Pueblo Nuevo', 'San Juan', '889-624-213', 'chismosafull@gmail.com')


--tabla de cargos 

create table cargos (
idcargos int identity (1,1) primary key not null,
nombre varchar (15) not null
)

insert into  cargos
values('Vendedor'),
('Administrador'),
('cajero'),
('Guardia'),
('Recurso Humano'),
('empaquetador'),
('tecnico'),
('Seo'),
('Adm. de datos'),
('Abogado')


-- tabla empleado
create table empleado (
idempleado int identity (1,1) primary key not null,
Nombre varchar (15) not null,
Apellido varchar (20) not null,
sexo varchar (8) not null,
Direccion text not null,
telefono varchar (14) not null,
correo text, 
idcargo int foreign key references cargos(idcargos)

)
insert into empleado
values
('Juan', 'Cuevas', 'M', 'Calle 2, No.8, sector Los GUandules, Barahona', '879-221-9874', 'jjcuevas5@gmail.com', 1),
('Jose', 'Luis', 'M', 'Calle Principal, No.1, sector Camboya, Barahona', '809-524-5981', 'miguelina@gmail.com',1),
('DR. Victor', 'Hamilton Feliz', 'M', 'Calle JulioA. Coiscou, sector La Playa, Barahona', '809-544-1150', 'vhamiltonf@gmail.com', 10),
('Lic. Eusebio', 'Rocha', 'M', 'Calle Colon, No 43, sector Centro, Barahona', '809-511-1150', 'reusebior1@gmail.com', 10),
('Lalo', 'Cuevas Suero', 'M', 'Calle JulioA. Coiscou, sector La Playa, Barahona', '809-514-3641', 'laloscuevas@gmail.com', 2),
('Diolka', 'Feliz', 'F', 'Enriquillo, Barahona', '869-584-2102', 'diolkita87@gmail.com', 3),
('Gelinson', 'Rocha', 'M', 'los Barrancones de Javi, Barahona', '879-888-5555', 'glrocha123@gmail.com', 3),
('Josefina', 'Cuevas', 'F', 'Calle JulioA. Coiscou, sector La Playa, Barahona', '819-524-1150', 'jos512@gmail.com', 6),
('Cucurrulo', 'Inoa', 'M', 'Calle JulioA. Coiscou, sector La Playa, Barahona', '809-54-1150', 'cucurrulof45@gmail.com', 10),
('Elvis', 'Acosta', 'M', 'Calle Duarte, sector La Raqueta, Barahona', '889-554-1023', 'elvisajim12@gmail.com', 1)

--tabla compañia
create table compañia (
idcompañia int identity (1,1) primary key not null,
nombre varchar(17)
)

insert into compañia 
values
('Nintendo'),
('Microsoft'),
('Sony'),
('Google'),
('Sega'),
('Konami'),
('Capcom'),
('Epic Game'),
('Garena'),
('Disney')

create table categoria (
idcategoria int identity (1,1) primary key not null,
nombre varchar (25) not null 
)

insert into categoria 
values
('Consola'),
('Videojuego'),
('Televisor'),
('Tablet'),
('Muñeco'),
('pantalon'),
('Abrigo'),
('sticker'),
('Tarjeta'),
('Gorro')


create table producto(
idproducto int identity (1,1) Primary key not null,
nombre  varchar (50) not null,
idcompañia int foreign key references compañia(idcompañia),
idcategoria int foreign key references categoria(idcategoria),
precio decimal(20) not null,
cantidad int not null,
fecha_llegada datetime,
fecha_vencimiento datetime
)

insert into producto 
values
('The Legend of Zerda btw', 1, 2, 2500.00, 50, '18/04/2022', '18/05/2022'),
('God Of War IV', 3, 2, 2000.80, 30, '18/04/2022', '18/07/2022'),
('PlayStation 5', 3, 1, 25600.00, 80, '15/03/2022', '18/05/2022'),
('Google Play', 4, 9, 500.00, 180, '18/04/2022', '18/05/2022'),
('Super Mario Odyssey', 1, 2, 2500.00, 50, '18/04/2022', '18/05/2022'),
('Nintendo Switch', 1, 1, 20000.15, 140, '14/02/2022', '13/04/2022'),
('Luigi Mansion', 1, 2, 1500, 50, '18/04/2022', '8/05/2022'),
('Minecraft', 2, 2, 5.00, 175, '18/04/2022', '1/05/2022'),
('Stadia', 4, 1, 2500.00, 30, '18/04/2022', '8/05/2022'),
('Super Smash Bros', 1, 2, 3000.00, 130, '18/04/2022', '18/05/2022')


-- tabla venta
create table venta(
       idventa integer primary key identity(1,1) not  null,
       idcliente integer not null,
       idempleado integer not null,
       fecha_hora datetime not null,
       impuesto decimal NOT NULL,
       total decimal not null,
       estado varchar(20) not null,
       FOREIGN KEY (idcliente) REFERENCES cliente (Id_cliente),
       FOREIGN KEY (idempleado) REFERENCES empleado (idempleado)
)

insert into venta 
values
(1, 2, getdate(), 08, 27000.00, 'EXCELENTE'),
(3, 1, getdate(), 02, 510, 'PERFECTO'),
(5, 1, getdate(), 02, 510, 'BIEN'),
(1, 1, getdate(), 02, 3200, 'PERFECTO'),
(10, 2, getdate(), 02, 510, 'BIEN'),
(8, 1, getdate(), 08, 27000.00, 'BIEN'),
(1, 2, getdate(), 02, 3200, 'EXCELENTE'),
(2, 2, getdate(), 02, 5.25, 'BIEN'),
(1, 2, getdate(), 10, 1650, 'BIEN'),
(3, 2, getdate(), 02, 3240, 'PERFECTO')

--Tabla detalle_venta
create table detalle_venta1(
       iddetalle_venta integer primary key identity (1,1) not null,
       idventa integer not null,
       idproducto integer not null,
       cantidad integer not null,
       precio decimal(11,2) not null,
       descuento decimal(11,2) not null,
       FOREIGN KEY (idventa) REFERENCES venta (idventa) ON DELETE CASCADE,
       FOREIGN KEY (idproducto) REFERENCES  producto (idproducto)
)
 

insert into detalle_venta1
values
(2, 4, 5, 2550,400),
(1, 1, 1, 27000,600),
(6, 4, 6, 163000,10000),
(10, 10, 2, 6480,800),
(9, 7, 2, 3300,00),
(8, 7, 3, 4950,900),
(7, 10, 1, 3200,00),
(3, 4, 4, 2040,00),
(2, 4, 10, 5100,1000),
(2, 4, 10, 3570,500)

--tabla de cantidad de pedidos hecho por el cliente 
create table cantpedidos(
idcant_pedidos int primary key identity (1,1) not null,
idcliente int,
FOREIGN KEY (idcliente) REFERENCES cliente (Id_cliente),
cantidad int,
)

insert into cantpedidos
values
(3,4),
(8,1),
(5,1),
(2,1),
(1,3)

--tabla modificacion
create table modificacion(
idmodificacion int primary key identity (1,1) not null,
idempleado int,
foreign key (idempleado) references empleado(idempleado),
fecha datetime
)

													--REALIZAR LAS SIGUIENTES VISTAS

-- 1- LISTAR ORDENES CON SU DETALLE
create view listorden
as
select d.iddetalle_venta, c.Nombre as 'nombre del cliente', c.Apellido as 'apellido del cliente', p.nombre as 'productos ordenados', d.idventa, d.cantidad, d.descuento 
from cliente c 
inner join 
venta v
on c.Id_cliente = v.idcliente
inner join detalle_venta1  d
on v.idventa = d.idventa
inner join producto p
on d.idproducto = p.idproducto
go



-- 2- INFORMACION DE CLIENTES
create view verclientes
as
select * from cliente


-- 3- INFORMACION DE EMPLEADOS(SI APLICA)
create view informacion_Empleado
as
select * from empleado

--CLIENTES CON MAS PEDIDOS
create view cliente_pedido
as
select top 2 c. Id_cliente, c.Nombre, c.Apellido, c.ciudad, cv.cantidad as 'Cantidad de pedidos'  from cantpedidos cv
left join cliente c
on c.Id_cliente = cv.idcliente
order by (cantidad) desc



									--CREAR LOS SIGUIENTES PROCEDIMIENTOS ALMACENADOS--

--INSERTAR REGISTRO DE VENTA
create proc registro_venta
as
insert into venta 
values
(7, 2, getdate(), 08, 27000.00, 'EXCELENTE')

insert into detalle_venta1
values
(11, 1, 1, 27000.00, 00)

------select * from venta v
------inner join detalle_venta1 d
------on v.idventa = d.idventa


select * from detalle_venta1


--⦁	INSERTAR EMPLEADO

create proc insertar_empleado
as
insert into empleado
values
('orlando', 'Abreu', 'M', 'Calle Restauracion, sector La Raqueta, Barahona', '879-204-1013', 'orlandoabreu@hotmail.com', 1)
exec insertar_empleado

--⦁	INSERTAR PRODUCTO 

create proc insertar_producto
as
insert into producto 
values
('Mario Kart', 1, 2, 2500.00, 50, '07/09/2022', '18/5/2023')
exec insertar_producto


--⦁	ACTUALIZAR CANTIDAD EN EXISTENCIA DE UN PRODUCTO CON REGISTRO EN TABLA MODIFICACIONES DE QUIEN FUE QUE LO MODIFICO.
create proc actualizar_producto
as
UPDATE producto
SET cantidad = 250
 WHERE idproducto=1

 insert into modificacion 
 values (
 5, GETDATE()
 )
exec actualizar_producto

--select * from producto
--select * from modificacion


--⦁	FILTRAR CLIENTE POR CIUDAD
create proc filtra_ciudad
as
select * from cliente order by (ciudad) asc










