
with patient as (
    select * from {{ref("dbt_patients")}}
),
hospitals as (
select * from {{ref("dbt_hospitals")}}
),
treatment as (
    select * from {{ref("dbt_treatments")}}
)
select patient.fname , hospitals.h_name , treatment.amount 
from patient , hospitals, treatment  
where patient.pid=treatment.patient_id and hospitals.h_id=treatment.hospital_id