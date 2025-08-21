create or replace function calculateAnnualBonus(employeeid integer, salary numeric)
returns numeric AS $$
begin
	return salary * 0.10;
end;
$$ language plpgsql;
---  Создала функцию PostgreSQL с именем CalculateAnnualBonus, которая принимает employee_id и
---Salary в качестве входных данных и возвращает рассчитанную сумму бонуса (10 % от Salary) для этого сотрудника.

select
employeeid, firstname, lastname, salary,
calculateAnnualBonus (employeeid, salary) as potential_bonus
from employees;
---Использовала эту функцию в операторе SELECT, чтобы увидеть потенциальный бонус для каждого сотрудника.

create view IT_Department_View as
select
employeeid, firstname, lastname, salary
from employees
where department = 'Senior IT'
---Создать представление с именем IT_Department_View, которое показывает EmployeeID,
--FirstName, LastName и Salary только для сотрудников из отдела 'Senior IT'.
--(Senior IT т к в одном из заданий я заменила всех, что работает в Department 'IT' на 'Senior IT' )

select * from it_department_view; 
---Выбрала данные из представления IT_Department_View.

