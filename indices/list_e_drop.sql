SELECT
    tablename,
    indexname,
    indexdef
FROM
    pg_indexes
WHERE
    schemaname = 'publicgit '
ORDER BY
    tablename,
    indexname;
