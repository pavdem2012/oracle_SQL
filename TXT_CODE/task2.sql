/*Задача №2 "Вывести список сотрудников, получающих заработную плату большую чем у непосредственного руководителя;
Вывести список сотрудников, получающих максимальную заработную плату в своем отделе;
Вывести список отделов, количество сотрудников в которых не превышает 3 человек"*/

/*Создаем таблицу из пяти столбцов (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)*/
CREATE TABLE staff (ID INT, DEPARTMENT varchar(20), CHIEF_ID  INT, NAME varchar(20), SALARY INT);

/*Добавляем семь строк с данными по всем столбцам*/
INSERT INTO staff VALUES (1, 'office', 3, 'Sergey', 100000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (2, 'office' , 3, 'Ivan' , 50000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (3, 'office', null, 'Gleb' , 75000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (4, 'service', 5, 'Evgeny', 100000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (5, 'service', null, 'Igor', 75000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (6, 'service', 5, 'Kirill', 100000);

INSERT INTO staff (ID, DEPARTMENT, CHIEF_ID, NAME, SALARY)
VALUES (7, 'service', 5, 'Stepan', 40000);

/*Делаем запрос "Вывести список сотрудников, получающих заработную плату большую чем у непосредственного руководителя"*/
SELECT a.name, a.salary
FROM staff  a, staff  b
WHERE b.id = a.chief_id
AND a.salary > b.salary

/*Делаем запрос "Вывести список сотрудников, получающих максимальную заработную плату в своем отделе"*/
SELECT a.department, a.name, a.salary
FROM staff a
WHERE a.salary = (SELECT MAX(salary) FROM staff b WHERE b.department = a.department);

/*Делаем запрос "Вывести список отделов, количество сотрудников в которых не превышает 3 человек"*/
SELECT DEPARTMENT FROM STAFF GROUP BY DEPARTMENT HAVING COUNT(*) <=3;