--Actividad 1--
INSERT INTO artists(name)
VALUES ("laufey");
SELECT name FROM artists
ORDER BY ArtistId DESC

--Actividad 2--
INSERT INTO albums(Title, ArtistId)
VALUES ("bewitched",277);

--Actividad 3--
INSERT into tracks(name,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("From the start",1,170000,5.99),("Promise", 2, 214000, 3.99),("Dreamer",3,226000,3.99);

--Actividad 4--

--modifique el composer--
UPDATE tracks SET Composer = "laufey"
	WHERE AlbumId is null; 


--modifique el genreId--
UPDATE tracks SET GenreId = 2
	WHERE AlbumId is null;

--modifique el albunId--
UPDATE tracks SET AlbumId = 348
	WHERE AlbumId is null;

--Actividad 5--
--borre las canciones--
DELETE from tracks 
WHERE Composer = "laufey";

--borre el album--
DELETE from albums
WHERE AlbumId = 348;

--borre el nombre del artista--
DELETE from artists
WHERE name = "laufey";

