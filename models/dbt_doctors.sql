with doctors as(
    select doc.first_name,doc.specalization
    from agxdb.agxschema.doctors  doc , {{ref("dbt_treatments")}}  treat 
    where doc.doctor_id = treat.doctor_id
)
select * from doctors