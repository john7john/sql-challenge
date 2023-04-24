--1)List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employee as e join salaries as s on s.emp_no = e.emp_no

--2)List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name,hire_date from employee WHERE hire_date like '%1986'

--3)List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no,dp.dept_name,e.emp_no,e.last_name,e.first_name from employee as e join dept_manager as dm on dm.emp_no = e.emp_no join department as dp on dp.dept_no = dm.dept_no

--4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dp.dept_no,e.emp_no,e.last_name,e.first_name,dp.dept_name from department as dp join dept_emp as de on dp.dept_no = de.dept_no join employee as e on de.emp_no = e.emp_no

--5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name,last_name,sex from employee WHERE first_name = 'Hercules' and last_name like 'B%'

--6)List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no,e.last_name,e.first_name from department  as dp join dept_emp as de on dp.dept_no = de.dept_no join employee as e on de.emp_no = e.emp_no  WHERE dp.dept_name = 'Sales'

--7)List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no,e.last_name,e.first_name,dp.dept_name from department  as dp join dept_emp as de on dp.dept_no = de.dept_no join employee as e on de.emp_no = e.emp_no  WHERE dp.dept_name = 'Sales' OR dp.dept_name = 'Development'

--8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT  count(last_name),last_name from employee
GROUP BY last_name 
ORDER BY  last_name desc




