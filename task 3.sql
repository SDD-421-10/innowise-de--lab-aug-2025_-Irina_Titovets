create user hr_user with password 'simplepassword';
---Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
grant select on table employees to hr_user;
---Предоставить hr_user право SELECT на таблицу Employees.


select employeeid, firstname, lastname, department, salary, email
from employees 
--- В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees; Получилось!

grant insert on table employees to hr_user;
grant update on table employees to hr_user;
--- в качестве пользователя-администратора предоставила права для hr_user на операции insert и update

insert into employees (employeeid,firstname, lastname)
values(4, 'Leo', 'DiCaprio')
update employees
set employeeid = 6
where employeeid = 7
--- от имени hr_user добавила нового сотрудника и обновила employeeid сотруднику, который уже есть в базе








