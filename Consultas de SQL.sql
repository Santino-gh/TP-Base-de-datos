USE restaurante;
-- Todos los pedidos con mozo y mesa, JOINs entre múltiples tablas  
SELECT
    p.idPedido,
    m.numeroMesa,
    mz.nombre AS mozo,
    p.fecha,
    p.estado
FROM pedido p
JOIN mesa m  ON p.idMesa = m.idMesa
JOIN mozo mz ON p.idMozo = mz.idMozo
ORDER BY p.fecha DESC;

-- Detalle completo de cada pedido con productos
SELECT
    p.idPedido,
    m.numeroMesa,
    mz.nombre AS mozo,
    pr.nombre AS producto,
    pr.idCategoria,
    dp.cantidad,
    dp.precioUnitario,
    (dp.cantidad * dp.precioUnitario) AS subtotal
FROM pedido p
JOIN mesa m ON p.idMesa = m.idMesa
JOIN mozo mz ON p.idMozo = mz.idMozo
JOIN detallePedido dp ON p.idPedido  = dp.idPedido
JOIN producto pr ON dp.idProducto = pr.idProducto;

-- Pedidos pendientes de una mesa específica, Filtros con WHERE
SELECT
    p.idPedido,
    m.numeroMesa,
    mz.nombre AS mozo,
    p.fecha,
    p.estado
FROM pedido p
JOIN mesa m  ON p.idMesa = m.idMesa
JOIN mozo mz ON p.idMozo = mz.idMozo
WHERE p.estado = 'Pendiente'
  AND m.numeroMesa = 7; -- Ingresar numero de mesa;
  
  -- Productos de una categoría con precio mayor a X
SELECT nombre, idCategoria, precio
FROM producto
WHERE idCategoria = 2 -- Bebida a elegir, editable
  AND precio > 1 -- Ingresar precio, el campo se puede editar
ORDER BY precio DESC;
-- Pedidos de un mozo en un rango de fechas
SELECT
    p.idPedido,
    m.numeroMesa,
    p.fecha,
    p.estado
FROM pedido p
JOIN mesa m  ON p.idMesa = m.idMesa
JOIN mozo mz ON p.idMozo = mz.idMozo
WHERE mz.nombre = 'Jorge López' -- Colocar nombre del mozo
AND p.fecha BETWEEN '2026-06-01 22:00:22' AND '2026-07-01 22:00:22';-- Colocar rango de fechas;

-- Productos ordenados por precio descendente, Ordenamientos con ORDER BY
SELECT nombre, idCategoria, precio
FROM producto
ORDER BY idCategoria ASC, precio DESC;

-- Pedidos más recientes con total calculado
SELECT
    p.idPedido,
    m.numeroMesa,
    p.fecha,
    p.estado,
    SUM(dp.cantidad * dp.precioUnitario) AS total
FROM pedido p
JOIN mesa m ON p.idMesa = m.idMesa
JOIN detallePedido dp ON p.idPedido = dp.idPedido
GROUP BY p.idPedido, m.numeroMesa, p.fecha, p.estado
ORDER BY p.fecha DESC;

-- Cantidad de pedidos y recaudación por mozo, Agrupamientos con GROUP BY
SELECT
    mz.nombre AS mozo,
    mz.turno,
    COUNT(DISTINCT p.idPedido) AS cantidad_pedidos,
    SUM(dp.cantidad * dp.precioUnitario) AS total_recaudado
FROM mozo mz
JOIN pedido p ON mz.idMozo = p.idMozo
JOIN detallePedido dp ON p.idPedido = dp.idPedido
GROUP BY mz.idMozo, mz.nombre, mz.turno
ORDER BY total_recaudado DESC;

-- Actividad por mesa (pedidos y total generado)
SELECT
    m.numeroMesa,
    m.capacidad,
    COUNT(DISTINCT p.idPedido) AS total_pedidos,
    SUM(dp.cantidad * dp.precioUnitario) AS total_facturado
FROM mesa m
JOIN pedido p ON m.idMesa = p.idMesa
JOIN detallePedido dp ON p.idPedido  = dp.idPedido
GROUP BY m.idMesa, m.numeroMesa, m.capacidad
ORDER BY total_facturado DESC;

-- Productos más solicitados (ranking), Funciones de agregación
SELECT
    pr.nombre AS producto,
    pr.idCategoria,
    SUM(dp.cantidad) AS unidades_vendidas,
    COUNT(DISTINCT dp.idPedido) AS veces_pedido,
    SUM(dp.cantidad * dp.precioUnitario) AS ingreso_total
FROM producto pr
JOIN detallePedido dp ON pr.idProducto = dp.idProducto
GROUP BY pr.idProducto, pr.nombre, pr.idCategoria
ORDER BY unidades_vendidas DESC;

-- Resumen general del servicio
SELECT
    COUNT(DISTINCT p.idPedido) AS total_pedidos,
    COUNT(DISTINCT p.idMesa) AS mesas_atendidas,
    SUM(dp.cantidad * dp.precioUnitario) AS facturacion_total,
    AVG(dp.cantidad * dp.precioUnitario) AS ticket_promedio,
    MAX(dp.cantidad * dp.precioUnitario) AS venta_maxima,
    MIN(dp.cantidad * dp.precioUnitario) AS venta_minima
FROM pedido p
JOIN detallePedido dp ON p.idPedido = dp.idPedido;

-- Productos con más de 5 unidades vendidas (HAVING)
SELECT
    pr.nombre AS producto,
    pr.idCategoria,
    SUM(dp.cantidad) AS unidades_vendidas
FROM producto pr
JOIN detallePedido dp ON pr.idProducto = dp.idProducto
GROUP BY pr.idProducto, pr.nombre, pr.idCategoria
HAVING SUM(dp.cantidad) > 5
ORDER BY unidades_vendidas DESC;