SELECT
    count(*)  AS cnt
FROM
    company_name    AS cn,
    keyword         AS k,
    movie_companies AS mc,
    movie_keyword   AS mk,
    title           AS t
WHERE
      cn.id = mc.company_id
  AND mc.movie_id = t.id
  AND t.id = mk.movie_id
  AND mk.keyword_id = k.id
  AND mc.movie_id = mk.movie_id;
