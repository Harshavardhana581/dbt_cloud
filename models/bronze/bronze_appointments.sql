{{ config(materialized = 'table') }}

SELECT
    *
FROM 
    {{ source('staging', 'appointments') }}