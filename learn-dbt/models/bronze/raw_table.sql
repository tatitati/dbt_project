

with source_data as (

    select 1 as id, 'AA' as state, CURRENT_TIMESTAMP as created_at, null::datetime as updated_at
    union all
    select 2 as id, 'BB' as state, CURRENT_TIMESTAMP as created_at, null::datetime as updated_at    
    union all
    select 3 as id, 'CC' as state, CURRENT_TIMESTAMP as created_at, null::datetime as updated_at 
    union all
    select 4 as id, 'DD' as state, CURRENT_TIMESTAMP as created_at, null::datetime as updated_at   
)

select *
from source_data
where id is not null/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
