# Подготовим данные для графика y = x^2
x_values <- 1:10             # x от 1 до 10
y_values <- x_values^2       # y = x^2

# Построим линейный график y от x
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     main = "График y = x^2",    # заголовок графика
     xlab = "x",                # подпись оси X
     ylab = "y")                # подпись оси Y
