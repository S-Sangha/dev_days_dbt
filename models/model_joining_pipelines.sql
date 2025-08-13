{{ config(
    materialized='table'
) }}

with customers as (
    select *
    from {{ source('shannon_test', 'lower_case_test') }}
),

contacts as (
    select *
    from {{ source('shannon_test', 'UPPER_CASE_TEST') }}
)

select
    customers.customer_id,
	customers.another_field,
    contacts.first_name,
    contacts.last_name,
    customers.address
from customers
left join contacts
    on customers.customer_id = contacts.customer_id