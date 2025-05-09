SELECT u.id AS user_id, COUNT(e.external_id) AS logins 
FROM {{source('SHANNON', 'USER_INFO')}} u, {{source('SHANNON', 'WEB_EVENTS')}} e
WHERE u.external_id = e.external_id
GROUP BY u.id
