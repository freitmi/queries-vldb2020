CREATE TABLE edges
(
    source TEXT NOT NULL,
    sink   TEXT NOT NULL
) WITH (STORAGE = paged);

CREATE ROLE root;