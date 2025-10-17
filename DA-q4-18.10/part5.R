employees

# Запись таблицы employees в CSV-файл
write.csv(employees, "employees_data.csv", row.names = FALSE)
# Файл "employees_data.csv" создан в рабочей директории с содержимым таблицы employees.

# Установка пакета jsonlite (раскомментируйте при первой установке)
# install.packages("jsonlite")  

library(jsonlite)  # Подключаем библиотеку для работы с JSON

# Запись таблицы employees в JSON-файл
write_json(employees, "employees_data.json", dataframe = "rows", pretty = TRUE)
# Файл "employees_data.json" теперь содержит данные в формате JSON.


# Установка пакета writexl для экспорта в Excel (раскомментируйте при необходимости)
# install.packages("writexl")  

library(writexl)  # Подключаем библиотеку для записи Excel

# Запись таблицы employees в Excel-файл (.xlsx)
write_xlsx(employees, "employees_data.xlsx")
# Создан файл "employees_data.xlsx" с листом, содержащим нашу таблицу.

