/*Создаем таблицу month*/
PROMPT Создаем таблицу month
CREATE TABLE month (
    id    INT NOT NULL PRIMARY KEY,
    name  VARCHAR(30)
        NOT NULL ENABLE,
    days  NUMBER(2)
);
/*Заполняем таблицу month*/
PROMPT Заполняем таблицу month
INSERT INTO month VALUES (
    1,
    'JANUARY',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    2,
    'FEBRUARY',
    28
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    3,
    'MARCH',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    4,
    'APRIL',
    30
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    5,
    'MAY',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    6,
    'JUNE',
    30
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    7,
    'JULY',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    8,
    'AUGUST',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    9,
    'SEPTEMBER',
    30
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    10,
    'OCTOBER',
    31
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    11,
    'NOVEMBER',
    30
);

INSERT INTO month (
    id,
    name,
    days
) VALUES (
    12,
    'DECEMBER',
    31
);
/*Удаляем таблицу month*/
PROMPT Удаляем таблицу month
DROP TABLE month;


