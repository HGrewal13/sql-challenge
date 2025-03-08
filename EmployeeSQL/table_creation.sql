create table departments (
	dept_no varchar(30) Primary key NOT NULL,
	dept_name varchar(30) NOT NULL
);

create table titles (
	title_id varchar(30) primary key NOT NULL,
	title varchar(50) NOT NULL
);

create table employees (
	emp_no INT primary key NOT NULL,
	emp_title_id varchar(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	sex varchar(30) NOT NULL,
	hire_date DATE NOT NULL,
	foreign key (emp_title_id) references titles(title_id)
);

-- UPDATE employees
-- SET hire_date = TO_DATE(hire_date, 'MM/DD/YYYY')
-- where hire_date IS NOT NULL;

-- UPDATE employees
-- SET birth_date = TO_DATE(birth_date, 'MM/DD/YYYY')
-- where hire_date IS NOT NULL;

create table dept_emp ( 
	emp_no INT NOT NULL,
	dept_no varchar(30) NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no, dept_no) 
	
);

create table dept_manager (
	dept_no varchar(30) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no, emp_no)
);

create table salaries (
	emp_no INT primary key NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees(emp_no)
);