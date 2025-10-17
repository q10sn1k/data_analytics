# Построить линейный график с двумя сериями (две линии на одних осях):
# дневной трафик "Мобайл" и "Десктоп" за 5 дней.
# Покажем легенду и разные стили линии/точек.

# МАЛЕНЬКИЙ ДАТАСЕТ (5 СТРОК)
Day     <- c("Пн", "Вт", "Ср", "Чт", "Пт")
Mobile  <- c(80,  95,  90, 110, 120)
Desktop <- c(70,  85,  88,  92, 100)

df_traffic <- data.frame(Day, Mobile, Desktop)
df_traffic
str(df_traffic)

# ОСЬ X СДЕЛАЕМ КАТЕГОРИАЛЬНОЙ С РУЧНОЙ РАЗМЕТКОЙ (1..5)
x_pos <- 1:nrow(df_traffic)

# СНАЧАЛА РИСУЕМ ПЕРВУЮ СЕРИЮ (Mobile)
plot(
  x = x_pos, y = df_traffic$Mobile,
  type = "o",                   # точки + линия
  main = "Трафик по каналам: Мобайл vs Десктоп",
  xlab = "День недели",
  ylab = "Посещения, ед.",
  xaxt = "n",                   # свои подписи по X
  col  = "darkgreen",
  pch  = 16, lwd = 2
)
axis(side = 1, at = x_pos, labels = df_traffic$Day)  # ставим подписи дней

# ДОБАВЛЯЕМ ВТОРУЮ СЕРИЮ (Desktop) НА ТОТ ЖЕ ГРАФИК
lines(x_pos, df_traffic$Desktop, type = "o", col = "steelblue", pch = 17, lwd = 2)

# ДОБАВЛЯЕМ ЛЕГЕНДУ (ОБОЗНАЧЕНИЕ, КАКАЯ ЛИНИЯ ЧТО ЗНАЧИТ)
legend(
  "topleft",
  legend = c("Mobile", "Desktop"),
  col    = c("darkgreen", "steelblue"),
  pch    = c(16, 17),
  lwd    = c(2, 2),
  bty    = "n"
)

# СЕТКА ПО Y ДЛЯ ЧИТАЕМОСТИ
abline(h = pretty(range(c(df_traffic$Mobile, df_traffic$Desktop))), lty = 3, col = "gray70")
