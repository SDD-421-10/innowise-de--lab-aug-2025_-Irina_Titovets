create table Departments(
DepartmentID serial primary key,
DepartmentName varchar(50) unique not null,
location varchar(50)
)
--- создание новой таблицы
ALTER TABLE employees ADD COLUMN email VARCHAR(100)
--- добавление в таблицу employees нового столбца

 update employees
set email = 'flower@mail.com'
where employeeid = 1

update employees
set email = 'vase@mail.com'
where employeeid = 2

update employees
set email = 'table@mail.com'
where employeeid = 3

update employees
set email = 'chair@mail.com'
where employeeid = 6

update employees
set email = 'house@mail.com'
where employeeid = 5

update employees
set email = 'door@mail.com'
where employeeid = 7
--- заполнение email значениями 

alter table employees 
add constraint unique_email unique (email);
--- Добавить ограничение UNIQUE к столбцу Email


alter table departments
rename column "Location" to "Office Location";
--- переименование столбца



 









