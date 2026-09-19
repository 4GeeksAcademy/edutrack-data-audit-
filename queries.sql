-- 1. Inscripciones en Intro to Python
SELECT
    student_name,
    student_email,
    completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- 2. Posibles abandonos
SELECT *
FROM enrollments
WHERE completion_percentage < 10;

-- 3. Inscripciones sin instructor asignado
SELECT *
FROM enrollments
WHERE instructor IS NULL;

-- 4. Top 5 estudiantes con mayor progreso que todavía no aprobaron
SELECT *
FROM enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;

-- 5. Inscripciones creadas en el último año
SELECT *
FROM enrollments
WHERE enrollment_date >= CURRENT_DATE - INTERVAL '1 year'
ORDER BY enrollment_date DESC;

-- 6. Añadir la inscripción faltante
INSERT INTO enrollments (
    student_id,
    student_name,
    student_email,
    course_id,
    course_title,
    category,
    enrollment_date,
    completion_percentage,
    passed,
    monthly_fee_paid,
    instructor
)
VALUES (
    3,
    'Lucia Fernandes',
    'lucia.fernandes@student.edutrack.com',
    5,
    'Advanced Python',
    'Programming',
    '2025-04-01',
    0,
    false,
    69.99,
    'Carlos Vega'
);

-- 7. Asignar instructor pendiente a las inscripciones sin instructor
UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- 8. Eliminar inscripciones de cuentas de prueba
DELETE FROM enrollments
WHERE student_email LIKE '%@test.com';

-- 9. Número de inscripciones por categoría
SELECT
    category,
    COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY category
ORDER BY category;

-- 10. Promedio de completado por curso
SELECT
    course_title,
    AVG(completion_percentage) AS average_completion
FROM enrollments
GROUP BY course_title
ORDER BY average_completion ASC;

-- 11. Cursos con más de 3 inscripciones
SELECT
    course_title,
    COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;

-- 12. Ingresos totales por categoría
SELECT
    category,
    SUM(monthly_fee_paid) AS total_revenue
FROM enrollments
GROUP BY category
ORDER BY total_revenue DESC;