with patients as (
    select 
    first_name as Fname , 
    last_name as Lname , 
    patient_id as pid,
    age as p_age,
    blood_type as b_type, 
    adress_id as address_id 
    from agxdb.agxschema.patients
)
select * from patients
