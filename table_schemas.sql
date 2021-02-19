-- creating tables for csv
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	title_id VARCHAR,
	FOREIGN KEY (title_id) REFERENCES title_id(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR,
	hire_date DATE
);

CREATE TABLE salary (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary DEC, 
	PRIMARY KEY (emp_no)
);

CREATE TABLE title_id (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);