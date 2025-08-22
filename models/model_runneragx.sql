
with patient as (
    select * from {{ref("dbt_patients")}}
),
hospitals as (
select * from {{ref("dbt_hospitals")}}
),
treatment as (
    select * from {{ref("dbt_treatments")}}
),
dates as (
    select date_of_treatment from {{ref("dbt_date")}}
),
doctors as (
    select * from {{ref("dbt_doctors")}}
)
select patient.fname , hospitals.h_name , treatment.amount 
from patient , hospitals, agxdb.agxschema.treatment  
where patient.pid=treatment.patient_id and hospitals.h_id=treatment.hospital_id 