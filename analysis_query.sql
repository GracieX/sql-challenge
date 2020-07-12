-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
e.emp_no, 
e.last_name,
e.first_name,
e.gender,
s.salary
FROM employees as e
LEFT JOIN salaries as s  ON e.emp_no = s.emp_no


-- List employees who were hired in 1986.
SELECT * FROM employees
WHERE DATE_PART('year',hire_date) = 1986



-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 
m.dept_no, 
d.dept_name,
m.emp_no,
e.last_name, 
e.first_name,
m.from_date,
m.to_date
FROM dept_manager as m
LEFT JOIN departments  as d  ON m.dept_no = d.dept_no
LEFT JOIN employees  as e  ON m.emp_no = e.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
e.emp_no,
e.last_name,
e.first_name,
de.dept_no,
d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no=de.emp_no
INNER JOIN departments as d ON de.dept_no=d.dept_no


-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
e.emp_no, 
e.last_name, 
e.first_name,
d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de ON e.emp_no=de.emp_no
LEFT JOIN departments as d ON de.dept_no=d.dept_no
WHERE d.dept_name='Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
e.emp_no, 
e.last_name, 
e.first_name,
d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de  ON e.emp_no=de.emp_no
LEFT JOIN departments as d ON de.dept_no=d.dept_no
WHERE d.dept_name in ('Sales', 'Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
distinct last_name, 
COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;




