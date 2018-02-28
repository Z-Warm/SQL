/*‡найдґть працґвникґв, котрґ не мають керґвникґв в сво№му пґдроздґлґ
Find employees, who don't have a boss in their department*/

select a.name  from employees a left join  employees b
on b.employeeID = a.BossID
where b.name is null
union 
select a.name  from employees a  join  employees b
on b.employeeID = a.BossID
and a.`DepartmentID` != b.`DepartmentID`

