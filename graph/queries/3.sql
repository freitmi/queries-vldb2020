SELECT
    COUNT(*)
FROM
    edges e1,
    edges e2,
    edges e3,
    edges e4,
    edges e5,
    edges e6,
    edges e7,
    edges e8,
    edges e9,
    edges e10
WHERE
      e1.sink = e5.source
  AND e1.sink = e6.source
  AND e1.sink = e7.source
  AND e1.source = e2.source
  AND e1.source = e3.source
  AND e1.source = e4.source
  AND e2.sink = e5.sink
  AND e2.sink = e8.source
  AND e2.sink = e9.source
  AND e2.source = e3.source
  AND e2.source = e4.source
  AND e3.sink = e10.source
  AND e3.sink = e6.sink
  AND e3.sink = e8.sink
  AND e3.source = e4.source
  AND e4.sink = e10.sink
  AND e4.sink = e7.sink
  AND e4.sink = e9.sink
  AND e5.sink = e8.source
  AND e5.sink = e9.source
  AND e5.source = e6.source
  AND e5.source = e7.source
  AND e6.sink = e10.source
  AND e6.sink = e8.sink
  AND e6.source = e7.source
  AND e7.sink = e10.sink
  AND e7.sink = e9.sink
  AND e8.sink = e10.source
  AND e8.source = e9.source
  AND e9.sink = e10.sink;
