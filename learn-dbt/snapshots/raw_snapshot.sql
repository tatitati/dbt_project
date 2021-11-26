
{% snapshot raw_snapshot %}
{{
    config(
        target_database="DBT_PROJECT_TUTORIAL",
        target_schema="RAW_HISTORY",
        unique_key="id",

        strategy="check",
        check_cols=["id", "updated_at"]
    )
}}

select * from {{ source('source_incremental', 'raw_casting_incremental') }}
{% endsnapshot %}