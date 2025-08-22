with dates as (
select patient.fname, full_date  as date_of_treatment
from agxdb.agxschema.dates refdate ,agxdb.agxschema.treatment t,{{ref('dbt_patients')}} patient
where t.patient_id=patient.pid and t.date_id=refdate.date_id
) 
select * from dates