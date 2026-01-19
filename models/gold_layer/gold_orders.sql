{{
    config(
        materialized='table',
        schema = 'gold'
    )
}}

with gold_orders as(
    select * from session13db.silver.silver_orders
)

select * from gold_orders