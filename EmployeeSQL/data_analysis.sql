-- Query employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salary s
LEFT JOIN employees e 
ON e.emp_no =s.emp_no;

-- Query first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE extract(year from "hire_date") = 1986;

-- Query manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dep_number, d.dep_name, m.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dep_managers m 
ON d.dep_number = m.dept_no
JOIN employees e
ON m.emp_no = e.emp_no;