# install.packages("dplyr")
# Подключаем dplyr
library(dplyr)

# Фильтрация: сотрудники старше 30 лет
employees_over30 <- filter(employees, Age > 30)
employees_over30  
# Результат: таблица только с сотрудниками, чьи Age > 30
#     Name Age Department Salary
# 1  Ethan  35         HR  58000

# Выбор только определённых столбцов: Name и Department
name_dept <- select(employees, Name, Department)
name_dept  
# Результат: новая таблица только с двумя столбцами
#       Name Department
# 1    Alice         HR
# 2      Bob         IT
# 3  Charlie      Sales
# 4    Diana         IT
# 5    Ethan         HR


# Добавление нового столбца Bonus, равного 10% от зарплаты
employees_with_bonus <- mutate(employees, Bonus = Salary * 0.1)
employees_with_bonus  
# Результат: таблица с новым столбцом "Bonus"
#       Name Age Department Salary  Bonus
# 1    Alice  25         HR  50000  5000
# 2      Bob  30         IT  60000  6000
# 3  Charlie  22      Sales  45000  4500
# 4    Diana  28         IT  52000  5200
# 5    Ethan  35         HR  58000  5800


# Группировка по отделу и вычисление средней зарплаты в каждом отделе
avg_salary_by_dept <- employees %>%          # исходная таблица
  group_by(Department) %>%  # шаг 1: сгруппировать по Department
  summarise(avg_salary = mean(Salary))  # рассчитать среднюю зарплату

avg_salary_by_dept  
# Результат: средняя зарплата по каждому отделу
# # A tibble: 3 x 2
#   Department avg_salary
#   <chr>          <dbl>
# 1 HR             54000   (среднее для HR: (50000+58000)/2)
# 2 IT             56000   (среднее для IT: (60000+52000)/2)
# 3 Sales          45000   (среднее для Sales: 45000, т.к. один сотрудник)



# Сортировка сотрудников по зарплате (по возрастанию)
employees_by_salary <- arrange(employees, Salary)
employees_by_salary  
# Результат: таблица отсортирована по возрастанию Salary
#       Name Age Department Salary
# 1  Charlie  22      Sales  45000   (минимальная зарплата)
# 2    Alice  25         HR  50000
# 3    Diana  28         IT  52000
# 4    Ethan  35         HR  58000
# 5      Bob  30         IT  60000   (максимальная зарплата)

# Сортировка сотрудников по зарплате (по убыванию)
employees_by_salary_desc <- arrange(employees, desc(Salary))
employees_by_salary_desc  
# Результат: таблица отсортирована по убыванию Salary
#       Name Age Department Salary
# 1      Bob  30         IT  60000   (максимальная зарплата)
# 2    Ethan  35         HR  58000
# 3    Diana  28         IT  52000
# 4    Alice  25         HR  50000
# 5  Charlie  22      Sales  45000   (минимальная зарплата)

