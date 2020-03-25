DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

DROP TABLE IF EXISTS department;

CREATE TABLE department
(
    id int(11) NOT NULL
    AUTO_INCREMENT,
  name varchar
    (30) NOT NULL,
  PRIMARY KEY
    (id));

    DROP TABLE IF EXISTS role;

    CREATE TABLE role
    (
        id int(11) NOT NULL
        AUTO_INCREMENT,
  title varchar
        (30) NOT NULL,
  salary decimal
        (10,0) NOT NULL,
  department_id int
        (11) NOT NULL,
  PRIMARY KEY
        (id),
  KEY role_ibfk_1
        (department_id),
  CONSTRAINT role_ibfk_1 FOREIGN KEY
        (department_id) REFERENCES department
        (id));

        DROP TABLE IF EXISTS employee;

        CREATE TABLE employee
        (
            id int(11) NOT NULL
            AUTO_INCREMENT,
  first_name varchar
            (30) NOT NULL,
  last_name varchar
            (30) NOT NULL,
  role_id int
            (11) NOT NULL,
  manager_id int
            (11) DEFAULT NULL,
  PRIMARY KEY
            (id),
  KEY employee_ibfk_1
            (role_id),
  KEY employee_ibfk_2
            (manager_id),
  CONSTRAINT employee_ibfk_1 FOREIGN KEY
            (role_id) REFERENCES role
            (id),
  CONSTRAINT employee_ibfk_2 FOREIGN KEY
            (manager_id) REFERENCES role
            (id));


            INSERT INTO department
                (id, name)
            VALUES
                (NULL, "Human Resources"),
                (NULL, "Operations"),
                (NULL, "Finance"),
                (NULL, "Marketing"),
                (NULL, "Sales"),
                (NULL, "Information Technology");

            INSERT INTO role
                (id, department_id, title, salary)
            VALUES
                (NULL, 1, "HR Manager", 60000),
                (NULL, 1, "HR Advisor", 25000),
                (NULL, 2, "Operations Lead", 70000),
                (NULL, 2, "Operations Analyst", 30000),
                (NULL, 3, "Internal Auditor", 70000),
                (NULL, 3, "Accountant", 50000),
                (NULL, 4, "Events Officer", 40000),
                (NULL, 4, "Marketing Assistant", 20000),
                (NULL, 5, "Sales Manager", 80000),
                (NULL, 5, "Sales Advisor", 40000),
                (NULL, 6, "Junior Developer", 25000),
                (NULL, 6, "Network Engineer", 40000);

            INSERT INTO employee
                (id, first_name, last_name, role_id, manager_id)
            VALUES
                (NULL, "Marvin", "Hernandez", 12, NULL),
                (NULL, "Jennifer", "Chan", 11, 3),
                (NULL, "Ora", "Carter", 2, 10),
                (NULL, "Woodrow", "Stevens", 3, NULL),
                (NULL, "Owen", "Hampton", 4, 4),
                (NULL, "Irvin", "Newman", 10, 9),
                (NULL, "Rafael", "Wheeler", 7, NULL),
                (NULL, "Jana", "Hanson", 2, 10),
                (NULL, "Casey", "Huff", 9, NULL),
                (NULL, "Don", "Floyd", 1, NULL),
                (NULL, "Terri", "Lloyd", 12, NULL)
  