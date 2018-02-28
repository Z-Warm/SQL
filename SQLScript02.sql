/*	‡найдґть працґвникґв, котрґ мають найбґльшу зарплатню в сво№му пґдроздґлґ (department).
Find employees, who have maximum of salary in their department*/

select a.name, MAX(a.salary) from employees a
group by (a.departmentid)