# Посчитаем количество сотрудников по отделам
dept_counts <- table(employees$Department)
dept_counts  
# Dept_counts будет таблицей частот, например:
#  Department
#   HR  IT Sales 
#    2   2     1 

# Построим столбчатую диаграмму на основе частот
barplot(dept_counts, 
        main = "Количество сотрудников по отделам", 
        xlab = "Отдел", 
        ylab = "Число сотрудников", 
        col = "darkgreen")
