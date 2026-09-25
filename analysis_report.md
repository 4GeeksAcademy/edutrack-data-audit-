# EduTrack — Informe de análisis de tablas relacionadas

Este informe documenta los resultados obtenidos al analizar las tablas `students`, `courses` y `enrollments` mediante consultas SQL con relaciones entre tablas.

## 1. Inscripciones con estudiante, curso y porcentaje de completado

Se relacionaron las tablas `enrollments`, `students` y `courses` mediante `INNER JOIN`.

Resultado: 16 inscripciones.

La consulta permitió mostrar cada inscripción junto con el nombre del estudiante, el título del curso, la fecha de inscripción, el porcentaje de completado y su estado de aprobación.

## 2. Estudiantes que aprobaron al menos un curso

Se utilizaron las tablas `enrollments`, `students` y `courses` para identificar las inscripciones cuyo estado `passed` es verdadero.

El resultado permitió obtener el nombre y correo electrónico de los estudiantes que aprobaron cursos, junto con el título del curso aprobado.
Resultado: 6 inscripciones aprobadas, correspondientes a 4 estudiantes.

| student_name | student_email | course_title |
| --- | --- | --- |
| Emily Watson | emily.watson@student.edutrack.com | Intro to Python |
| Klaus Weber | klaus.weber@student.edutrack.com | Data Analysis with SQL |
| Klaus Weber | klaus.weber@student.edutrack.com | Intro to Python |
| Marco Rossi | marco.rossi@student.edutrack.com | Advanced Python |
| Marco Rossi | marco.rossi@student.edutrack.com | Intro to Python |
| Priya Sharma | priya.sharma@student.edutrack.com | Digital Marketing 101 |

## 3. Porcentaje de completado medio por instructor

Se relacionaron las tablas `enrollments` y `courses` y se utilizó `AVG()` para calcular el porcentaje promedio de completado correspondiente a cada instructor.

Los resultados fueron ordenados de mayor a menor según el promedio de completado.
Resultado: 4 instructores.

| instructor_name | average_completion |
| --- | ---: |
| Marta López | 66.14 |
| Carlos Vega | 40.00 |
| Lucia Prades | 36.50 |
| Pending assignment | 0.00 |

Marta López presenta el mayor porcentaje promedio de completado, con aproximadamente 66.14%.

## 4. Estudiantes sin inscripciones

Se utilizó un `LEFT JOIN` entre `students` y `enrollments` para detectar estudiantes registrados en la plataforma que no poseen ninguna inscripción.

Esta consulta permite identificar datos faltantes en la relación entre estudiantes e inscripciones.
Resultado: 1 estudiante sin inscripciones.

| id | name | email |
| --- | --- | --- |
| 8 | Giulia Romano | giulia.romano@student.edutrack.com |

Por lo tanto, Giulia Romano es la única estudiante registrada que actualmente no posee ninguna inscripción.

## 5. Cursos sin inscripciones

Se utilizó un `LEFT JOIN` entre `courses` y `enrollments` para identificar cursos existentes en el catálogo que no poseen inscripciones.

Resultado: 1 curso sin inscripciones.

| id | title | category |
| --- | --- | --- |
| 7 | Email Campaigns | Marketing |

Por lo tanto, `Email Campaigns` es un curso disponible en el catálogo que actualmente no posee estudiantes inscritos.

## 6. Estudiantes inscritos en más de un curso

Se utilizó `GROUP BY`, `COUNT()` y `HAVING` para contar las inscripciones correspondientes a cada estudiante y mostrar únicamente aquellos que se encuentran inscritos en más de un curso.

Resultado: 7 estudiantes.

| id | student_name | course_count |
| --- | --- | --- |
| 1 | Emily Watson | 3 |
| 3 | Lucia Fernandes | 3 |
| 2 | Klaus Weber | 2 |
| 4 | Marco Rossi | 2 |
| 6 | Pierre Dubois | 2 |
| 7 | Priya Sharma | 2 |
| 5 | Yuki Nakamura | 2 |

Emily Watson y Lucia Fernandes son las estudiantes con mayor cantidad de cursos, con 3 inscripciones cada una.

## 7. Ingresos totales por categoría

Los ingresos fueron calculados utilizando el precio actual de los cursos (`monthly_fee`) de la tabla `courses`, tal como requiere el ejercicio, relacionándolo con las inscripciones existentes.

| category | total_revenue |
| --- | ---: |
| Programming | 409.93 |
| Data | 179.97 |
| Design | 169.96 |
| Marketing | 59.98 |

La categoría Programming presenta el mayor ingreso total, con 409.93.

## 8. Instructores y estudiantes inscritos actualmente

Se relacionaron las tablas `courses` y `enrollments` para obtener cada instructor junto con el número de estudiantes inscritos actualmente en sus cursos.

La consulta utiliza `LEFT JOIN`, permitiendo considerar los cursos aunque no tengan inscripciones.
Resultado: 4 instructores.

| instructor_name | total_students |
| --- | ---: |
| Marta López | 7 |
| Carlos Vega | 5 |
| Pending assignment | 2 |
| Lucia Prades | 2 |

Marta López es la instructora con mayor cantidad de inscripciones en sus cursos, con un total de 7.

## 9. Integridad de datos: student_id

Se comprobó si existen inscripciones cuyo `student_id` no corresponde a ningún estudiante registrado en la tabla `students`.

Resultado: 0 registros.

No se encontraron inscripciones con `student_id` huérfano, por lo que las relaciones entre las inscripciones y los estudiantes son consistentes.

## 10. Integridad de datos: course_id

Se comprobó si existen inscripciones cuyo `course_id` no corresponde a ningún curso registrado en la tabla `courses`.

Resultado: 0 registros.

No se encontraron inscripciones con `course_id` huérfano, por lo que las relaciones entre las inscripciones y los cursos son consistentes.

## Conclusión

El análisis permitió comprobar las relaciones entre las tablas `students`, `courses` y `enrollments` utilizando `INNER JOIN`, `LEFT JOIN`, funciones de agregación, `GROUP BY` y `HAVING`.

También se identificó un curso sin inscripciones y se comprobó la integridad referencial de los identificadores de estudiantes y cursos. Las consultas de integridad no encontraron registros huérfanos.