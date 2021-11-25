

with source_data as (

    select 1 as id, 'CA' as state, CURRENT_TIMESTAMP as created_at
    union all
    select 2 as id, 'CT' as state, CURRENT_TIMESTAMP as created_at    
    union all
    select 3 as id, 'CX' as state, CURRENT_TIMESTAMP as created_at    
)

select *
from source_data
where id is not null/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
