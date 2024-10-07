--1- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--2- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT * FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;

--3- List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
SELECT dept_managers.dept_no, 
department.dept_name,
dept_managers.emp_no,
employees.last_name, 
employees.first_name
FROM dept_managers
JOIN department ON dept_managers.dept_no = department.dept_no
JOIN employees ON dept_managers.emp_no = employees.emp_no;

--4- List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
dept_emp.dept_no,
department.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no;

--5- List first name, last name, and sex of each employee whose 
--first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6- List each employee in the Sales department, 
--including their employee number, last name, and first name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';

--7- List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
department.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN department ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales'
OR department.dept_name = 'Development';

--8-List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;