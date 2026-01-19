{{
    config(
        materialized='table',
        schema = 'silver'
    )
}}

with silver_orders as(
    select * from session13db.bronze.raw_orders
)

select * from silver_orders