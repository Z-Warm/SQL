/*
 5	Знайдіть котру загальну суму зарплатні отримує кожен підрозділ
 */

 Select Departments.Name, Sum(Employees.Salary)
 from Departments left join Employees
 on Employees.DepartmentID = Departments.DepartmentID
 Group by Departments.Name
