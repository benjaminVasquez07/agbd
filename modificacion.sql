--actividad 1--
INSERT INTO regions(region_name)
values ("Middle East"),
		("Africa");

--Actividad 2--
UPDATE countries set region_id =
		(SELECT region_id from regions
		where region_name = "Middle East")
	WHERE country_name in ("Kuwait","Israel")

UPDATE countries set region_id =
		(SELECT region_id from regions
		where region_name = "Africa")
	WHERE country_name in ("Egypt","Nigeria","Zambia","Zimbabwe")

--Actividad 3--
DELETE FROM regions
where region_name = "Middle East and Africa";

 --Actividad 4--
 INSERT INTO countries (country_id, country_name, region_id)
VALUES ("AF", "Afghanistan", (SELECT region_id FROM regions WHERE region_name like "Middle East")),
		("SE", "Senegal", (SELECT region_id FROM regions WHERE region_name like "Middle East"))

INSERT INTO countries (country_id, country_name, region_id)
VALUES ("DZ", "Argelia", (SELECT region_id FROM regions WHERE region_name like "Africa")),
		("PS", "Palestina", (SELECT region_id FROM regions WHERE region_name like "Africa"))
