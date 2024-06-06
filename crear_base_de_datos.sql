--INSERT de profesores--
INSERT into profesor(apellido, nombre)
VALUES ("Navarro", "Andrés"),
		("Mayorga", "Tomas"),
		("Villace", "Federico"),
		("Meltrovich", "Eduardo"),
		("Urso", "Maximiliano"),
		("Albornoz", "Jose"),
		("Rovaletti", "Enrico"),
		("Salomon","Alejandro");

 --inset de materias--
INSERT into materias (nombre,año)
VALUES ("Programacion Web",5),
		("Diseño multimedial", 5),
		("Administracion y gestion de base de datos", 5),
		("Dispositivo electronico programables", 5),
		("Redes de datos", 5),
		("Diseño de sofware",5);

--insert de divicion--
INSERT into division (año,curso)
VALUES (5,"D"),
		(5,"B");

--insert de asignacion--
INSERT into asignacion(materias_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM materias WHERE nombre like "%base%"),
		(SELECT profesor_id FROM profesor WHERE apellido = "Navarro"), 
		(SELECT division_id from division WHERE curso = "D")
		);

INSERT into asignacion(materias_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM materias WHERE nombre like "%base%"),
		(SELECT profesor_id FROM profesor WHERE apellido = "Navarro"), 
		(SELECT division_id from division WHERE curso = "B")
        );
--
INSERT into asignacion(materias_id, profesor_id, division_id)
VALUES ((SELECT materias_id FROM materias WHERE nombre like "%base%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre like "%base%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "D")),
		
		((SELECT materias_id FROM materias WHERE nombre like "%sofware%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre like "%sofware%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "D")),
		((SELECT materias_id FROM materias WHERE nombre like "%gestion%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre like "%gestion%"),(SELECT profesor_id FROM profesor WHERE apellido = "Mayorga"), (SELECT division_id from division WHERE curso = "B")),
		
		((SELECT materias_id FROM materias WHERE nombre = "Programacion Web"),(SELECT profesor_id FROM profesor WHERE apellido = "Villace"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre = "Programacion Web"),(SELECT profesor_id FROM profesor WHERE apellido = "Villace"), (SELECT division_id from division WHERE curso = "D")),
		
		((SELECT materias_id FROM materias WHERE nombre like "%electronicos%"),(SELECT profesor_id FROM profesor WHERE apellido = "Urso"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre like "%electronicos%"),(SELECT profesor_id FROM profesor WHERE apellido = "Urso"), (SELECT division_id from division WHERE curso = "D")),
		((SELECT materias_id FROM materias WHERE nombre like "%electronicos%"),(SELECT profesor_id FROM profesor WHERE apellido = "Meltrovich"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre like "%electronicos%"),(SELECT profesor_id FROM profesor WHERE apellido = "Meltrovich"), (SELECT division_id from division WHERE curso = "D")),
		
		((SELECT materias_id FROM materias WHERE nombre = "Diseño multimedial"),(SELECT profesor_id FROM profesor WHERE apellido = "Rovaletti"), (SELECT division_id from division WHERE curso = "B")),
		((SELECT materias_id FROM materias WHERE nombre = "Diseño multimedial"),(SELECT profesor_id FROM profesor WHERE apellido = "Rovaletti"), (SELECT division_id from division WHERE curso = "D")),
