/*
 2	������� ����������, ���� ����� �������� ��������� � ����� ������� (department).
*/

Select  E.Name, max(E.Salary)
from Departments D left join Employees E 
on E.DepartmentID = D.DepartmentID 
and E.EmployeeID in (select Employees.EmployeeID from Employees
where Employees.Salary = (select  max(Salary) from Employees where Employees.DepartmentID = E.DepartmentID))
group by E.Name