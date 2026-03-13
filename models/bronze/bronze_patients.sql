select
    patient_id,
    coalesce(patient_name, 'Unknown') as patient_name,
    coalesce(age, 0) as age,
    coalesce(gender, 'Not Specified') as gender
from {{ source('staging', 'patients') }}