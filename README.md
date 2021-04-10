# sql-challenge

As part of UCSD's Data Science Bootcamp, we find outselves imagining ourselves in a new job where we get to practice
everything we have learned from the start of our SQL chapter. 

The code compiled in this repository includes tables for a company organized in such a manner that it will be easy to add, 
search for and edit information about its employees. 

SQL allows us to break apart information into related tables which must include at least one column that contains similar 
data to navigate between one another. 

In this repositiory we have information for a business whose employee is separated into six tables: 
- Employees: Basic information on each employee
- Departments: The name of each department and relational ID
- Employees within Departments: Contains employee ID numbers and Department ID
- Titles: Includes the title for each position
- Managers: Managers within each department
- Salary: How much each employee makes identified by Employee ID. 

Using SQL, I created the tables and made the connections between each so that they are easily queried. As certain
tables include similar information as other tables, it is important to identify them in a manner in which they 
cannot be mistaken for each other; each table was then given a unique ID or Primary Key. 

Once the informaiton was properly organized, we queried the data to pull meaningful information:

- Employee details and salaries
- Employees hired in 1986
- Mangers in each department
- Employees within each department
- Employees with a specific first name (Hercules) and with last names starting with a single letter (B)
- Employees within a Single Department
- Employees within 2 departments
- Lastly, the number of employees with the same last name. 

Using all this information, we were able to demonstrate just some of the skills gained in the SQL chapter of the bootcamp, skills that can be easily put to practice in a real world employment where SQL is a necessary language. 
