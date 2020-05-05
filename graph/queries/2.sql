SELECT
    COUNT(*)
FROM
    edges e1,
    edges e2,
    edges e3,
    edges e4,
    edges e5,
    edges e6
WHERE
      e1.sink = e4.source
  AND e1.sink = e5.source
  AND e1.source = e2.source
  AND e1.source = e3.source
  AND e2.sink = e4.sink
  AND e2.sink = e6.source
  AND e2.source = e3.source
  AND e3.sink = e5.sink
  AND e3.sink = e6.sink
  AND e4.sink = e6.source
  AND e4.source = e5.source
  AND e5.sink = e6.sink;
