/*
	3	«найд≥ть назви вс≥х п≥дрозд≥ли, котр≥ мають менш н≥ж 3-х прац≥вник≥в
*/

Select Departments.Name
--, count(Employees.EmployeeID) 'Count of employyes'/* if you want to show count*/ 
from
Departments left join Employees on Employees.DepartmentID = Departments.DepartmentID 
--and Employees.EmployeeID <> Employees.BossID /*if count without Boss*/
group by Departments.Name
having count(Employees.EmployeeID)<3
