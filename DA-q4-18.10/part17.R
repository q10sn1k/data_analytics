# Построить СЛОЖЕННУЮ столбчатую диаграмму (stacked), показывающую состав продаж
# по 3 каналам (Онлайн, Розница, Партнёры) для 4 категорий товаров.
# Каждый столбец = категория, внутри столбца 3 "слоя" (сегмента).

# МАЛЕНЬКИЙ ДАТАСЕТ (4 СТРОКИ, 3 КАНАЛА)
Category <- c("Ноутбук", "Планшет", "Телефон", "Наушники")
Online   <- c(25, 12, 40, 10)
Retail   <- c(15, 10, 20,  8)
Partner  <- c( 8,  6, 12,  5)

df_channels <- data.frame(Category, Online, Retail, Partner)
df_channels
str(df_channels)

# ПРЕОБРАЗУЕМ В МАТРИЦУ, КАК ТРЕБУЕТ barplot()
m_channels <- t(as.matrix(df_channels[, c("Online", "Retail", "Partner")]))
colnames(m_channels) <- df_channels$Category
m_channels

# СТРОИМ STACKED barplot (beside=FALSE по умолчанию — "сложение" сегментов)
bp <- barplot(
  height = m_channels,
  beside = FALSE,                           # сложить слои в один столбец
  main   = "Состав продаж по каналам",
  xlab   = "Категория товара",
  ylab   = "Продажи, шт.",
  col    = c("steelblue", "seagreen3", "gold"),
  las    = 2
)

# ЛЕГЕНДА (КАКИЕ СЛОИ ЧЕМ ОБОЗНАЧЕНЫ)
legend(
  "topleft",
  legend = c("Online", "Retail", "Partner"),
  fill   = c("steelblue", "seagreen3", "gold"),
  bty    = "n"
)

# (НЕОБЯЗАТЕЛЬНО) ПОДПИШЕМ СУММУ НА ВЕРХУ КАЖДОГО СТОЛБЦА
totals <- colSums(m_channels)       # сумма по колонкам (по категориям)
text(
  x = bp, y = totals, labels = totals, pos = 3, cex = 0.9
)

# ЛЁГКАЯ СЕТКА ПО Y
abline(h = pretty(totals), lty = 3, col = "gray70")
