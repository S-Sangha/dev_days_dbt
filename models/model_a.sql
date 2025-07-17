{{ config(
    materialized='table'
) }}

select 
    id,
    name
from {{ source('shannon_test', 'source_table_a') }} 