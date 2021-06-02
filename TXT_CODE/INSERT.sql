/*Создаем таблицу planetwithoutrings*/
PROMPT Создаем таблицу planetwithoutring
CREATE TABLE planetwithoutrings (
    id           INT,
    planetname   VARCHAR(10),
    radius       FLOAT(10),
    sunseason    FLOAT(10),
    openingyear  INT,
    havingrings  CHAR(3),
    opener       VARCHAR(30)
);
/*Заполняем таблицу planetwithoutrings*/
PROMPT Заполняем таблицу planetwithoutrings
INSERT INTO planetwithoutrings VALUES (
    1,
    'Mars',
    3396,
    687,
    1659,
    'no',
    'Christiaan Huygens'
);
INSERT INTO planetwithoutrings (
    id,
    planetname,
    radius,
    sunseason,
    openingyear,
    havingrings,
    opener
) VALUES (
    2,
    'Mercury',
    2439,
    115.88,
    1631,
    'no',
    'Nicolaus Copernicus'
);
INSERT INTO planetwithoutrings (
    id,
    planetname,
    radius,
    sunseason,
    openingyear,
    havingrings,
    opener
) VALUES (
    3,
    'Venus',
    6051,
    243,
    1610,
    'no',
    'Galileo Galilei'
);
/*Создаем таблицу planetswithrings:*/
PROMPT Создаем таблицу planetswithrings:
CREATE TABLE planetswithrings (
    id           INT,
    planetname   VARCHAR(10),
    radius       FLOAT(10),
    sunseason    FLOAT(10),
    openingyear  INT,
    havingrings  CHAR(3),
    opener       VARCHAR(30)
);
/*Заполняем таблицу planetswithrings*/
PROMPT Заполняем таблицу planetswithrings
INSERT INTO planetswithrings (
    id,
    planetname,
    radius,
    sunseason,
    havingrings
) VALUES (
    1,
    'Saturn',
    60268,
    10759.22,
    'yes'
);
INSERT INTO planetswithrings (
    id,
    planetname,
    radius,
    sunseason,
    openingyear,
    havingrings,
    opener
) VALUES (
    2,
    'Neptune',
    24764,
    60190,
    1846,
    'yes',
    'John Couch Adams'
);
/*Добавляем в таблицу planetwithoutrings строки из таблицы 
planetswithrings используя  связку INSERT INTO/SELECT/FROM*/
PROMPT Добавляем в таблицу planetwithoutrings строки из таблицы 
PROMPT planetswithrings используя  связку INSERT INTO/SELECT/FROM
INSERT INTO planetwithoutrings
    SELECT
        id,
        planetname,
        radius,
        sunseason,
        openingyear,
        havingrings,
        opener
    FROM
        planetswithrings;
/*Делаем запросы с использованием предикатов AND и OR*/
PROMPT Записи планет, у которых радиус планеты меньше 10000 и открыты после 1620
SELECT
    id,
    planetname   AS название,
    radius       радиус,
    sunseason    "период обращени",
    openingyear  "год открытия",
    havingrings  кольца,
    opener       "кто открыл"
FROM
    planetwithoutrings
WHERE
        radius < 10000
    AND openingyear > 1620
ORDER BY
    opener;    
PROMPT Записи планет, названия которых начинаются с буквы «N» или заканчиваются на букву «s» и не имеют колец:
SELECT
    id,
    planetname   AS название,
    radius       радиус,
    sunseason    "период обращени",
    openingyear  "год открытия",
    opener       "кто открыл"
FROM
    planetwithoutrings
WHERE
    ( planetname LIKE 'N%'
      OR planetname LIKE '%s' )
    AND havingrings = 'no';
/*Создаем представление, используя оператор CREATE VIEW*/
CREATE VIEW planetsview AS
    SELECT
        planetname,
        openingyear,
        opener
    FROM
        planetwithoutrings;
PROMPT Выводим представление PlanetsView
SELECT
    planetname   AS название,
    opener       "кто открыл",
    openingyear  "год открытия"
FROM
    planetsview;
DROP VIEW planetsview;
/*Удаляем обе таблицы*/
PROMPT Удаляем обе таблицы
DROP TABLE planetswithrings;
DROP TABLE planetwithoutrings;