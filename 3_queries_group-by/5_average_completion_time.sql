SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;