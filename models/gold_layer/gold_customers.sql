{{
    config(
        materialized='table',
        schema='gold'
    )
}}

with gold_customers as (
    select * from session13db.silver.silver_customers
)

select * from gold_customers