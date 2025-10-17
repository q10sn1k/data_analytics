# 1. Чтение из CSV-файла
data_from_csv <- read.csv("employees_data.csv")
data_from_csv  
# Вывод: таблица должна совпадать с исходной employees
#       Name Age Department Salary
# 1    Alice  25         HR  50000
# 2      Bob  30         IT  60000
# 3  Charlie  22      Sales  45000
# 4    Diana  28         IT  52000
# 5    Ethan  35         HR  58000

# 2. Чтение из JSON-файла
data_from_json <- fromJSON("employees_data.json")
data_from_json  
# Вывод: таблица, аналогичная исходной
#       Name Age Department Salary
# 1    Alice  25         HR  50000
# 2      Bob  30         IT  60000
# 3  Charlie  22      Sales  45000
# 4    Diana  28         IT  52000
# 5    Ethan  35         HR  58000

# 3. Чтение из Excel-файла
# Установка и подключение пакета readxl (если не установлен):
# install.packages("readxl")
library(readxl)

data_from_excel <- read_excel("employees_data.xlsx")
data_from_excel  
# Вывод: содержимое Excel-файла как таблица данных
# # A tibble: 5 x 4
#   Name    Age Department Salary
#   <chr> <dbl> <chr>        <dbl>
# 1 Alice    25 HR           50000
# 2 Bob      30 IT           60000
# 3 Charlie  22 Sales        45000
# 4 Diana    28 IT           52000
# 5 Ethan    35 HR           58000
