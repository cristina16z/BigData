# ----------------------- EJERCICIO 1 ------------------------------------

# Cargar librerías
library(ggplot2)

# Grafico de tipo histograma
ggplot(mpg, aes(x = cty)) +
  geom_histogram(binwidth = 1, fill = "green", color = "black") +
  labs(title = "Histograma de City MPG", x = "MPG en ciudad", y = "Frecuencia")



# ----------------------- EJERCICIO 2 ------------------------------------

ggplot(mpg, aes(x = manufacturer, fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Dataset = mpg", x = "manufacturer", y = "count", fill = "Cylinders") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  



# ----------------------- EJERCICIO 3 ------------------------------------

# Grafico de dispersión con línea de suavización

ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point(color = "blue", alpha = 0.5) +  # Puntos azules
  geom_smooth(method = "lm", color = "red") +  # Línea de tendencia
  labs(title = "Dataset = txhousing", x = "sales", y = "volume")
