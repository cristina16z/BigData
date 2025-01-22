# Ejercicio 1: Crea un DataFrame con los datos de tres personas
nombres <- c("Antonio", "María", "Juan")
edades <- c(40, 30, 35)
sexo <- c("M", "F", "M")
personas <- data.frame(Nombres = nombres, Edades = edades, Sexo = sexo)
print("Ejercicio 1: DataFrame de personas")
print(personas)


# Ejercicio 2: Crea la variable coches con los datos del dataset mtcars
coches <- mtcars
print("Ejercicio 2: Dataset mtcars almacenado en la variable 'coches'")
print(head(coches, 3)) # Mostrando las primeras 3 filas para confirmar el dataset


# Ejercicio 3: Verifica si coches es un DataFrame
es_dataframe <- is.data.frame(coches)
print("Ejercicio 3: ¿'coches' es un DataFrame?")
print(es_dataframe)


# Ejercicio 4: Imprime las primeras seis líneas de la variable coches
print("Ejercicio 4: Primeras seis líneas del DataFrame 'coches'")
print(head(coches))


# Ejercicio 5: ¿Cuál es la media de la columna MPG de coches?
media_mpg <- mean(coches$mpg)
print("Ejercicio 5: Media de la columna MPG")
print(media_mpg)


# Ejercicio 6: ¿Cuál es el valor de CYL para el coche 'Mazda RX4'?
# Método 1: Usando la anotación fila-columna
valor_cyl_1 <- coches["Mazda RX4", "cyl"]

# Método 2: Usando $
valor_cyl_2 <- coches$cyl["Mazda RX4"]

print("Ejercicio 6: Valor de CYL para 'Mazda RX4'")
print(valor_cyl_1) # Método 1
print(valor_cyl_2) # Método 2


# Ejercicio 7: Selecciona las filas donde CYL == 8 y DISP > 400
# Método 1: Selección directa sobre coches
coches_filtrados_1 <- coches[coches$cyl == 8 & coches$disp > 400, ]

# Método 2: Usando subset
coches_filtrados_2 <- subset(coches, cyl == 8 & disp > 400)

print("Ejercicio 7: Coches con CYL = 8 y DISP > 400 (Método 1)")
print(coches_filtrados_1)
print("Ejercicio 7: Coches con CYL = 8 y DISP > 400 (Método 2)")
print(coches_filtrados_2)


# Ejercicio 8: Selecciona las columnas DISP y WT para todos los coches
columnas_disp_wt <- coches[, c("disp", "wt")]
print("Ejercicio 8: Columnas DISP y WT para todos los coches")
print(columnas_disp_wt)


# Ejercicio 9: Crea una nueva columna 'rendimiento' como HP dividido entre WT
coches$rendimiento <- coches$hp / coches$wt
print("Ejercicio 9: Coches con nueva columna 'rendimiento' (HP / WT)")
print(head(coches)) # Mostramos solo las primeras filas para mayor claridad


# Ejercicio 10: Crea una lista que contenga un vector numérico, un vector de caracteres y un valor lógico
mi_lista_10 <- list(
  numeros = 1:5,                      # Vector numérico del 1 al 5
  frutas = c("manzana", "pera", "uva"), # Vector de caracteres con nombres de frutas
  logico = TRUE                        # Valor lógico TRUE
)
print("Ejercicio 10: Contenido de la lista")
print(mi_lista_10)

print("Estructura de la lista (usando str())")
str(mi_lista_10)


# Ejercicio 11: Operaciones con una lista
mi_lista <- list(
  numeros = c(10, 20, 30, 40),
  letras = c("a", "b", "c"),
  logico = FALSE
)

# a) Accede al segundo elemento del vector numeros
segundo_numero <- mi_lista$numeros[2]
print("Ejercicio 11a: Segundo elemento del vector 'numeros'")
print(segundo_numero)

# b) Extrae el vector letras completo
vector_letras <- mi_lista$letras
print("Ejercicio 11b: Vector completo 'letras'")
print(vector_letras)

# c) Cambia el valor lógico en la lista a TRUE
mi_lista$logico <- TRUE
print("Ejercicio 11c: Lista actualizada con el valor lógico cambiado a TRUE")
print(mi_lista)
