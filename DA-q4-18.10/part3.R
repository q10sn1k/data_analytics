# Создадим векторы с данными о сотрудниках
Name <- c("Alice", "Bob", "Charlie", "Diana", "Ethan")           # Имена
Age <- c(25, 30, 22, 28, 35)                                     # Возраст
Department <- c("HR", "IT", "Sales", "IT", "HR")                 # Отдел
Salary <- c(50000, 60000, 45000, 52000, 58000)                   # Зарплата

# Объединим эти векторы в таблицу данных
employees <- data.frame(Name, Age, Department, Salary)  

# Выведем получившийся data frame
employees  
#       Name Age Department Salary
# 1    Alice  25         HR  50000
# 2      Bob  30         IT  60000
# 3  Charlie  22      Sales  45000
# 4    Diana  28         IT  52000
# 5    Ethan  35         HR  58000
