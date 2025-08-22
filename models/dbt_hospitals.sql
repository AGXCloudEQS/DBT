
with hosp as (
select hospital_id as h_id , 
name as h_name 
from agxdb.agxschema.hospitals 
)
select * from hosp