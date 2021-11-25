{{ config(materialized="view") }}

select 
    c.c_custkey,
    c.c_name,
    c.c_nationkey as nation,
    sum(o.o_totalprice) as total_order_price
from {{ source('sample', 'customer') }} c
left join "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o on c.c_custkey = o.o_custkey
{{group_by(3)}} having sum(o.o_totalprice) > 0 -- same than group by 1,2,3, but using custom macro
