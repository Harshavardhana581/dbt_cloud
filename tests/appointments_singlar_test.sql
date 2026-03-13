select
    APPT_ID
from
    {{ source('staging', 'appointments') }}
where APPT_ID is NULL