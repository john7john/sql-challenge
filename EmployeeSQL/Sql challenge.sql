--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employee as e join salaries as s on s.emp_no = e.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name,hire_date from employee WHERE hire_date like '%1986'

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no,dp.dept_name,e.emp_no,e.last_name,e.first_name from employee as e join dept_manager as dm on dm.emp_no = e.emp_no join department as dp on dp.dept_no = dm.dept_no

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.







SELECT * from employee