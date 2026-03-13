select
    *,
    case 
        when fee >= 400 then 'High'
        when fee >= 200 then 'Medium'
        else 'Low'
    end as revenue_tier,
    -- Add a flag for weekend appointments
    case 
        when dayname(appt_date) in ('Sat', 'Sun') then 'Weekend'
        else 'Weekday'
    end as day_type
from {{ ref('bronze_appointments') }}