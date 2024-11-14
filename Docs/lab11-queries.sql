-- Display title and due_date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


-- Find the earliest assignment due date
SELECT min(due_date) AS earliest_due_date
FROM assignments;


-- Find the latest assignment due date
SELECT max(due_date) AS latest_due_date
FROM assignments;


-- Display title and course_id of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


-- Display title and due_date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


-- Find the most recent due date of completed assignments
SELECT max(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';
