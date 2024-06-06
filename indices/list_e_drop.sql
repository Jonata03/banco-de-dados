SELECT
    tablename,
    indexname,
    indexdef
FROM
    pg_indexes
WHERE
    schemaname = 'public'
ORDER BY
    tablename,
    indexname;

create index idx_ator_primeiro_nome on actor(first_name);

drop index idx_actor_last_name;