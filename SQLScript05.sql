/*
 5	������� ����� �������� ���� �������� ������ ����� �������
 */

 Select Departments.Name, Sum(Employees.Salary)
 from Departments left join Employees
 on Employees.DepartmentID = Departments.DepartmentID
 Group by Departments.Name
