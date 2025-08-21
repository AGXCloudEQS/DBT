with dates as (
select patient.fname, full_date  as date_of_treatment
from agxdb.agxschema.dates refdate ,{{ref("dbt_treatments")}} treatment,{{ref('dbt_patients')}} patient
where treatment.date_id=refdate.date_id and patient.pid=treatment.patient_id
) 
select * from dates