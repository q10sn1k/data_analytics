# Построить круговую диаграмму (pie chart), показывающую доли рынка
# 4 брендов. Это визуализация частей целого (100%).

# МАЛЕНЬКИЙ ДАТАСЕТ (4 СТРОКИ)
brand <- c("Alpha", "Beta", "Gamma", "Delta")
share <- c(40, 25, 20, 15)   # доли в процентах; сумма = 100

df_market <- data.frame(Brand = brand, Share = share)
df_market
str(df_market)

# ДЛЯ ПОДПИСЕЙ СДЕЛАЕМ ТЕКСТ "Название (XX%)"
labels <- paste0(df_market$Brand, " (", df_market$Share, "%)")

# СТРОИМ PIE-ЧАРТ
# pie() — базовая круговая диаграмма.
# 'col' — вектор цветов для сегментов. Можно использовать готовые палитры.
pie(
  x = df_market$Share,
  labels = labels,
  main = "Доли рынка по брендам",
  col = c("tomato", "gold", "skyblue", "palegreen")
)

# PIE ПОДХОДИТ, КОГДА ДОЛИ СКЛАДЫВАЮТСЯ В 100%.
# Если категорий много или значения похожи — лучше barplot().
