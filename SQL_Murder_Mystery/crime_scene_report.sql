<-- Para saber la informacion del crimen -->

SELECT * FROM crime_scene_report 
WHERE city = "SQL City" 
AND type = "murder" 
AND date = "20180115"

<-- Para encontrar a la testico Annabel -->

SELECT * FROM person 
WHERE name like "%Annabel%" 
AND address_street_name like "Franklin Ave"

<-- Otra forma de conseguir el person_Id de Annabel -->

SELECT * FROM get_fit_now_member 
WHERE name like "%Annabel%"

<-- La entrevista hecha a Annabel -->

SELECT * FROM interview 
WHERE person_Id = "16371"

<-- Para encontrar al segundo testigo desconocido -->

SELECT * FROM person 
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC
limit 1

<-- La entrevista hecha al segundo testigo -->

SELECT * FROM interview 
WHERE person_Id = "14887"

<--para encontrar a posibles sospechosos segun la licencia de conducir-->

SELECT * FROM drivers_license 
WHERE plate_number like "%H42W%" 
AND gender = "male"

<--para encontrar posinles sospechosos segun la membrecia del gimnacio-->

SELECT * FROM get_fit_now_member 
WHERE id like "%48Z%" 
AND membership_status = "gold"

<--Luego de investigar a las dos personas sospechosas, la license_id de Jeremy Bowers coincidio con la del acusado-->

SELECT * FROM person 
WHERE Id = "67318"

<-- Para ver la entrevista al asesino -->

SELECT * FROM interview 
WHERE person_Id = "67318"

<-- para conseguir una lista que coincida con la entrevista del asesino-->

SELECT * FROM drivers_license 
WHERE car_make = "Tesla" 
AND car_model = "Model S" 
AND gender = "female"

<-- Para ver que personas asistieron al concierto SQL en diciembre de 2017-->

SELECT * FROM facebook_event_checkin 
WHERE event_name like "%SQL Symphony Concert%" 
AND date like "201712%"

<--Luego de verificar las person_id con las sospechosas de la licencia, la person_id de Miranda Priestly aparece 3 veces en el concierto, siendo la unica con tesla y pelo rojo."

SELECT * FROM person 
WHERE license_id = "202298"