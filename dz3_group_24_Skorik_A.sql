--  1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select role_name, monthly_salary from roles join roles_employee on roles.id = role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select role_name, monthly_salary from roles join roles_employee on roles.id = role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on salary_id = salary.id where monthly_salary <2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select role_name, monthly_salary from roles join roles_employee on roles.id = role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
right join salary on salary_id = salary.id where role_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select role_name, monthly_salary from roles join roles_employee on roles.id = role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
right join salary on salary_id = salary.id where role_name is null and monthly_salary <2000;

-- 5. Найти всех работников кому не начислена ЗП.
select role_name, monthly_salary from roles join roles_employee on roles.id = role_id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id
left join salary on salary_id = salary.id where  monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id where role_name like '%Java %';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id where role_name like '% QA %';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id where role_name like '% Manual QA %';

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name from employees join roles_employee on employees.id = employee_id
join roles on roles.id = role_id where role_name like '% Automation QA %';

-- 12. Вывести имена и зарплаты Junior специалистов

