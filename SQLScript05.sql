 /*Знайдіть котру загальну суму зарплатні отримує кожен підрозділ.
Show amount of salary for each department*/

select a.name, sum(b.salary)  from departments a left join  employees b
on a.departmentID = b.DepartmentID
group by a.`DepartmentID`