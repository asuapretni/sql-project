USE sql_course_university_schema;

-- Average grade that is given by each professor
SELECT 
p.profesores_nombre AS 'Profesor',
AVG(c.calificaciones) AS 'Calificación media'
FROM calificaciones c
JOIN profesores p
ON c.calificaciones_profe_id = p.profesores_id
GROUP BY c.calificaciones_profe_id;

-- Top grades for each student
SELECT 
e.estudiantes_nombre AS 'Estudiante',
MAX(c.calificaciones) AS 'Calificación más alta'
FROM calificaciones c
JOIN estudiantes e
ON c.calificaciones_estu_id = e.estudiantes_id
ORDER BY c.calificaciones_estu_id;

-- Sort students by the courses that they are enrolled in
SELECT 
e.estudiantes_nombre AS 'Estudiante',
cu.cursos_nombre AS 'Curso'
FROM calificaciones c
JOIN estudiantes e
ON c.calificaciones_estu_id = e.estudiantes_id
JOIN cursos cu
ON c.calificaciones_cursos_id = cu.cursos_id
ORDER BY e.estudiantes_nombre;

-- Summary report of courses and their average grades
SELECT 
	cu.cursos_nombre AS 'Cursos',
  AVG(c.calificaciones) AS nota_media
FROM calificaciones c
JOIN cursos cu
ON c.calificaciones_cursos_id = cu.cursos_id
GROUP BY c.calificaciones_cursos_id
ORDER BY nota_media ASC;

-- Finding which student and professor have the most courses in common
SELECT
	e.estudiantes_nombre AS 'Estudiante',
  p.profesores_nombre AS 'Profesor',
  COUNT(DISTINCT cu.cursos_id) AS cursos_comunes
FROM calificaciones c
JOIN estudiantes e
ON c.calificaciones_estu_id = e.estudiantes_id
JOIN profesores p
ON c.calificaciones_profe_id = p.profesores_id
JOIN cursos cu
ON c.calificaciones_cursos_id = cu.cursos_id
GROUP BY e.estudiantes_nombre, p.profesores_nombre
ORDER BY cursos_comunes DESC;
