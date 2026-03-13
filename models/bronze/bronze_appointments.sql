{{ config(materialized='table', schema='bronze') }}

select
    appt_id,
    coalesce(patient_id, 0) as patient_id,
    coalesce(doctor_id, 0) as doctor_id,
    cast(appt_date as date) as appt_date,
    coalesce(fee, 0.0) as fee
from {{ source('staging', 'appointments') }}