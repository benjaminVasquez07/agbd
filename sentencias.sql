SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE job = 'butcher'
SELECT * FROM INHABITANT WHERE state = 'friendly'
SELECT * FROM INHABITANT WHERE  state = 'friendly' and job = 'weaponsmith'
SELECT * FROM INHABITANT WHERE  job like '%smith' and state = 'friendly'
SELECT personid FROM INHABITANT WHERE  name = 'Stranger'
SELECT gold FROM INHABITANT WHERE NAME = 'Stranger'
update item set owner = 20 where owner is null
select * from item where owner = 20 