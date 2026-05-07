{{ config(
    materialized='table'
) }}

select 
    id,
    name
from {{ source('shannon_test', 'dbt_source') }}
