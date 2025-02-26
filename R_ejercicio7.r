# Paso 1: Crear una base de datos llamada "tienda.db"
conexion <- dbConnect(SQLite(), dbname = "tienda.db")

# Paso 2: Crear una tabla llamada "productos"
query_crear_tabla <- "
CREATE TABLE productos (
  id INTEGER PRIMARY KEY, 
  nombre TEXT, 
  precio REAL, 
  stock INTEGER
);"

dbExecute(conexion, query_crear_tabla)

# Paso 3: Insertar datos en la tabla desde R
query_insertar_productos <- "
INSERT INTO productos (nombre, precio, stock) VALUES 
('Laptop', 1200.50, 10), 
('Mouse', 25.99, 50), 
('Teclado', 45.00, 30);
"

dbExecute(conexion, query_insertar_productos)

# Paso 4: Consultar todos los productos desde R
productos <- dbGetQuery(conexion, "SELECT * FROM productos;")
print(productos)

# Paso 5: ¿Cuántos productos hay en la base de datos?
cantidad_productos <- dbGetQuery(conexion, "SELECT COUNT(*) AS total FROM productos;")
print(cantidad_productos)

# Paso 6: ¿Cuál es el producto con el precio más alto?
producto_mas_caro <- dbGetQuery(conexion, "SELECT * FROM productos ORDER BY precio DESC LIMIT 1;")
print(producto_mas_caro)

# Paso 7: ¿Cuántos productos tienen un stock menor a 20?
productos_bajo_stock <- dbGetQuery(conexion, "SELECT COUNT(*) AS total FROM productos WHERE stock < 20;")
print(productos_bajo_stock)

# Paso 8: Decrementa en 1 el stock del producto con nombre ‘Laptop’
dbExecute(conexion, "UPDATE productos SET stock = stock - 1 WHERE nombre = 'Laptop';")

# Verificar actualización
stock_laptop <- dbGetQuery(conexion, "SELECT * FROM productos WHERE nombre = 'Laptop';")
print(stock_laptop)

# Paso 9: Elimina el producto con nombre 'Mouse'
dbExecute(conexion, "DELETE FROM productos WHERE nombre = 'Mouse';")

# Verificar eliminación
productos_actualizados <- dbGetQuery(conexion, "SELECT * FROM productos;")
print(productos_actualizados)

# Paso 10: Cierra la conexión
dbDisconnect(conexion)