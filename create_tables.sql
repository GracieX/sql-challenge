CREATE TABLE departments (
    dept_no varchar(30),
    dept_name varchar(30)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
    PRIMARY KEY (emp_no)
);


CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


Drop table dept_manager;
CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


Drop table salaries;
CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

Drop table titles;
CREATE TABLE titles (
    emp_no int   NOT NULL,
    title varchar(50)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
