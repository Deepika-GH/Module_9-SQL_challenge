CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255) nOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(255) PRIMARY KEY NOT NULL,
	title VARCHAR(255)
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL	
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary DECIMAL NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
);

