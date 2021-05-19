/*Задача№4: "Даны две таблицы. Вывести всех редакторов. Столбцы: Имя, Должность."*/

/*Создаем таблицу personal*/
CREATE TABLE personal (id INT, name VARCHAR(20), post_id INT);

/*Добавляем четыре строки с данными*/
INSERT INTO personal 
VALUES(1, 'Владимир', 1);

INSERT INTO personal (id, name, post_id)
VALUES (2, 'Татьяна', 2);

INSERT INTO personal (id, name, post_id)
VALUES (3, 'Александр', 6);

INSERT INTO personal (id, name, post_id)
VALUES (4, 'Борис', 2);

/*Создаем таблицу positions*/
CREATE TABLE positions (id INT, name VARCHAR(40));

/*Добавляем три строки с данными*/
INSERT INTO positions 
VALUES(1, 'Дизайнер');

INSERT INTO positions (id, name)
VALUES (2, 'Редактор');

INSERT INTO positions (id, name)
VALUES (3, 'Программист');

/*Делаем запрос" Вывести всех редакторов. Столбцы: Имя, Должность."*/
SELECT personal.name AS Имя, positions.name Должность
FROM personal
INNER JOIN positions ON personal.post_id = positions.id
WHERE positions.name = 'Редактор';
