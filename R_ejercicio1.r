# Ejercicio 1: Crea un vector denominado ventas con los valores 120, 140 y 90
ventas <- c(120, 140, 90)
print("Ejercicio 1: Vector ventas")
print(ventas)


# Ejercicio 2: Asigna los valores de enero, febrero y marzo como nombres de columnas para el vector ventas
names(ventas) <- c("enero", "febrero", "marzo")
print("Ejercicio 2: Vector ventas con nombres de meses")
print(ventas)


# Ejercicio 3: Calcula la media de ventas de los tres meses
media_ventas <- mean(ventas)
print("Ejercicio 3: Media de ventas")
print(media_ventas)


# Ejercicio 4: Crea un nuevo vector con los elementos de ventas, pero mayores de 100
ventas_mayores_100 <- ventas[ventas > 100]
print("Ejercicio 4: Ventas mayores a 100")
print(ventas_mayores_100)


# Ejercicio 5: Indica cuál es el mes con mayores ventas
mes_mayores_ventas <- names(ventas[ventas == max(ventas)])
print("Ejercicio 5: Mes con mayores ventas")
print(mes_mayores_ventas)


# Ejercicio 1: Crea un vector denominado ventas con los valores 120, 140 y 90
ventas <- c(120, 140, 90)
print("Ejercicio 1: Vector ventas")
print(ventas)

# Ejercicio 2: Asigna los valores de enero, febrero y marzo como nombres de columnas para el vector ventas
names(ventas) <- c("enero", "febrero", "marzo")
print("Ejercicio 2: Vector ventas con nombres de meses")
print(ventas)

# Ejercicio 3: Calcula la media de ventas de los tres meses
media_ventas <- mean(ventas)
print("Ejercicio 3: Media de ventas")
print(media_ventas)

# Ejercicio 4: Crea un nuevo vector con los elementos de ventas, pero mayores de 100
ventas_mayores_100 <- ventas[ventas > 100]
print("Ejercicio 4: Ventas mayores a 100")
print(ventas_mayores_100)

# Ejercicio 5: Indica cuál es el mes con mayores ventas
mes_mayores_ventas <- names(ventas[ventas == max(ventas)])
print("Ejercicio 5: Mes con mayores ventas")
print(mes_mayores_ventas)


# Ejercicio 6: Crea una matriz con dos filas y cuatro columnas, con estos dos vectores
Vector1 <- c(4, 10, 5, 3)
Vector2 <- c(2, 8, 25, 14)
matriz_6 <- rbind(Vector1, Vector2)
print("Ejercicio 6: Matriz con dos filas y cuatro columnas")
print(matriz_6)


# Ejercicio 7: Crea una matriz con 6 filas y 4 columnas con números del 1 al 24
matriz_7 <- matrix(1:24, nrow = 6, byrow = TRUE)
print("Ejercicio 7: Matriz con 6 filas y 4 columnas")
print(matriz_7)


# Ejercicio 8: Selecciona el valor de la matriz que está en la fila 3 y la columna 4 de la matriz
valor_8 <- matriz_7[3, 4]
print("Ejercicio 8: Valor de la fila 3 y columna 4")
print(valor_8)


# Ejercicio 9: Crea una nueva matriz seleccionando las 3 primeras filas y las 2 primeras columnas de la matriz
matriz_9 <- matriz_7[1:3, 1:2]
print("Ejercicio 9: Matriz con las 3 primeras filas y 2 primeras columnas")
print(matriz_9)


# Ejercicio 10: A la matriz resultante del ejercicio 9, añádele una nueva columna que sea la suma de los valores de cada fila
SumaDeFilas <- rowSums(matriz_9)
matriz_10 <- cbind(matriz_9, SumaDeFilas)
print("Ejercicio 10: Matriz con nueva columna que es la suma de cada fila")
print(matriz_10)
