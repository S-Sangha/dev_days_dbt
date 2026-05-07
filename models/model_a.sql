{{ config(
    materialized='table'
) }}

select 
    id
from {{ source('shannon_test', 'dbt_source') }}
