-- Create tables for analysis
CREATE TABLE department(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(20)
);

CREATE TABLE titles(
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(20)
);

CREATE TABLE employees(
	emp_no VARCHAR(20) PRIMARY KEY,
	emp_title_id VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(20),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(10),
	hire_date VARCHAR(20)
);

CREATE TABLE dept_emp(
	emp_no VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(20),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(20),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	emp_no VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary VARCHAR(20)
);
