SELECT
    *
FROM 
    {{ source('staging', 'doctors') }}