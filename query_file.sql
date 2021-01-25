-- 1)List employee number, last name, first name, sex, and salary
-- Join employees and salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees as e
	LEFT JOIN salaries as s ON (e.emp_no = s.emp_no);
	
-- 2)List first name, last name and hire date for employees in 1986
SELECT last_name, first_name, hire_date FROM employees
	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
	
-- 3)List dept no, dept name, manager's no, last name, first,name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name FROM dept_manager as dm
	LEFT JOIN department as d ON (dm.dept_no = d.dept_no)
	LEFT JOIN employees as e ON (dm.emp_no = e.emp_no);
	
-- 4)List emp no, last name, first name and dept name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	LEFT JOIN dept_emp as de ON (de.emp_no = e.emp_no)
	LEFT JOIN department as d ON (d.dept_no = de.dept_no);
	
-- 5) List Hercules B. first name, last name and sex
SELECT first_name, last_name, sex FROM employees
	WHERE first_name = 'Hercules' AND LEFT(last_name,1) = 'B';
	
--6) List Sales employees number, last, first, and dept name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	LEFT JOIN dept_emp as de ON (de.emp_no = e.emp_no)
	LEFT JOIN department as d ON (d.dept_no = de.dept_no)
	WHERE d.dept_name = 'Sales';
	
-- 7) List all Sales and Development Employees
-- Use same code as last just changing where statement
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees as e
	LEFT JOIN dept_emp as de ON (de.emp_no = e.emp_no)
	LEFT JOIN department as d ON (d.dept_no = de.dept_no)
	WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
	
-- 8) List the frequency count of employees in descending order
SELECT last_name, COUNT(last_name) FROM employees
	GROUP BY last_name
	ORDER BY COUNT(last_name) DESC;
	

	
