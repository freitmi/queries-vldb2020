CREATE TABLE edges
(
    source BIGINT NOT NULL,
    sink   BIGINT NOT NULL
) WITH (STORAGE = paged);

CREATE ROLE root;