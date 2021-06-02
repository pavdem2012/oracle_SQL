/*Создаем две таблицы authors и books связаные PRIMARY и FOREIGN KEY'S*/
CREATE TABLE authors (
    author_id    INT NOT NULL,
    author_name  VARCHAR(50),
    PRIMARY KEY ( author_id )
);

CREATE TABLE books (
    book_id    INT NOT NULL,
    book_name  VARCHAR(100),
    FOREIGN KEY ( book_id )
        REFERENCES authors ( author_id ),
    PRIMARY KEY ( book_name )
);
/*заполняем таблицы authors и books*/
INSERT INTO authors (
    author_id,
    author_name
) VALUES (
    1,
    'Bruce Eckel'
);

INSERT INTO authors (
    author_id,
    author_name
) VALUES (
    2,
    'Robert Lafore'
);

INSERT INTO authors (
    author_id,
    author_name
) VALUES (
    3,
    'Andrew Tanenbaum'
);

INSERT INTO books (
    book_id,
    book_name
) VALUES (
    3,
    'Modern Operating System'
);

INSERT INTO books (
    book_id,
    book_name
) VALUES (
    2,
    'Object-Oriented Programming in C++'
);

INSERT INTO books (
    book_id,
    book_name
) VALUES (
    1,
    'Thinking in Java'
);

INSERT INTO books (
    book_id,
    book_name
) VALUES (
    3,
    'Computer Architecture'
);
/*Делаем запрос на вывод названия книги и автора с использованием INNER JOIN*/
PROMPT Список литературы:
SELECT
    book_name as "НАЗВАНИЕ КНИГИ", author_name "АВТОР"
FROM
         books
    INNER JOIN authors ON author_id = book_id
ORDER BY author_name;


DROP TABLE books;

DROP TABLE authors;