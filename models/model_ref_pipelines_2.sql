{{ config(
    materialized='table'
) }}

select *
from {{ source('!@#%$_special/ characters_schema', 'special_characters_schema_test') }}