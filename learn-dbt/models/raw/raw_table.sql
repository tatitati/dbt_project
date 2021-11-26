

with source_data as (

    select 1 as id, 'AA' as state, '2020-01-01 00:00:00.000'::timestamp as created_at, null::datetime as updated_at
    union all
    select 2 as id, 'BB' as state, '2020-01-01 00:00:00.000'::timestamp as created_at, null::datetime as updated_at    
    union all
    select 3 as id, 'CC' as state, '2020-01-01 00:00:00.000'::timestamp as created_at, null::datetime as updated_at 
    union all
    -- select 4 as id, 'DD' as state, '2020-01-01 00:00:00.000'::timestamp as created_at, null:datetime as updated_at 
    select 4 as id, 'EE' as state, '2020-01-01 00:00:00.000'::timestamp as created_at, current_timestamp as updated_at   
)

select *
from source_data
where id is not null
