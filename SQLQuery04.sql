/*
4	«найд≥ть прац≥вник≥в, котр≥ не бають кер≥вник≥в в своЇму п≥дрозд≥л≥
*/
Select Employees.Name from Employees where Employees.BossID = Employees.EmployeeID