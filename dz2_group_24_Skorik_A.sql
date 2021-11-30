--Таблица employees
--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

-- 2. Наполнить таблицу employee 70 строками.
--(сделано через Python)


--Таблица salary
--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4. Наполнить таблицу salary 15 строками:

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

--Таблица employee_salary
--5. Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
--(сделано через Python)


--Таблица roles
--7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);


--8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--9. Наполнить таблицу roles 20 строками:
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


-- Таблица roles_employee
--10. Создать таблицу roles_employee
--id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (role_id)
		references roles(id),
	foreign key (employee_id)
		references employees(id)
);

-- 11. Наполнить таблицу roles_employee 40 строками:
--(сделано через Python)
