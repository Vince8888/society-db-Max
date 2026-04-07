-- Compléter ce fichier avec vos réponses.
-- glhf!

1 SELECT * 
    FROM employee e 
    JOIN department d 
    ON e.department_id = d.id 

2 select department_id, name, last_name
    from employee e 
    join department d
    on e.department_id = d.id;

3 select last_name
    from employee e 
    join department d 
    on e.department_id = d.id
    where name = 'distribution';

4 select e1.last_name AS "Employeur", e2.last_name AS "Employé", e1.salary AS "Employeur", e2.salary AS "Employé"
    from employee e1
    join employee e2
    on e1.id = e2.superior_id
    where e1.salary < e2.salary;

5 select name
from employee
where department_id IN (
    select id
    from department
    where name = 'finance'
);

6 select name, title
from employee
where title = (
    select title
    from employee
    where name = 'Amartakaldire'
);

7 select name, salary, department_id
from employee
where salary > ANY (
    select salary
    from employee
    where department_id = 31
)
order by department_id, salary;


8 select name, salary, department_id
from employee
where salary > ALL (
    select salary
    from employee
    where department_id = 31
)
order by department_id, salary;

9 select name, title
from employee
where department_id = 31
and title in (
    select title
    from employee
    where department_id = 32
);

10 select name, title
from employee
where department_id = 31
and title not in (
    select title
    from employee
    where department_id = 32
);

11 select name, title, salary
from employee
where (title, salary) = (
    select title, salary
    from employee
    where name = 'Fairant'
);

12 select d.id, d.name, e.name
from department d
left join employee e
on d.id = e.department_id
order by d.id;


13 select AVG(salary)
from employee
where  title = 'secrétaire';

14 select title, COUNT(*)
from employee
group by title;
