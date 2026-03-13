select
    *,
    case 
        when age < 18 then 'Minor'
        when age between 18 and 64 then 'Adult'
        else 'Senior'
    end as age_group
from {{ ref('bronze_patients') }}