/*Присоединение таблиц в запросах SQL join*/
PROMPT Присоединение таблиц в запросах SQL join;
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
/*Внутреннее присоединение. Равносильно просто JOIN или CROSS JOIN.*/
PROMPT Вывод запроса: Внутреннее присоединение. Равносильно просто JOIN или CROSS JOIN.;
SELECT
    personal.id,
    personal.name     AS имя_сотрудника,
    positions.id      pos,
    positions.name    должность
FROM
         personal
    INNER JOIN positions ON positions.id = personal.post_id;

/*Внешнее присоединение. LEFT OUTER JOIN*/
PROMPT Вывод запроса: Внешнее присоединение. LEFT OUTER JOIN.;
SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    LEFT OUTER JOIN positions ON positions.id = personal.post_id;

/*Вывод запроса: Внешнее присоединение. RIGHT OUTER JOIN*/
PROMPT Внешнее присоединение. RIGHT OUTER JOIN.;
SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    RIGHT OUTER JOIN positions ON positions.id = personal.post_id;

/*Вывод запроса: Полное множество Первый способ — объединение запросов LEFT и RIGHT.*/
PROMPT Полное множество Первый способ — объединение запросов LEFT и RIGHT.;
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    LEFT OUTER JOIN positions ON positions.id = personal.post_id
)
UNION
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    RIGHT OUTER JOIN positions ON positions.id = personal.post_id
);

/*Второй способ — объединение LEFT и RIGHT, объединение задаём как UNION ALL*/
PROMPT Вывод запроса: Полное множество. Второй способ — объединение LEFT и  RIGHT,
PROMPT объединение задаём как UNION ALL.;
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    LEFT OUTER JOIN positions ON positions.id = personal.post_id
)
UNION ALL
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    RIGHT OUTER JOIN positions ON positions.id = personal.post_id
WHERE
    personal.id IS NULL
);

/*Левое подмножество*/
PROMPT Вывод запроса: Левое подмножество.;
SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    LEFT OUTER JOIN positions ON positions.id = personal.post_id
WHERE
    positions.id IS NULL;

/*Правое подмножество*/
PROMPT Вывод запроса: Правое подмножество.;
SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    RIGHT OUTER JOIN positions ON positions.id = personal.post_id
WHERE
    personal.id IS NULL;

/*Всё кроме пересечения*/
PROMPT Вывод запроса: Всё кроме пересечения.;
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    LEFT OUTER JOIN positions ON positions.id = personal.post_id
WHERE
    positions.id IS NULL
)
UNION ALL
( SELECT
    personal.id,
    personal.name     AS "Имя сотрудника",
    positions.id      "pos.id",
    positions.name    "Должность"
FROM
    personal
    RIGHT OUTER JOIN positions ON positions.id = personal.post_id
WHERE
    personal.id IS NULL
);
DROP TABLE personal;
DROP TABLE positions;