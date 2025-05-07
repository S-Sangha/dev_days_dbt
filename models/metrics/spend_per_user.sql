{{ config(
    materialized='table',
    tags=['all_models']
) }}

WITH user_spends AS (
    SELECT
        costs.user_id
        users.user_name AS user_name, -- Adding the user name column
        SUM(costs.total_cost) AS total_spend
    FROM {{ ref('costs') }} AS costs
    JOIN {{ ref('stg_users') }} AS users -- Joining the stg_users table
        ON costs.user_id = users.user_id -- Matching user_id between costs and users
    GROUP BY costs.user_id, users.user_name -- Grouping by both user_id and user_name
)

SELECT
    user_id,
    user_name, -- Including user name in the final result
    total_spend
FROM user_spends
ORDER BY user_id
