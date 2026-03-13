select
    doctor_id,
    doctor_name,
    specialty,
    experience_years,
    case 
        when experience_years >= 20 then 'Expert'
        when experience_years >= 10 then 'Senior'
        else 'Junior'
    end as experience_level
from {{ ref('bronze_doctors') }}