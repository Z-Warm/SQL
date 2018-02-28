/* ¬ивести другу† максимальну«ѕдепартаменту
Show max second salary of department*/

select max(a.salary) from employees a left join employees b
on a.`DepartmentID` = b.`DepartmentID`
where a.salary< b.salary
group by  b.departmentid