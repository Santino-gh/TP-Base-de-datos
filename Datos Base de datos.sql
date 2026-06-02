-- Usamos la tabla restaurante

use restaurante;

insert into mozo (nombre, turno) values 
('Carlos Gómez', 'Mañana'), ('María Rodríguez', 'Tarde'), ('Jorge López', 'Noche'),
('Ana Martínez', 'Mañana'), ('Luis Pérez', 'Tarde'), ('Sofía Bruno', 'Noche'),
('Diego Díaz', 'Mañana'), ('Elena Gómez', 'Tarde'), ('Marcos Silva', 'Noche'),
('Laura Torres', 'Mañana'), ('Gabriel Ruiz', 'Tarde'), ('Lucía Castro', 'Noche'),
('Martín Sosa', 'Mañana'), ('Clara Benítez', 'Tarde'), ('Tomás Herrera', 'Noche'),
('Valentina Paz', 'Mañana'), ('Nicolás Ibáñez', 'Tarde'), ('Camila Romero', 'Noche'),
('Facundo Acosta', 'Mañana'), ('Julieta Peralta', 'Tarde');

insert into categoria (nombre) values 
('Bebidas sin Alcohol'), ('Cervezas'), ('Vinos'), ('Tragos Clásicos'), 
('Entradas Frías'), ('Entradas Calientes'), ('Ensaladas'), ('Pastas'), 
('Carnes Rojas'), ('Aves'), ('Pescados y Mariscos'), ('Minutas'), 
('Guarniciones'), ('Pizzas'), ('Empanadas'), ('Opciones Veganas'), 
('Menú Infantil'), ('Postres Tradicionales'), ('Helados'), ('Cafetería');

insert into producto (nombre, precio, idCategoria) values 
('Agua Mineral 500ml', 2.00, 1), ('Gaseosa Cola 350ml', 2.50, 1),
('Cerveza Tirada Pinta', 4.50, 2), ('Vino Malbec Copa', 6.00, 3),
('Fernet con Cola', 6.50, 4), ('Provoleta a la Parra', 5.00, 6),
('Papas con Cheddar', 5.50, 6), ('Ensalada César', 7.00, 7),
('Sorrentinos de Jamón y Queso', 9.00, 8), ('Bife de Chorizo', 14.50, 9),
('Milanesa de Pollo', 8.50, 10), ('Filet de Merluza', 10.00, 11),
('Hamburguesa Completa', 9.50, 12), ('Porción de Puré', 3.00, 13),
('Pizza Mozzarella Grande', 11.00, 14), ('Empanada de Carne', 1.80, 15),
('Risotto de Hongos (Vegano)', 10.50, 16), ('Nuggets con Papas', 6.50, 17),
('Flan con Dulce de Leche', 3.50, 18), ('Café Espresso', 2.00, 20);

insert into mesa (numeroMesa, capacidad) values 
(1, 2), (2, 2), (3, 2), (4, 2), (5, 4), 
(6, 4), (7, 4), (8, 4), (9, 4), (10, 4), 
(11, 6), (12, 6), (13, 6), (14, 6), (15, 8), 
(16, 8), (17, 10), (18, 2), (19, 4), (20, 6);

insert into pedido (idMesa, idMozo, estado) values 
(1, 1, 'Entregado'), (3, 2, 'Entregado'), (5, 3, 'Entregado'), (7, 4, 'Pendiente'),
(9, 5, 'Pendiente'), (2, 6, 'Entregado'), (4, 7, 'Entregado'), (6, 8, 'Entregado'),
(8, 9, 'Pendiente'), (10, 10, 'Pendiente'), (11, 11, 'Entregado'), (12, 12, 'Entregado'),
(13, 13, 'Entregado'), (14, 14, 'Pendiente'), (15, 15, 'Cancelado'), (16, 16, 'Entregado'),
(17, 17, 'Entregado'), (18, 18, 'Entregado'), (19, 19, 'Pendiente'), (20, 20, 'Pendiente');

insert into detallePedido (idPedido, idProducto, cantidad, precioUnitario) values 
(1, 13, 1, 9.50),  (1, 2, 1, 2.50),   -- Pedido 1
(2, 9, 2, 9.00),   (2, 4, 2, 6.00),   -- Pedido 2
(3, 10, 2, 14.50), (3, 7, 1, 5.50),   -- Pedido 3
(4, 15, 1, 11.00), (4, 3, 3, 4.50),   -- Pedido 4
(5, 16, 6, 1.80),  (5, 2, 2, 2.50),   -- Pedido 5
(6, 11, 1, 8.50),  (6, 1, 1, 2.00),   -- Pedido 6
(7, 17, 2, 10.50), (7, 1, 2, 2.00),   -- Pedido 7
(8, 12, 1, 10.00), (8, 5, 1, 6.50),   -- Pedido 8
(9, 18, 2, 6.50),  (9, 2, 2, 2.50),   -- Pedido 9
(10, 6, 1, 5.00),  (10, 3, 2, 4.50),  -- Pedido 10
(11, 10, 4, 14.50), (11, 4, 4, 6.00), -- Pedido 11
(12, 15, 2, 11.00), (12, 3, 4, 4.50), -- Pedido 12
(13, 9, 3, 9.00),  (13, 1, 3, 2.00),  -- Pedido 13
(14, 13, 2, 9.50), (14, 14, 2, 3.00), -- Pedido 14
(15, 16, 12, 1.80), (15, 5, 4, 6.50), -- Pedido 15
(16, 8, 2, 7.00),  (16, 1, 2, 2.00),  -- Pedido 16
(17, 10, 1, 14.50), (17, 19, 1, 3.50),-- Pedido 17
(18, 11, 2, 8.50), (18, 20, 2, 2.00), -- Pedido 18
(19, 13, 1, 9.50), (19, 3, 2, 4.50),  -- Pedido 19
(20, 15, 1, 11.00), (20, 2, 3, 2.50); -- Pedido 20