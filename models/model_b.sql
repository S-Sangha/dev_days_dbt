{{ config(
    materialized='table'
) }}

select 1 as id, 'test_b' as name 