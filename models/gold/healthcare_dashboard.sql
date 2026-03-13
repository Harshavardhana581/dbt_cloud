{{ config(materialized='table', schema='gold') }}

select
    a.appt_id,
    a.appt_date,
    a.day_type,
    p.patient_name,
    p.age_group,
    p.gender,
    d.doctor_name,
    d.specialty,
    a.fee,
    a.revenue_tier
from {{ ref('silver_appointments') }} a
left join {{ ref('silver_patients') }} p on a.patient_id = p.patient_id
left join {{ ref('silver_doctors') }} d on a.doctor_id = d.doctor_id