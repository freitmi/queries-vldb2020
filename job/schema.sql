CREATE TABLE aka_name
(
    id            INTEGER NOT NULL PRIMARY KEY,
    person_id     INTEGER NOT NULL,
    name          TEXT    NOT NULL,
    imdb_index    CHARACTER VARYING(12),
    name_pcode_cf CHARACTER VARYING(5),
    name_pcode_nf CHARACTER VARYING(5),
    surname_pcode CHARACTER VARYING(5),
    md5sum        CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE TABLE aka_title
(
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    title           TEXT    NOT NULL,
    imdb_index      CHARACTER VARYING(12),
    kind_id         INTEGER NOT NULL,
    production_year INTEGER,
    phonetic_code   CHARACTER VARYING(5),
    episode_of_id   INTEGER,
    season_nr       INTEGER,
    episode_nr      INTEGER,
    note            TEXT,
    md5sum          CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE TABLE cast_info
(
    id             INTEGER NOT NULL PRIMARY KEY,
    person_id      INTEGER NOT NULL,
    movie_id       INTEGER NOT NULL,
    person_role_id INTEGER,
    note           TEXT,
    nr_order       INTEGER,
    role_id        INTEGER NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE char_name
(
    id            INTEGER NOT NULL PRIMARY KEY,
    name          TEXT    NOT NULL,
    imdb_index    CHARACTER VARYING(12),
    imdb_id       INTEGER,
    name_pcode_nf CHARACTER VARYING(5),
    surname_pcode CHARACTER VARYING(5),
    md5sum        CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE TABLE comp_cast_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    kind CHARACTER VARYING(32) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE company_name
(
    id            INTEGER NOT NULL PRIMARY KEY,
    name          TEXT    NOT NULL,
    country_code  CHARACTER VARYING(255),
    imdb_id       INTEGER,
    name_pcode_nf CHARACTER VARYING(5),
    name_pcode_sf CHARACTER VARYING(5),
    md5sum        CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE TABLE company_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    kind CHARACTER VARYING(32) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE complete_cast
(
    id         INTEGER NOT NULL PRIMARY KEY,
    movie_id   INTEGER,
    subject_id INTEGER NOT NULL,
    status_id  INTEGER NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE info_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    info CHARACTER VARYING(32) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE keyword
(
    id            INTEGER NOT NULL PRIMARY KEY,
    keyword       TEXT    NOT NULL,
    phonetic_code CHARACTER VARYING(5)
) WITH (STORAGE = paged);

CREATE TABLE kind_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    kind CHARACTER VARYING(15) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE link_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    link CHARACTER VARYING(32) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE movie_companies
(
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    company_id      INTEGER NOT NULL,
    company_type_id INTEGER NOT NULL,
    note            TEXT
) WITH (STORAGE = paged);

CREATE TABLE movie_info
(
    id           INTEGER NOT NULL PRIMARY KEY,
    movie_id     INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info         TEXT    NOT NULL,
    note         TEXT
) WITH (STORAGE = paged);

CREATE TABLE movie_info_idx
(
    id           INTEGER NOT NULL PRIMARY KEY,
    movie_id     INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info         TEXT    NOT NULL,
    note         TEXT
) WITH (STORAGE = paged);

CREATE TABLE movie_keyword
(
    id         INTEGER NOT NULL PRIMARY KEY,
    movie_id   INTEGER NOT NULL,
    keyword_id INTEGER NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE movie_link
(
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    linked_movie_id INTEGER NOT NULL,
    link_type_id    INTEGER NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE name
(
    id            INTEGER NOT NULL PRIMARY KEY,
    name          TEXT    NOT NULL,
    imdb_index    CHARACTER VARYING(12),
    imdb_id       INTEGER,
    gender        CHARACTER VARYING(1),
    name_pcode_cf CHARACTER VARYING(5),
    name_pcode_nf CHARACTER VARYING(5),
    surname_pcode CHARACTER VARYING(5),
    md5sum        CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE TABLE person_info
(
    id           INTEGER NOT NULL PRIMARY KEY,
    person_id    INTEGER NOT NULL,
    info_type_id INTEGER NOT NULL,
    info         TEXT    NOT NULL,
    note         TEXT
) WITH (STORAGE = paged);

CREATE TABLE role_type
(
    id   INTEGER               NOT NULL PRIMARY KEY,
    role CHARACTER VARYING(32) NOT NULL
) WITH (STORAGE = paged);

CREATE TABLE title
(
    id              INTEGER NOT NULL PRIMARY KEY,
    title           TEXT    NOT NULL,
    imdb_index      CHARACTER VARYING(12),
    kind_id         INTEGER NOT NULL,
    production_year INTEGER,
    imdb_id         INTEGER,
    phonetic_code   CHARACTER VARYING(5),
    episode_of_id   INTEGER,
    season_nr       INTEGER,
    episode_nr      INTEGER,
    series_years    CHARACTER VARYING(49),
    md5sum          CHARACTER VARYING(32)
) WITH (STORAGE = paged);

CREATE ROLE root;