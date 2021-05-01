CREATE TABLE characters (
    id               INT NOT NULL PRIMARY KEY,
    name             VARCHAR(30),
    character_class  VARCHAR(20),
    weapon_name      VARCHAR(20),
    weapon_type      VARCHAR(20)
);

INSERT INTO characters VALUES (
    1,
    'John Silver',
    'pirate',
    'boarding broadsword',
    'steel arms'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    2,
    'David Livesey',
    'doctor',
    'smallsword',
    'steel arms'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    3,
    'Billy Bones',
    'pirate',
    'navaja',
    'steel arms'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    4,
    'James Butler Hickok',
    'gunfighter',
    'colt SAA',
    'pistol'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    5,
    'Jesse James',
    'gunfighter',
    'Remington Model 1858',
    'pistol'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    6,
    'James Bond',
    'spy',
    'Walther PPK',
    'pistol'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    7,
    'Allan Quatermain',
    'hunter',
    'Heym88 Safari.600N.E',
    'gun'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    8,
    'Tom Sawyer',
    'agent',
    'Winchester Model1873',
    'rifle'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    9,
    'Simo H?yh?',
    'sniper',
    'Pystykorva Ì/28',
    'rifle'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    10,
    'Thomas Plunkett',
    'sniper',
    'Brown Bess',
    'gun'
);

INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    11,
    'Vasily Zaitsev',
    'sniper',
    'Mosin sniper rifle',
    'rifle'
);
INSERT INTO characters (
    id,
    name,
    character_class,
    weapon_name,
    weapon_type
) VALUES (
    12,
    'Rob Furlong',
    'sniper',
    'McMillan TAC-50',
    'rifle'
);