
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', alias='first_model') }}

with source_data as (

    select 1 as id, 'CA' as state, CURRENT_TIMESTAMP as updated_at
    union all
    select null as id, 'CT' as state, CURRENT_TIMESTAMP as updated_at    
)

select *
from source_data
where id is not null/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
