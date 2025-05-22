{{ config(
    materialized='table'
) }}

select 
    id,
    name
from {{ source('SHANNON', 'source_table_b') }} 