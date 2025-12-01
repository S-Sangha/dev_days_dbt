{{ config(
    materialized='table'
) }}

select 
    id,
    first_name
from {{ source('SHANNON', 'EMPLOYEES_2') }}