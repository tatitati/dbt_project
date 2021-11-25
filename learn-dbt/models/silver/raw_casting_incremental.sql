
{{ config(materialized="incremental", unique_key='id') }}


select *,  current_timestamp() as transformed_at
    from "DBT_PROJECT_TUTORIAL"."DE_BRONZE"."RAW_TABLE"
    where created_at <= current_timestamp

    {% if is_incremental() %}
        and created_at > (select max(created_at) from {{ this }}) or
        (
            updated_at is not null and 
            updated_at > (select max(updated_at) from {{ this }})
        )
        
    {% endif %}
