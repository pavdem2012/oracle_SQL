/*Задача №1 : "Показать записи тех компьютеров, у которых объем памяти 3000 Мб. Вывод: id, cpu, memory"*/

/*Создаем таблицу из четырех столбцов (id, cpu_mhz, memory_mb,hdd_gb)*/
CREATE TABLE computers (id INT, cpu_mhz INT, memory_mb  INT, hdd_gb INT);

/*Добавляем четыре строки с данными по всем столбцам*/
INSERT INTO computers VALUES (1, 1600, 2000, 500);

INSERT INTO computers (id, cpu_mhz, memory_mb, hdd_gb)
VALUES (2, 2400, 3000, 800);

INSERT INTO computers (id, cpu_mhz, memory_mb, hdd_gb)
VALUES (3, 3200, 3000, 1200);

INSERT INTO computers (id, cpu_mhz, memory_mb, hdd_gb)
VALUES (4, 2400, 2000, 500);

/*Делаем запрос "Показать записи тех компьютеров, у которых объем памяти 3000 Мб. Вывод: id, cpu, memory" */
SELECT id, cpu_mhz, memory_mb
FROM computers
WHERE memory_mb = 3000;

/*Делаем запрос "Показать записи тех компьютеров, у которых минимальный объём жесткого диска. Вывод: hdd"*/
SELECT MIN(hdd_gb)
FROM computers;

/*Делеаем запрос "Вывести количество компьютеров с минимальным объемом жесткого диска. Вывод: count, hdd"*/
SELECT COUNT(*)
FROM computers
WHERE hdd_gb =
(SELECT MIN(hdd_gb)
FROM computers);