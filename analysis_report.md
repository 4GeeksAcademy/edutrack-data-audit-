# EduTrack — Informe de análisis

## 1. Inscripciones en Intro to Python

Resultado: 5 inscripciones

| student_name | student_email                     | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| James Miller | james.miller@test.com             | 30                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

## 2. Posibles abandonos

Resultado: 4 inscripciones

| id | student_id | student_name    | student_email                        | course_id | course_title          | category  | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------------- | --------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics     | Design    | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101 | Marketing | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-11-05      | 0                     | false  | 44.99            | null         |

## 3. Inscripciones sin instructor asignado

Resultado: 2 inscripciones

| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ---------- |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | null       |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | null       |

## 4. Top 5 estudiantes con mayor progreso que todavía no aprobaron

Resultado: 5 inscripciones

| id | student_id | student_name  | student_email                      | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 2  | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega  |
| 15 | 7          | Priya Sharma  | priya.sharma@student.edutrack.com  | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López |
| 9  | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López |
| 17 | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega  |
| 13 | 8          | James Miller  | james.miller@test.com              | 1         | Intro to Python        | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López |


## 5. Inscripciones creadas en el último año

Resultado: 0 inscripciones

Los datos disponibles en el proyecto son anteriores al último año respecto de la fecha actual.

## 6. Inscripción faltante añadida

Se detectó que faltaba una inscripción confirmada de Lucia Fernandes en el curso Advanced Python.

La inscripción fue añadida correctamente a la tabla `enrollments`.

| id | student_id | student_name    | student_email                        | course_id | course_title    | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 18 | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5         | Advanced Python | Programming | 2025-04-01      | 0                     | false  | 69.99            | Carlos Vega |

## 7. Corrección de inscripciones sin instructor

Se detectaron 2 inscripciones que no tenían un instructor asignado: Yuki Nakamura y Pierre Dubois, ambas correspondientes al curso UI/UX Fundamentals.

Para corregir estos registros, se reemplazó el valor `NULL` del instructor por `Pending assignment`.

Resultado: 2 inscripciones actualizadas correctamente.

| id | student_name  | course_title       | instructor         |
| -- | ------------- | ------------------ | ------------------ |
| 10 | Yuki Nakamura | UI/UX Fundamentals | Pending assignment |
| 11 | Pierre Dubois | UI/UX Fundamentals | Pending assignment |

## 8. Eliminación de registros de prueba

Se detectaron 2 inscripciones asociadas a correos electrónicos de prueba con el dominio `@test.com`, correspondientes a James Miller y Alex Chen.

Estos registros fueron eliminados de la tabla `enrollments` para mantener la calidad y consistencia de los datos.

Resultado: 2 registros de prueba eliminados correctamente.

## 9. Cantidad de inscripciones por categoría

Se realizó un análisis de la cantidad total de inscripciones agrupadas por categoría.

| category    | total_enrollments |
| ----------- | ----------------- |
| Data        | 3                 |
| Design      | 4                 |
| Marketing   | 2                 |
| Programming | 7                 |

La categoría con mayor cantidad de inscripciones es Programming, con un total de 7.

## 10. Promedio de progreso por curso

Se calculó el porcentaje promedio de progreso de los estudiantes para cada curso.

| course_title           | average_completion |
| ---------------------- | ------------------ |
| UI/UX Fundamentals     | 0.00               |
| Web Design Basics      | 32.50              |
| Digital Marketing 101  | 36.50              |
| Advanced Python        | 45.00              |
| Data Analysis with SQL | 47.67              |
| Intro to Python        | 80.00              |

El curso con mayor promedio de progreso es Intro to Python, con un 80%, mientras que UI/UX Fundamentals presenta el promedio más bajo, con 0%.

## 11. Cursos con más de 3 inscripciones

Se analizaron los cursos para identificar aquellos que tienen más de 3 inscripciones.

| course_title    | total_enrollments |
| --------------- | ----------------- |
| Intro to Python | 4                 |

Intro to Python es el único curso que cuenta con más de 3 inscripciones.

## 12. Ingresos totales por categoría

Se calcularon los ingresos totales obtenidos por las inscripciones de cada categoría.

| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 59.98         |

La categoría Programming genera el mayor ingreso total, con 409.93, seguida por Data, Design y Marketing.
