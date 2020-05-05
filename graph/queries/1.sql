SELECT
    COUNT(*)
FROM
    edges e1,
    edges e2,
    edges e3
WHERE
      e1.sink = e3.source
  AND e1.source = e2.source
  AND e2.sink = e3.sink;
