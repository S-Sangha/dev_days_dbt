{{ config(
    materialized='table' a
) }}

select 
    id
    from {{ source('shannon_test', 'source_table_a') }} 
