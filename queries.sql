-- EduTrack - Auditoría de Datos con Tablas Relacionadas

-- 1. Listar todas las inscripciones con estudiante, curso y porcentaje de completado

SELECT
    e.id AS enrollment_id,
    s.name AS student_name,
    c.title AS course_title,
    e.enrollment_date,
    e.completion_percentage,
    e.passed
FROM enrollments e
INNER JOIN students s
    ON e.student_id = s.id
INNER JOIN courses c
    ON e.course_id = c.id
ORDER BY e.id;


-- 2. Estudiantes que aprobaron al menos un curso

SELECT
    s.name AS student_name,
    s.email AS student_email,
    c.title AS course_title
FROM enrollments e
INNER JOIN students s
    ON e.student_id = s.id
INNER JOIN courses c
    ON e.course_id = c.id
WHERE e.passed = true
ORDER BY s.name, c.title;


-- 3. Porcentaje de completado medio por instructor

SELECT
    c.instructor_name,
    AVG(e.completion_percentage) AS average_completion
FROM enrollments e
INNER JOIN courses c
    ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY average_completion DESC;


-- 4. Estudiantes que no tienen ninguna inscripción

SELECT
    s.id,
    s.name,
    s.email
FROM students s
LEFT JOIN enrollments e
    ON s.id = e.student_id
WHERE e.id IS NULL;


-- 5. Cursos que no tienen ninguna inscripción

SELECT
    c.id,
    c.title,
    c.category
FROM courses c
LEFT JOIN enrollments e
    ON c.id = e.course_id
WHERE e.id IS NULL;


-- 6. Estudiantes inscritos en más de un curso

SELECT
    s.id,
    s.name,
    COUNT(e.id) AS course_count
FROM students s
INNER JOIN enrollments e
    ON s.id = e.student_id
GROUP BY
    s.id,
    s.name
HAVING COUNT(e.id) > 1
ORDER BY
    course_count DESC,
    s.name;


-- 7. Ingresos totales por categoría usando el precio actual de los cursos

SELECT
    c.category,
    SUM(c.monthly_fee) AS total_revenue
FROM enrollments e
INNER JOIN courses c
    ON e.course_id = c.id
GROUP BY c.category
ORDER BY total_revenue DESC;


-- 8. Cantidad de estudiantes inscritos por instructor

SELECT
    c.instructor_name,
    COUNT(DISTINCT e.student_id) AS enrolled_students
FROM courses c
LEFT JOIN enrollments e
    ON c.id = e.course_id
GROUP BY
    c.instructor_name
ORDER BY
    enrolled_students DESC,
    c.instructor_name;


-- 9. Inscripciones con student_id huérfano

SELECT
    e.id AS enrollment_id,
    e.student_id
FROM enrollments e
LEFT JOIN students s
    ON e.student_id = s.id
WHERE s.id IS NULL;


-- 10. Inscripciones con course_id huérfano

SELECT
    e.id AS enrollment_id,
    e.course_id
FROM enrollments e
LEFT JOIN courses c
    ON e.course_id = c.id
WHERE c.id IS NULL;