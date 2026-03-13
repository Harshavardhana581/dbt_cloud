select
    doctor_id,
    coalesce(doctor_name, 'Unknown') as doctor_name,
    coalesce(specialty, 'General') as specialty,
    experience_years
from {{ source('staging', 'doctors') }}