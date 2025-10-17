# Посмотреть первые строки таблицы (по умолчанию первые 6)
head(employees)  
#       Name Age Department Salary
# 1    Alice  25         HR  50000
# 2      Bob  30         IT  60000
# 3  Charlie  22      Sales  45000
# 4    Diana  28         IT  52000
# 5    Ethan  35         HR  58000

# Посмотреть последние строки таблицы (по умолчанию последние 6, но у нас всего 5 записей)
tail(employees)  
#       Name Age Department Salary
# 1    Alice  25         HR  50000
# 2      Bob  30         IT  60000
# 3  Charlie  22      Sales  45000
# 4    Diana  28         IT  52000
# 5    Ethan  35         HR  58000

# Узнать размеры таблицы (число строк и столбцов)
dim(employees)  
# [1] 5 4  (5 строк и 4 столбца)
nrow(employees)   # [1] 5  (количество строк)
ncol(employees)   # [1] 4  (количество столбцов)

# Структура таблицы: типы данных в каждом столбце
str(employees)  
# 'data.frame':	5 obs. of  4 variables:
#  $ Name      : chr  "Alice" "Bob" "Charlie" "Diana" ...
#  $ Age       : num  25 30 22 28 35
#  $ Department: chr  "HR" "IT" "Sales" "IT" ...
#  $ Salary    : num  50000 60000 45000 52000 58000

# Краткая сводка по каждому столбцу (минимум, максимум, среднее и др. для чисел)
summary(employees)  
#      Name                Age        Department           Salary     
#  Alice   :1   Min.   :22.00   HR   :2        Min.   :45000  
#  Bob     :1   1st Qu.:25.00   IT   :2        1st Qu.:50000  
#  Charlie :1   Median :28.00   Sales:1        Median :52000  
#  Diana   :1   Mean   :28.00                Mean   :53000  
#  Ethan   :1   3rd Qu.:30.00                3rd Qu.:58000  
#            Max.   :35.00                Max.   :60000  

