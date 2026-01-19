{{
    config(
        materialized='table',
        schema = 'bronze'
    )
}}

with raw_orders as(
    select * from session13db.session13schema.orders
)

select * from raw_orders