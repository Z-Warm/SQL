/*
	1	Знайдіть імена (name) всіх працівників (employees), 
	зарплата (salary) яких більша за керівника (boss).
*/


Select e.name from Employees e 
Where EmployeeID in 
(select e.EmployeeID where e.Salary > (select Employees.Salary from Employees where Employees.EmployeeID = e.BossID))
 