{{ config(
    materialized='table'
) }}

select 
    id
from {{ source('SHANNON', 'EMPLOYEES_1') }}



