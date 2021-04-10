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

-- Query department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dep_name
FROM dep_employees de
JOIN departments d
ON de.dept_no = d.dep_number
JOIN employees e
ON de.emp_no = e.emp_no;

-- Query first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name='Hercules' and last_name LIKE 'B%';

-- Query employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dep_name
FROM employees e
JOIN dep_employees de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dep_number
WHERE d.dep_name ='Sales';

-- Query employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dep_name
FROM employees e
JOIN dep_employees de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dep_number
WHERE d.dep_name ='Sales' or d.dep_name ='Development';


-- Query in descending order, list the frequency count of employee last names, i.e., how many employees share each last name. 
SELECT e.last_name, count(last_name) as last_name_count
FROM employees e
GROUP BY last_name
ORDER BY last_name_count desc;