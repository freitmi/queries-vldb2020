SELECT COUNT(*)
FROM r,
     s,
     t
WHERE r.attr = s.attr
  AND r.attr = t.attr
  AND s.attr = t.attr;