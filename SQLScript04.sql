/*
4	«найд≥ть прац≥вник≥в, котр≥ не бають кер≥вник≥в в своЇму п≥дрозд≥л≥
*/
Select Employees.Name from Employees where Employees.EmployeeID <>0
and Employees.BossID = Employees.EmployeeID
union
Select Employees.Name from Employees where Employees.EmployeeID <>0
and Employees.BossID = 0
union
Select Employees.Name from Employees where Employees.EmployeeID <>0
and Employees.BossID is null
union
Select e.Name from Employees e  where e.BossID in
(select a.EmployeeID from Employees a where a.DepartmentID <> e.DepartmentID)

