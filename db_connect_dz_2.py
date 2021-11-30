import psycopg2
import names
import random

con = psycopg2.connect(
    database = "qa_ddl_24_111",
    user = "user_24_111",
    password = "hoAEQ0",
    host = "159.69.151.133",
    port = "5056"
    )

print('Коннект с DB установлен!')

#Наполнить таблицу employee 70 строками.
cur = con.cursor()
for i in range(0,70):
    cur.execute("INSERT INTO employees (id, employee_name) VALUES (default, '"+names.get_full_name()+"');")
con.commit()
print('Вствка данных в таблицу employees - Завершена!')
con.close()

#Наполнить таблицу employee_salary 40 строками:
# в 10 строк из 40 вставить несуществующие employee_id
l1 = list(range(1,70))
l2 = list(range(71,90))
random.shuffle(l1)
random.shuffle(l2)
cur = con.cursor()
for i in range(0,30):
    cur.execute("INSERT INTO employee_salary (id, employee_id ,salary_id) VALUES (default, "+str(l1[i])+", "+str(random.randint(1,16)) +");")

for i in range(0,10):
    cur.execute("INSERT INTO employee_salary (id, employee_id ,salary_id) VALUES (default, "+str(l2[i])+", "+str(random.randint(1,16)) +");")
con.commit()
print('Вствка данных в таблицу employees - Завершена!')
con.close()

# Наполнить таблицу roles_employee 40 строками:
l3 = list(range(1,70))
random.shuffle(l3)
cur = con.cursor()
for i in range(0,40):
    cur.execute("INSERT INTO roles_employee (id, employee_id ,role_id) VALUES (default, "+str(l3[i])+", "+str(random.randint(1,20)) +");")
con.commit()
print('Вствка данных в таблицу roles_employee - Завершена!')
con.close()
