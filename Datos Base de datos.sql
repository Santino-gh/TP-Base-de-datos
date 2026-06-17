USE restaurante;

-- 1. Insertar Mozos
INSERT INTO mozo (nombre, turno) VALUES  
('Carlos Gómez', 'Mañana'), ('María Rodríguez', 'Tarde'), ('Jorge López', 'Noche'),
('Ana Martínez', 'Mañana'), ('Luis Pérez', 'Tarde'), ('Sofía Bruno', 'Noche'),
('Diego Díaz', 'Mañana'), ('Elena Gómez', 'Tarde'), ('Marcos Silva', 'Noche'),
('Laura Torres', 'Mañana'), ('Gabriel Ruiz', 'Tarde'), ('Lucía Castro', 'Noche'),
('Martín Sosa', 'Mañana'), ('Clara Benítez', 'Tarde'), ('Tomás Herrera', 'Noche'),
('Valentina Paz', 'Mañana'), ('Nicolás Ibáñez', 'Tarde'), ('Camila Romero', 'Noche'),
('Facundo Acosta', 'Mañana'), ('Julieta Peralta', 'Tarde');


INSERT INTO categoria (nombre) VALUES  
('Bebidas sin Alcohol'), ('Cervezas'), ('Vinos'), ('Tragos Clásicos'),  
('Entradas Frías'), ('Entradas Calientes'), ('Ensaladas'), ('Pastas'),  
('Carnes Rojas'), ('Aves'), ('Pescados y Mariscos'), ('Minutas'),  
('Guarniciones'), ('Pizzas'), ('Empanadas'), ('Opciones Veganas'),  
('Menú Infantil'), ('Postres Tradicionales'), ('Helados'), ('Cafetería');


INSERT INTO producto (nombre, precio, idCategoria) VALUES  
-- Bebidas sin Alcohol 
('Agua con Gas 500ml', 2.00, 1), 
('Jugo de Naranja Exprimido', 3.50, 1),

-- Cervezas 
('Cerveza Tirada Pinta', 5.00, 2), 
('Cerveza Negra Stout', 4.80, 2),

-- Vinos 
('Vino Malbec Copa', 6.50, 3), 
('Vino Cabernet Sauvignon Botella', 22.00, 3),

-- Tragos Clásicos 
('Negroni', 7.00, 4), 
('Gin Tonic', 6.80, 4), 
('Fernet con Cola', 6.50, 4),

-- Entradas Frías 
('Tabla de Fiambres', 12.00, 5), 
('Vitel Toné', 6.50, 5),

-- Entradas Calientes
('Bastones de Mozzarella', 5.00, 6), 
('Papas con Cheddar', 9.50, 6),

-- Ensaladas 
('Ensalada Mixta', 4.00, 7), 
('Ensalada de Rúcula y Parmesano', 5.50, 7),

-- Pastas 
('Tallarines con Tuco', 8.00, 8), 
('Ravioles de Verdura', 8.50, 8),

-- Carnes Rojas
('Entraña con Fritas', 16.00, 9), 
('Asado de Tira', 15.00, 9),

-- Aves
('Pollo al Verdeo', 9.80, 10), 
('Suprema de Pollo Maryland', 11.00, 10),

-- Pescados y Mariscos 
('Salmón Rosado a la Plancha', 18.50, 11), 
('Cazuela de Mariscos', 16.00, 11),

-- Minutas 
('Milanesa a la Napolitana', 11.50, 12), 
('Sándwich de Lomito Completo', 10.50, 12),

-- Guarniciones 
('Papas Fritas Porción', 3.50, 13), 
('Ensalada Rusa', 3.80, 13),

-- Pizzas 
('Pizza Fugazzeta Grande', 12.50, 14), 
('Pizza de Jamón y Morrones', 13.50, 14),

-- Empanadas 
('Empanada de Jamón y Queso', 1.80, 15), 
('Empanada de Pollo', 1.80, 15),

-- Opciones Veganas 
('Hamburguesa de Garbanzos', 8.50, 16), 
('Wok de Vegetales', 9.00, 16),

-- Menú Infantil 
('Milanesita con Caritas de Papa', 6.00, 17), 
('Fideos con Manteca', 5.00, 17),

-- Postres Tradicionales 
('Panqueque con Dulce de Leche', 4.00, 18), 
('Budín de Pan', 3.50, 18),

-- Helados 
('Copa Melba', 5.00, 19), 
('Bocha de Helado Americana', 2.50, 19),

-- Cafetería 
('Café Jarrito', 2.30, 20), 
('Capuccino con Canela', 3.20, 20);



INSERT INTO mesa (numeroMesa, capacidad) VALUES  
(1, 2), (2, 2), (3, 2), (4, 2), (5, 4),  
(6, 4), (7, 4), (8, 4), (9, 4), (10, 4),  
(11, 6), (12, 6), (13, 6), (14, 6), (15, 8),  
(16, 8), (17, 10), (18, 2), (19, 4), (20, 6),
(21, 2), (22, 4), (23, 4), (24, 6), (25, 8),  
(26, 2), (27, 4), (28, 4), (29, 6), (30, 12),
(31, 4), (32, 4); 



INSERT INTO pedido (idPedido, idMesa, idMozo, estado) VALUES  
(1, 1, 1, 'Entregado'), (2, 3, 2, 'Entregado'), (3, 5, 3, 'Entregado'), (4, 7, 4, 'Pendiente'),
(5, 9, 5, 'Pendiente'), (6, 2, 6, 'Entregado'), (7, 4, 7, 'Entregado'), (8, 6, 8, 'Entregado'),
(9, 8, 9, 'Pendiente'), (10, 10, 10, 'Pendiente'), (11, 11, 11, 'Entregado'), (12, 12, 12, 'Entregado'),
(13, 13, 13, 'Entregado'), (14, 14, 14, 'Pendiente'), (15, 15, 15, 'Cancelado'), (16, 16, 16, 'Entregado'),
(17, 17, 17, 'Entregado'), (18, 18, 18, 'Entregado'), (19, 19, 19, 'Pendiente'), (20, 20, 20, 'Pendiente'),

(21, 21, 1, 'Entregado'), (22, 22, 2, 'Entregado'), (23, 23, 3, 'Entregado'), (24, 24, 4, 'Entregado'),
(25, 25, 5, 'Entregado'), (26, 26, 6, 'Entregado'), (27, 27, 7, 'Entregado'), (28, 28, 8, 'Entregado'),
(29, 29, 9, 'Entregado'), (30, 30, 10, 'Entregado'), (31, 1, 11, 'Entregado'), (32, 2, 12, 'Entregado');



INSERT INTO detallePedido (idPedido, idProducto, cantidad, precioUnitario) VALUES  
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
(20, 15, 1, 11.00), (20, 2, 3, 2.50), -- Pedido 20
(21, 23, 1, 16.00), (21, 25, 1, 9.80),  (21, 4, 2, 6.00), 
(22, 37, 2, 12.50), (22, 24, 2, 5.00),  (22, 39, 4, 1.80), 
(23, 33, 1, 11.50), (23, 2, 1, 2.50),
(24, 29, 3, 15.00), (24, 35, 2, 3.50),  (24, 6, 2, 6.50), 
(25, 31, 2, 18.50), (25, 5, 2, 6.50), 
(26, 40, 1, 8.50),  (26, 21, 1, 2.00), 
(27, 27, 2, 8.50),  (27, 1, 2, 2.00),   (27, 14, 2, 4.00), 
(28, 34, 1, 10.50), (28, 22, 1, 3.50),  (28, 40, 1, 2.30),
(29, 29, 4, 15.00), (29, 26, 2, 22.00), (29, 39, 4, 5.00), 
(30, 38, 3, 13.50), (30, 24, 6, 5.00),  (30, 35, 3, 3.50), 
(31, 41, 1, 3.20),  (31, 40, 1, 3.50), 
(32, 33, 2, 11.50), (32, 3, 2, 4.50);