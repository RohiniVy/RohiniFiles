select * from EMPLOYEES;

select EMPLOYEE_ID,DEPARTMENT_ID,SALARY from EMPLOYEES 
where salary in(select max(SALARY) from EMPLOYEES group by DEPARTMENT_ID) order by DEPARTMENT_ID;

select EMPLOYEE_ID,DEPARTMENT_ID,max(SALARY) as max_salary from EMPLOYEES group by employee_id,DEPARTMENT_ID;

(select e1.EMPLOYEE_ID,e1.DEPARTMENT_ID,e1.Salary from employees e1) 
join
(select e2.department_id,max(salary) max_salary from employees e2
group by department_id) 
on e1.department_id=e2.department_id;

select DEPARTMENT_ID,EMPLOYEE_ID,salary from Employees as e
where e.salary IN(select MAX(salary) from Employees as i
where e.DEPARTMENT_ID=i.DEPARTMENT_ID group by DEPARTMENT_ID)









select * from employees order by department_id;

select employee_id, department_id, salary, avg(salary) over(PARTITION by department_id ) max_salary from employees;

select sum(salary) from employees;

select count(distinct last_name) from employees;

select * from employees WHERE ROWNUM <= 3;
select * from departments;

create view empk as select employee_id, department_id from employees where department_id=100 with check option;

select time from dual;

SELECT DATE_ADD('1998-01-02', INTERVAL 31 DAY);

select * from employees;

select employee_id || last_name from employees; 

select months_between(sysdate, hire_date) from employees

select sysdate, add_months(sysdate,2) from dual





