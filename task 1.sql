

insert into employees(employeeid, firstname, lastname, department,salary) 
values (6,'Nadia','Lock','Finance',60000),
(7,'Irina','Mads','HR',70000 );
---Вставила двух новых сотрудников в таблицу Employees

select EmployeeID, Firstname, lastname, department, salary
from employees
---Выбрала всех сотрудников из таблицы Employees

select firstname, lastname, department
from employees
where department in ('IT')
---Выбрала только FirstName и LastName сотрудников из отдела 'IT'

update employees
set salary = 65000
where employeeid = 1
---Обновила Salary 'Alice Smith' (по её id) до 65000.00.


alter table employees
drop constraint employees_pkey cascade
update employees
set lastname = 'Null'
where employeeid = 4
delete from employees
where lastname = 'Null'
--- т к на ключ employeeid (4) ссылалась другая таблица (employeeprojects), мне пришлось с помощью команды drop constraint cascade 
---убрать ограничения на ключ
--- затем я изменила фамилию 'Prince' на значение NULL
--- затем значение NULL удалила

select EmployeeID, FirstName, LastName, Department, Salary
from employees
order by employeeid 
--- проверила все изменения и упорядочила idишки


