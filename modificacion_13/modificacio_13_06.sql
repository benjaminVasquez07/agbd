--Actividad 1--
CREATE TABLE user (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE post (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES user (id)
);

--Actividad 2--
INSERT into user (username,password)
VALUES ("Bellinghan", "12345"),
		("Mbappe","54321");

INSERT INTO post (author_id, title, body)
values ((SELECT id FROM user WHERE username like "Bellingham"),"Real Madrid","Anuncio que soy el fichaje del Real Madrid"),
		((SELECT id from user WHERE username like "Bellingham"), "Gol", "Mi primer gol como jugador del Real Madrid"),
		((SELECT id from user WHERE username like "Bellingham"), "Champions", "Mi primera champions"),
		((SELECT id from user WHERE username like "Mbappe"), "PSG", "Me voy del PSG"),
		((SELECT id from user WHERE username like "Mbappe"),"Real Madrid", "Anuncio mi fichaje por el Real Madrid"),
		((SELECT id from user WHERE username like "Mbappe"),"Eurocopa", "Entrenando para la eurocopa")

--Actividad 3--
INSERT INTO user (username, password)
VALUES ("Vinicius",(SELECT password from user where username like "Bellingham"))

 --Actividad 4--
UPDATE post SET body = ""
WHERE author_id = (SELECT id from user WHERE username like "Bellingham");

--Actividad 5--
DELETE FROM post
WHERE author_id = (SELECT id from user WHERE username like "Mbappe");

DELETE FROM user
WHERE username = 'Mbappe';