{{ config(
    materialized='table'
) }}

with customers as (
    select *
    from {{ source('SHANNON', 'EMPLOYEES_3') }}
),

contacts as (
    select *
    from {{ source('SHANNON', 'EMPLOYEES_4') }}
)

select
    customers.id,
    contacts.first_name,
    contacts.last_name,
    customers.department
from customers
left join contacts
    on customers.id = contacts.id