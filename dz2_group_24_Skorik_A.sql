--������� employees
--1. ������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. ��������� ������� employee 70 ��������.
--(������� ����� Python)


--������� salary
--3. ������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4. ��������� ������� salary 15 ��������:

insert into salary (id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400),
	   (default, 2500);



--������� employee_salary
--5. ������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. ��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id
--(������� ����� Python)


--������� roles
--7. ������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);


--8. �������� ��� ������ role_name � int �� varchar(30)
alter table roles
alter column role_name type varchar(30);

--9. ��������� ������� roles 20 ��������:
insert into roles (id, role_name)
values (default, 'Junior Python developer'),
	   (default, 'Middle Python developer'),
	   (default, 'Senior Python developer'),
	   (default, 'Junior Java developer'),
	   (default, 'Middle Java developer'),
	   (default, 'Senior Java developer'),
	   (default, 'Junior JavaScript developer'),
	   (default, 'Middle JavaScript developer'),
	   (default, 'Senior JavaScript developer'),
	   (default, 'Junior Manual QA engineer'),
	   (default, 'Middle Manual QA engineer'),
	   (default, 'Senior Manual QA engineer'),
	   (default, 'Project Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer');
	   

-- ������� roles_employee
--10. ������� ������� roles_employee
--id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null
);

-- 11. ��������� ������� roles_employee 40 ��������:
--(������� ����� Python)
