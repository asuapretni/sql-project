USE sql_course_university_schema;

-- Populates all of the database tables with sample data
INSERT INTO profesores(profesores_nombre)
VALUES
("Profesor 1"),
("Profesor 2"),
("Profesor 3");

INSERT INTO cursos(cursos_nombre)
VALUES 
("ICCP"),
("EDB"),
("Python"),
("CompTIA"),
("SQL");

INSERT INTO estudiantes(estudiantes_nombre, estudiantes_profe_id)
VALUES 
("Alba", 2),
("Alejandro", 3),
("Alvaro", 1),
("Ana", 1),
("Emma", 2),
("Lucas", 2),
("Lucia", 3),
("Manuel", 3),
("Mariana", 3),
("Martin", 3);

INSERT INTO calificaciones(calificaciones, calificaciones_estu_id, calificaciones_profe_id, calificaciones_cursos_id)
VALUES 
(9.4, 11, 2, 1),
(8.3, 12, 3, 2),
(9.5, 13, 1, 3),
(6.4, 14, 1, 4),
(7.3, 15, 2, 5),
(8.6, 16, 2, 5),
(6.5, 17, 3, 5),
(9.0, 18, 3, 4),
(6.0, 19, 3, 1),
(8.2, 20, 3, 2),
(6.4, 16, 2, 3),
(5.5, 17, 3, 4),
(7.5, 18, 3, 2),
(8.0, 19, 3, 3),
(9.2, 20, 3, 1);

