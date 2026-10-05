--Consultamos la tabla en su totalidad
SELECT nombre FROM clientes
--Clientes con ventas mayores a 500
SELECT * FROM ventas WHERE total>=500
--Poner ALIAS a los resultados
SELECT sum(total) AS Total FROM ventas
--Unir tablas
SELECT nombre, concepto, total
FROM ventas
JOIN clientes
ON ventas.cliente_id = clientes.id
--Muestra el nombre del cliente y el total de la venta, ordenados de mayor a menor monto.
SELECT nombre, total
FROM ventas
JOIN clientes
ON ventas.cliente_id = clientes.id
ORDER BY total DESC
--Muestra el nombre del cliente, el concepto de la venta y el total, pero solo de las ventas que superen los $500, ordenadas de mayor a menor.
SELECT nombre, concepto, total
FROM ventas
JOIN clientes
ON ventas.cliente_id = clientes.id
WHERE total >= 500
ORDER BY total DESC
--Cuantas ventas ha hecho cada cliente
SELECT nombre, COUNT(*)
FROM clientes
JOIN ventas
ON clientes.id = ventas.cliente_id
GROUP BY nombre