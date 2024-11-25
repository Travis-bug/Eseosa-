-- Concatenate the course name and semester with a hyphen in between
SELECT course_name || ' - ' || semester AS course_and_semester
FROM courses;

-- Find courses that have lab sessions scheduled on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

-- List all assignments with a due date after the current date
SELECT *
FROM assignments
WHERE due_date > date('now');

-- Count the number of assignments for each status (e.g., Not Started, In Progress, Completed)
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

-- Find the course with the longest name based on character length
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

-- Convert all course names to uppercase and display them
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

-- List titles of all assignments due in September, regardless of year
SELECT title
FROM assignments
WHERE due_date LIKE '____-09-%';

-- Find all assignments where the due date is missing (NULL values)
SELECT *
FROM assignments
WHERE due_date IS NULL;

-- Count the total number of assignments for each course
SELECT courses.course_id, COUNT(assignments.id) AS total_assignments
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;

-- Find all courses that do not have any assignments associated with them
SELECT courses.course_id, courses.course_name
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;


