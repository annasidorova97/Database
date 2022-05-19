CREATE TABLE employee (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE department (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
boss VARCHAR(100) NOT NULL
);

CREATE TABLE employee_dept (
employee_id INT REFERENCES employee(id),
department_id INT REFERENCES department(id),
CONSTRAINT employee_dept_id PRIMARY KEY (employee_id, department_id)
);