with doctors as(
    select doc.first_name,doc.specalization
    from agxdb.agxschema.doctors  doc ,agxdb.agxschema.treatment  treat 
    where doc.doctor_id = treat.doctor_id
)
select * from doctors