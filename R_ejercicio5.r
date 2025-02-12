# Cargar las librerías necesarias
library(dplyr)
library(tidyr)

# EJERCICIO 1: Transformar los datos de calificaciones en un formato estructurado 
datos <- data.frame(
  estudiante = c("Ana", "Luis", "Carlos"),
  matematicas_fisica = c("80,85", "75,90", "95,88"),
  historia_literatura = c("78,92", "85,87", "90,80")
)

# Separar las columnas en materias individuales
datos_limpios <- datos %>%
  separate(matematicas_fisica, into = c("matematicas", "fisica"), sep = ",") %>%
  separate(historia_literatura, into = c("historia", "literatura"), sep = ",")

print(datos_limpios)

# EJERCICIO 2: Usar pipes para transformar los datos 
datos %>%
  separate(matematicas_fisica, into = c("matematicas", "fisica"), sep = ",") %>%
  separate(historia_literatura, into = c("historia", "literatura"), sep = ",") %>%
  print()

# EJERCICIO 3: Transformar el dataframe de ventas a formato largo 
ventas <- data.frame(
  producto = c("Manzanas", "Bananas", "Naranjas"),
  enero = c(100, 150, 120),
  febrero = c(110, 140, 130),
  marzo = c(105, 155, 125)
)

ventas_long <- ventas %>%
  pivot_longer(cols = c(enero, febrero, marzo), 
               names_to = "Mes", 
               values_to = "Ventas")

print(ventas_long)

# EJERCICIO 4: Filtrar empleados con salario mayor a 50,000 en el departamento de "Ventas" 
empleados <- data.frame(
  nombre = c("Ana", "Luis", "Carlos", "Sofía", "Pedro"),
  departamento = c("Ventas", "IT", "Ventas", "Recursos Humanos", "Ventas"),
  salario = c(60000, 45000, 52000, 48000, 70000)
)

empleados_filtrados <- empleados %>%
  filter(departamento == "Ventas" & salario > 50000)

print(empleados_filtrados)

# EJERCICIO 5: Filtrar empleados con salario > 50,000 en "Ventas" usando pipes 
empleados %>%
  filter(departamento == "Ventas", salario > 50000) %>%
  print()

# EJERCICIO 6: Seleccionar solo las columnas nombre y salario 
empleados %>%
  select(nombre, salario) %>%
  print()

# EJERCICIO 7: Agregar una nueva columna con el 10% del salario usando mutate() 
empleados %>%
  mutate(salario_10p = salario * 0.10) %>%
  print()

# EJERCICIO 8: Calcular el salario promedio por departamento usando group_by() y summarise() 
empleados %>%
  group_by(departamento) %>%
  summarise(salario_promedio = mean(salario)) %>%
  print()

# EJERCICIO 9: Ordenar empleados por salario de mayor a menor usando arrange() 
empleados %>%
  arrange(desc(salario)) %>%
  print()














# Cargar las librerías necesarias
library(dplyr)
library(tidyr)

### EJERCICIO 1: Transformar los datos de calificaciones en un formato estructurado ###
datos <- data.frame(
  estudiante = c("Ana", "Luis", "Carlos"),
  matematicas_fisica = c("80,85", "75,90", "95,88"),
  historia_literatura = c("78,92", "85,87", "90,80")
)

# Separar las columnas en materias individuales
datos_limpios <- datos %>%
  separate(matematicas_fisica, into = c("matematicas", "fisica"), sep = ",") %>%
  separate(historia_literatura, into = c("historia", "literatura"), sep = ",")

print(datos_limpios)

### EJERCICIO 2: Usar pipes para transformar los datos ###
print(
  datos %>%
    separate(matematicas_fisica, into = c("matematicas", "fisica"), sep = ",") %>%
    separate(historia_literatura, into = c("historia", "literatura"), sep = ",")
)

### EJERCICIO 3: Transformar el dataframe de ventas a formato largo ###
ventas <- data.frame(
  producto = c("Manzanas", "Bananas", "Naranjas"),
  enero = c(100, 150, 120),
  febrero = c(110, 140, 130),
  marzo = c(105, 155, 125)
)

ventas_long <- ventas %>%
  pivot_longer(cols = c(enero, febrero, marzo), 
               names_to = "Mes", 
               values_to = "Ventas")

print(ventas_long)

### EJERCICIO 4: Filtrar empleados con salario mayor a 50,000 en el departamento de "Ventas" ###
empleados <- data.frame(
  nombre = c("Ana", "Luis", "Carlos", "Sofía", "Pedro"),
  departamento = c("Ventas", "IT", "Ventas", "Recursos Humanos", "Ventas"),
  salario = c(60000, 45000, 52000, 48000, 70000)
)

empleados_filtrados <- empleados %>%
  filter(departamento == "Ventas" & salario > 50000)

print(empleados_filtrados)

### EJERCICIO 5: Filtrar empleados con salario > 50,000 en "Ventas" usando pipes ###
print(
  empleados %>%
    filter(departamento == "Ventas", salario > 50000)
)

### EJERCICIO 6: Seleccionar solo las columnas nombre y salario ###
print(
  empleados %>%
    select(nombre, salario)
)

### EJERCICIO 7: Agregar una nueva columna con el 10% del salario usando mutate() ###
print(
  empleados %>%
    mutate(salario_10p = salario * 0.10)
)

### EJERCICIO 8: Calcular el salario promedio por departamento usando group_by() y summarise() ###
print(
  empleados %>%
    group_by(departamento) %>%
    summarise(salario_promedio = mean(salario))
)

### EJERCICIO 9: Ordenar empleados por salario de mayor a menor usando arrange() ###
print(
  empleados %>%
    arrange(desc(salario))
)
