SELECT p.name, d.plate_number, d.car_make, d.car_model from person p
join drivers_license d on p.license_id = d.id
WHERE d.gender = 'female' AND d.age < 40
ORDER BY p.name ASC