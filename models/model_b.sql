{{ config(
    materialized='table'
) }}

select 
    id,
    name
from {{ source('SHANNON', 'EMPLOYEES_4') }}