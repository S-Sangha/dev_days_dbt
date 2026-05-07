{{ config(
    materialized='table'
) }}

select 
    id,
    first_name
from {{ source('shannon_test', 'etleap___person') }}
