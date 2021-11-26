
{{ config(materialized="incremental", unique_key='id') }}


select *,  current_timestamp() as transformed_at
    from "DBT_PROJECT_TUTORIAL"."DE_RAW"."RAW_TABLE"
    where created_at <= current_timestamp

    {% if is_incremental() %}
        and created_at > (select max(created_at) from "DBT_PROJECT_TUTORIAL"."DE_INCREMENTAL"."RAW_CASTING_INCREMENTAL")        
        or updated_at > (select coalesce('1000-01-01', max(updated_at)) from "DBT_PROJECT_TUTORIAL"."DE_INCREMENTAL"."RAW_CASTING_INCREMENTAL")
        
    {% endif %}






    

