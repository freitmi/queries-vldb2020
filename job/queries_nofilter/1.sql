SELECT
    count(*)               AS cnt
FROM
    company_type    AS ct,
    info_type       AS it,
    movie_companies AS mc,
    movie_info_idx  AS mi_idx,
    title           AS t
WHERE
      ct.id = mc.company_type_id
  AND t.id = mc.movie_id
  AND t.id = mi_idx.movie_id
  AND mc.movie_id = mi_idx.movie_id
  AND it.id = mi_idx.info_type_id;
