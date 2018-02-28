/*Знайдіть імена (name) всіх працівників (employees), зарплата (salary) яких більша за керівника (boss).
Find names of all employees, whos salary is more then their boss salary*/

select a.name from employees a join  employees b
on b.employeeID = a.BossID
and a.salary > b.salary
 