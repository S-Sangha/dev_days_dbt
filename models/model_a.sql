{{ config(
    materialized='view'
) }}

SELECT
    index AS user_id,
    first_name AS name
FROM {{ source('shannon_test', 'luts_and_pk') }}
