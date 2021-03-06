/*Вывести детали зёлёного и голубого цветов. Названия столбцов: "Номер", "Название", "Цвет";
Вывести детали вес которых от 12 до 16 грамм. Название столбцов: "Вес", "Город";
Вывести все записи в которых название города начинается с "Красно";
Вывести количество деталей в каждом городе. Название столбцов: "Город", "Количество".
Записи упорядочить в порядке уменьшения количества деталей.*/

/*Создаем таблицу из пяти столбцов(n_item, name, color, weight, town)*/
CREATE TABLE parts (n_item VARCHAR(10), name VARCHAR(20), color VARCHAR(20), weight INT, town VARCHAR(30));

/*Добавляем шесть строк с данными по всем столбцам*/
INSERT INTO parts VALUES ('P1', 'Гайка','Красный', 12, 'Красноярск');

INSERT INTO parts (n_item, name, color, weight, town) 
VALUES ('P2', 'Болт', 'Зеленый', 17, 'Волгоград');

INSERT INTO parts (n_item, name, color, weight, town)
VALUES ('P3', 'Винт', 'Голубой', 17,'Красноярск');

INSERT INTO parts (n_item, name, color, weight, town)
VALUES ('P4', 'Винт', 'Красный', 14,'Красноярск');

INSERT INTO parts(n_item, name, color, weight, town)
VALUES ('P5', 'Кулачок', 'Голубой', 12,'Волгоград');

INSERT INTO parts(n_item, name, color, weight, town)
VALUES ('P6', 'Блюм', 'Красный', 19,'Красноярск');

/*Делаем запрос "Вывести детали зёлёного и голубого цветов. Названия столбцов: "Номер", "Название", "Цвет""*/
SELECT n_item AS Номер, name Название, color Цвет 
FROM parts
WHERE color IN ('Зеленый', 'Голубой');
/*Альтернативное решение*/
SELECT n_item AS Номер, name Название, color Цвет 
FROM parts
WHERE color = 'Зеленый'
OR color = 'Голубой';

/*Делаем запрос "Вывести детали вес которых от 12 до 16 грамм. Название столбцов: "Вес", "Город""*/
SELECT weight AS Вес, town Город
FROM parts
WHERE weight BETWEEN 12 AND 16;

/*Делаем запрос "Вывести все записи в которых название города начинается с "Красно""*/
SELECT*
FROM parts
WHERE town LIKE 'Красно%';

/*Делаем запрос"Вывести количество деталей в каждом городе. Название столбцов: "Город", "Количество".
Записи упорядочить в порядке уменьшения количества деталей."*/
SELECT town AS Город, COUNT(DISTINCT n_item)Количество
FROM parts
GROUP BY town 
ORDER BY town DESC;
/*В данном примере будет работать и без сортировки, но для полноты решения я думаю она необходима*/

DROP TABLE parts;

