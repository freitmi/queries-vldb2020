SELECT
    count(*)         AS cnt
FROM
    complete_cast   AS cc,
    comp_cast_type  AS cct1,
    comp_cast_type  AS cct2,
    company_name    AS cn,
    company_type    AS ct,
    info_type       AS it1,
    info_type       AS it2,
    keyword         AS k,
    kind_type       AS kt,
    movie_companies AS mc,
    movie_info      AS mi,
    movie_info_idx  AS mi_idx,
    movie_keyword   AS mk,
    title           AS t
WHERE
      kt.id = t.kind_id
  AND t.id = mi.movie_id
  AND t.id = mk.movie_id
  AND t.id = mi_idx.movie_id
  AND t.id = mc.movie_id
  AND t.id = cc.movie_id
  AND mk.movie_id = mi.movie_id
  AND mk.movie_id = mi_idx.movie_id
  AND mk.movie_id = mc.movie_id
  AND mk.movie_id = cc.movie_id
  AND mi.movie_id = mi_idx.movie_id
  AND mi.movie_id = mc.movie_id
  AND mi.movie_id = cc.movie_id
  AND mc.movie_id = mi_idx.movie_id
  AND mc.movie_id = cc.movie_id
  AND mi_idx.movie_id = cc.movie_id
  AND k.id = mk.keyword_id
  AND it1.id = mi.info_type_id
  AND it2.id = mi_idx.info_type_id
  AND ct.id = mc.company_type_id
  AND cn.id = mc.company_id
  AND cct1.id = cc.subject_id
  AND cct2.id = cc.status_id;
