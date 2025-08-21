update employees
set salary = salary * 1.10
where department = 'HR';
--- Увеличила Salary всех сотрудников в отделе 'HR' на 10%.

update employees
set department = 'Senior IT'
where salary > 70000
---Обновила Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.

delete from employees
where employeeid not in (
select distinct employeeid from employeeprojects 
);
--- Удалила всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects.

insert into projects (projectname, startdate)
values('Logo design', '17.08.25');

insert into employeeprojects(employeeid, projectid, hoursworked)
select employeeprojects.employeeid , projectid, 40
from employeeprojects
join employees on employees.employeeid = 101
union all
select employeeprojects.employeeid ,projectid,35
from employeeprojects
join employees on employeeprojects.employeeid = 102;
commit;
---Вставила новый проект 'Logo design'и назначила на него определенное количеством HoursWorked в EmployeeProjects 
---и все это в одном блоке BEGIN/COMMIT.


