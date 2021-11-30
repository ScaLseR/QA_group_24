--Òàáëèöà employees
--1. Ñîçäàòü òàáëèöó employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.
--(ñäåëàíî ÷åðåç Python)



--Òàáëèöà salary
--3. Ñîçäàòü òàáëèöó salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4. Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:

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



--Òàáëèöà employee_salary
--5. Ñîçäàòü òàáëèöó employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
-- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id
--(ñäåëàíî ÷åðåç Python)


--Òàáëèöà roles
--7. Ñîçäàòü òàáëèöó roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);


--8. Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)
alter table roles
alter column role_name type varchar(30);

--9. Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè:
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
	   

-- Òàáëèöà roles_employee
--10. Ñîçäàòü òàáëèöó roles_employee
--id. Serial  primary key,
-- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
-- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null
);

-- 11. Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:
--(ñäåëàíî ÷åðåç Python)
