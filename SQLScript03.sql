/*‡найдґть назви всґх пґдроздґли, котрґ мають менш нґж 3-х працґвникґв
Find name of all departments, which have less than 3 employees*/

select b.name from employees a right join departments b
on b.`DepartmentID` = a.`DepartmentID`
group by b.`name`
having COUNT(a.`EmployeeID`) < 3
