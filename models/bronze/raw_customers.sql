{{
    config(
        materialized='table',
        schema='bronze'
    )
}}

with raw_customers as (
    select * from session13db.session13schema.customers
)

select * from raw_customers