{{ config(
    materialized='table'
) }}

select 
    id
    from {{ source('shannon_test', 'source_table_a') }} 
a new line - renamed and modified file?
