-- Query employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salary s
LEFT JOIN employees e 
ON e.emp_no =s.emp_no;