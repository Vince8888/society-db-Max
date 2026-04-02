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

5