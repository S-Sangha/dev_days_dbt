{{ config(
    materialized='table'
) }}

with customers as (
    select *
    from {{ source('SHANNON', 'EMPLOYEES_1') }}
),

contacts as (
    select *
    from {{ source('SHANNON', 'EMPLOYEES_2') }}
)

select
    customers.id,
    contacts.first_name,
    contacts.last_name,
    customers.department
from customers
left join contacts
    on customers.id = contacts.id
