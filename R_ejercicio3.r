# Ejercicio 1: Verificar si un número es par o impar
es_par_impar <- function(num) {
  if (num %% 2 == 0) {
    return("Par")
  } else {
    return("Impar")
  }
}

print(es_par_impar(2)) 


# Ejercicio 2: Verificar si es un número o un carácter
tipo_variable <- function(valor) {
  if (is.numeric(valor)) {
    return("Número")
  } else if (is.character(valor)) {
    return("Carácter")
  } else {
    return("Otro tipo")
  }
}

print(tipo_variable(10))    


# Ejercicio 3: Encontrar el máximo de tres números
maximo_tres <- function(a, b, c) {
  if (a >= b & a >= c) {
    return(a)
  } else if (b >= a & b >= c) {
    return(b)
  } else {
    return(c)
  }
}

print(maximo_tres(3, 7, 5))  # Debería imprimir 7


# Ejercicio 4: Función para calcular la media de dos números
media_dos <- function(a, b) {
  return((a + b) / 2)
}

print(media_dos(10, 20))  # Debería imprimir 15


# Ejercicio 5: Función para sumar todos los elementos de una matriz
suma_matriz <- function(m) {
  return(sum(m))
}
matriz <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3)

print(suma_matriz(matriz))  


# Ejercicio 6: Función para calcular el área de un rectángulo con valores por defecto
area_rectangulo <- function(ancho = 5, alto = 5) {
  return(ancho * alto)
}

print(area_rectangulo(4, 10))     # Debería imprimir 40


# Ejercicio 7: Función para determinar si un estudiante aprobó o suspendió
aprobo <- function(nota) {
  if (nota >= 5) {
    return("Aprobado")
  } else {
    return("Suspendido")
  }
}

print(aprobo(8))  


# Ejercicio 8: Función para calcular el factorial de un número
factorial_num <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial_num(n - 1))
  }
}

print(factorial_num(5))  


# Ejercicio 9: Función que calcula el producto de múltiples números
producto_numeros <- function(...) {
  return(prod(c(...)))
}

print(producto_numeros(2, 3, 4))  # Debería imprimir 24


# Ejercicio 10: Función para verificar si un número es primo
es_primo <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

print(es_primo(10)) # FALSE

# Generar un vector con todos los números primos entre 1 y 100
primos <- c()
for (i in 1:100) {
  if (es_primo(i)) {
    primos <- c(primos, i)
  }
}

print(primos)