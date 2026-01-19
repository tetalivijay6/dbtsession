{{
    config(
        materialized='table',
        schema='silver'
    )
}}

with bronze_customers as (
    select * from session13db.bronze.raw_customers
)

select * from bronze_customers