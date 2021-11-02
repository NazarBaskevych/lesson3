 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 select e2.employee_name, s.monthly_salary 
 from employees_155 e2 
 inner join employee_salary_155 es 
 on es.employeee_id =e2.id 
 inner join salary_155 s 
 on s.id = es.salary_id;
 --2. ������� ���� ���������� � ������� �� ������ 2000.
 select e2.employee_name, s.monthly_salary 
 from employees_155 e2 
 inner join employee_salary_155 es 
 on es.employeee_id =e2.id 
 inner join salary_155 s 
 on s.id = es.salary_id
 where s.monthly_salary < 2000;
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.id, s.monthly_salary 
from salary_155 s
left join employee_salary_155 es 
on s.id = es.salary_id 
where es.employeee_id is null ;
 --4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.id, s.monthly_salary 
from salary_155 s
left join employee_salary_155 es 
on s.id = es.salary_id 
where es.employeee_id is null and s.monthly_salary<2000;
 --5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, e.id
from employees_155 e 
left join employee_salary_155 es 
on e.id =es.employeee_id 
where es.salary_id is null;
 --6. ������� ���� ���������� � ���������� �� ���������.
select e2.id, e2.employee_name, r2.role_name 
from employees_155 e2 
join roles_employee_155 re2 
on e2.id = re2.employee_id 
join roles_155 r2 
on re2.role_id =r2.id;
 --7. ������� ����� � ��������� ������ Java �������������.
select e.employee_name, r2.role_name 
from employees_155 e 
inner join roles_employee_155 re2 
on e.id =re2.employee_id 
inner join roles_155 r2 
on re2.role_id =r2.id
where r2.role_name like '%Java developer%';
 --8. ������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name 
from roles_employee_155 re 
inner join employees_155 e 
on re.employee_id = e.id 
inner join roles_155 r 
on r.id = re.role_id 
where r.role_name like '%Python developer%';
 --9. ������� ����� � ��������� ���� QA ���������.
select e.employee_name, r2.role_name 
from employees_155 e 
inner join roles_employee_155 re2 
on e.id =re2.employee_id 
inner join roles_155 r2 
on re2.role_id =r2.id
where r2.role_name like '%QA engineer%';
 --10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name, r2.role_name 
from employees_155 e 
inner join roles_employee_155 re2 
on e.id =re2.employee_id 
inner join roles_155 r2 
on re2.role_id =r2.id
where r2.role_name like '%Manual QA engineer%';
 --11. ������� ����� � ��������� ��������������� QA
select e.employee_name, r2.role_name 
from employees_155 e 
inner join roles_employee_155 re2 
on e.id =re2.employee_id 
inner join roles_155 r2 
on re2.role_id =r2.id
where r2.role_name like '%Automation QA engineer%';
 --12. ������� ����� � �������� Junior ������������
select e.employee_name, s.monthly_salary 
from employees_155 e 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on es.salary_id =s.id 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on re.role_id = r.id
where r.role_name like '%Junior%';
 --13. ������� ����� � �������� Middle ������������
select e.employee_name, s.monthly_salary 
from employees_155 e 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on es.salary_id =s.id 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on re.role_id = r.id
where r.role_name like '%Middle%';
 --14. ������� ����� � �������� Senior ������������
select e.employee_name, s.monthly_salary 
from employees_155 e 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on es.salary_id =s.id 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on re.role_id = r.id
where r.role_name like '%Senior%';
 --15. ������� �������� Java �������������
select *
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Java%';
 --16. ������� �������� Python �������������
select e2.employee_name, s2.monthly_salary, r.role_name 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Python%';
 --17. ������� ����� � �������� Junior Python �������������
select e2.employee_name, s2.monthly_salary, r.role_name 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Junior Python%';
 --18. ������� ����� � �������� Middle JS �������������
select e2.employee_name, s2.monthly_salary, r.role_name 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Middle JavaScript%';
 --19. ������� ����� � �������� Senior Java �������������
select e2.employee_name, s2.monthly_salary, r.role_name 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Senior JavaScript%';
 --20. ������� �������� Junior QA ���������
select e2.employee_name, s2.monthly_salary, r.role_name 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Junior%%QA engineer%';
 --21. ������� ������� �������� ���� Junior ������������
select avg(s2.monthly_salary) 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Junior%';
 --22. ������� ����� ������� JS �������������
select sum(s2.monthly_salary)
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%JavaScript%';
 --23. ������� ����������� �� QA ���������
select min(s2.monthly_salary)
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%QA engineer%';
 --24. ������� ������������ �� QA ���������
select max(s2.monthly_salary)
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%QA engineer%';
 --25. ������� ���������� QA ���������
select count(re.id) 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%QA engineer%';
 --26. ������� ���������� Middle ������������.
select count(re.id) 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%Middle%';
 --27. ������� ���������� �������������
select count(re.id) 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%developer%';
 --28. ������� ���� (�����) �������� �������������.
select sum(s2.monthly_salary) 
from salary_155 s2 
join employee_salary_155 es2 
on s2.id = es2.salary_id 
join employees_155 e2 
on e2.id = es2.employeee_id 
join roles_employee_155 re 
on e2.id =re.employee_id 
join roles_155 r 
on r.id = re.role_id
where r.role_name like '%developer%';
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary 
from employees_155 e 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on r.id =re.role_id 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on s.id = es.salary_id 
order by s.monthly_salary asc ;
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees_155 e 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on r.id =re.role_id 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on s.id = es.salary_id 
where s.monthly_salary <2300 or s.monthly_salary> 1700
order by s.monthly_salary asc ;
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees_155 e 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on r.id =re.role_id 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on s.id = es.salary_id 
where s.monthly_salary <2300 
order by s.monthly_salary asc ;
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees_155 e 
join roles_employee_155 re 
on e.id = re.employee_id 
join roles_155 r 
on r.id =re.role_id 
join employee_salary_155 es 
on e.id = es.employeee_id 
join salary_155 s 
on s.id = es.salary_id 
where s.monthly_salary =1100 or s.monthly_salary =1500 or s.monthly_salary =2000
order by s.monthly_salary asc ;