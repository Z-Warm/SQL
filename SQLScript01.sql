/*
	1	������� ����� (name) ��� ���������� (employees), 
	�������� (salary) ���� ����� �� �������� (boss).
*/


Select e.name from Employees e 
Where EmployeeID in 
(select e.EmployeeID where e.Salary > (select Employees.Salary from Employees where Employees.EmployeeID = e.BossID))
 