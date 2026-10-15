{{ config(
    materialized='view'
) }}

SELECT
    id AS user_id,
    name AS user_name
FROM {{ source('shannon_test', 'users') }}