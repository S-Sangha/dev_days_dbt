{{ config(
    materialized='table'
) }}

select *
from {{ source('shannon_test', '!@#%$_special_characters_test') }}