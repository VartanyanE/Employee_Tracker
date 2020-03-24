DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE employee
(
    id INT NOT NULL
    AUTO_INCREMENT,
  first_name VARCHAR
    (45) NULL,
  last_name VARCHAR
    (45) NULL,
    role_id INT,
    manager_id INT,
   PRIMARY KEY
    (id),
  FOREIGN KEY
    (role_id) REFERENCES employee
    (id),
  FOREIGN KEY
    (manager_id) REFERENCES employee
    (id)
  
  
);

    CREATE TABLE role
    (
        id INT
            NOT NULL
        AUTO_INCREMENT,
  title VARCHAR
        (30),
  salary DECIMAL
        (10,4),
        department_id INT,
  PRIMARY KEY
        (id),
        FOREIGN KEY
        (department_id) REFERENCES role
        (id)
);

        CREATE TABLE department
        (
            id INT
            AUTO_INCREMENT NOT NULL,
  name VARCHAR
            (30),
            PRIMARY KEY
            (id)
  
);


        