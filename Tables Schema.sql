-- Create Employee Table, include drop table for editing

drop table employees;
create table employees(
    emp_no INTEGER,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
    PRIMARY KEY (emp_no)
);

-- Create Department Table, include drop table for editing
drop table departments;
create table departments(
    dep_number VARCHAR,
    dep_name VARCHAR,
    PRIMARY KEY (dep_number)
);

-- Create Managers Table, include drop table for editing

drop table dep_managers;
create table dep_managers(
    dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dep_number),
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create Position Title Table, include drop table for editing

drop table titles;
create table titles(
    title_id VARCHAR,
    title VARCHAR,
    PRIMARY KEY (title_id)
);

-- Create Employees in Department Table, include drop table for editing

drop table dep_employees;
create table dep_employees(
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dep_number)
);

-- Create Salary Table, include drop table for editing

drop table salary;
create table salary(
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INTEGER, 
    PRIMARY KEY (emp_no, salary)
);

select * from employees;
select * from departments;
select * from dep_managers;
select * from titles;
select * from dep_employees;
select * from salary;