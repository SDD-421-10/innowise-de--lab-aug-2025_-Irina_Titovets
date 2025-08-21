select ProjectName
from projects
join employeeprojects on employeeprojects.projectid = projects.projectid
join employees on employees.employeeid = employeeprojects.employeeid
where firstname = 'Bob'
and lastname ='Johnson'
and hoursworked > 150
---Нашла ProjectName всех проектов, в которых 'Bob Johnson'работал более 150 часов.

update projects
set budget = budget * 1.10
where exists(
select 1
from employeeprojects
join employees on employees.employeeid = employeeprojects.employeeid
where projectid = employeeprojects.projectid
and department = 'Senior IT' 
)
--- Увеличила Budget всех проектов на 10%, к которым назначены работники из 'Senior IT'.

update projects
set enddata = startdate + interval '1 year'
where projectname = 'Logo design'
--- для проекта 'Logo Design'у которого еще нет EndDate (EndDate IS NULL), установить EndDate на один год позже его StartDate.
--- для дизайна логотипа, конечно, очень много)))

with new_employee as(
insert into employees(firstname, lastname, department, salary, email) 
values ('Johnny', 'Depp','Frontend Developer', '80000', 'hansome@mail.com')
returning employeeid
),
target_project as (
select projectid from projects
where projectName = 'Website Redesign'
)
insert into employeeprojects(employeeid, projectid,hoursworked)
select employeeid, projectid, 80
from new_employee, target_project
commit;
-- Вставиа нового сотрудника и назначила его на проект 'Website Redesign' с 80 отработанными часами, все в рамках одной транзакции. 

select employeeid, firstname, lastname, department, salary, email
from employees
order by employeeid 
select employeeid, projectid, hoursworked
from employeeprojects
order by employeeid 
-- дополнительно упорядочила столбцы в таблицах Employees и Employeeprojects по idишкам для красоты)