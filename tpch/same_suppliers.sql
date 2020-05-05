SELECT
    count(*)
FROM
    (
        SELECT
            l1.l_partkey,
            l2.l_partkey
        FROM
            lineitem l1,
            lineitem l2,
            partsupp ps1,
            partsupp ps2,
            part     p1,
            part     p2
        WHERE
              l1.l_orderkey = l2.l_orderkey
          AND l1.l_partkey = ps1.ps_partkey
          AND l2.l_partkey = ps2.ps_partkey
          AND ps1.ps_suppkey = ps2.ps_suppkey
          AND ps1.ps_partkey = p1.p_partkey
          AND ps2.ps_partkey = p2.p_partkey
          AND p1.p_container = p2.p_container
          AND l1.l_partkey <> l2.l_partkey
        GROUP BY
            l1.l_partkey,
            l2.l_partkey
    );
