with treatment as (
    select patient_id,date_id,doctor_id, amount from agxdb.agxschema.treatment
),
patients as (
    select patient_id , first_name,last_name,age from agxdb.agxschema.patients
),
doctor as(
    select t.doctor_id,first_name,last_name,specalization from agxdb.agxschema.doctors d , treatment t
    where d.doctor_id=t.doctor_id
),
amount1 as(
    select p.first_name,p.last_name , t.amount ,d.first_name as Doc_name,  p.patient_id as patient_id from patients p , treatment t ,doctor d
    where p.patient_id=t.patient_id and d.doctor_id = t.doctor_id
)
select * from amount1