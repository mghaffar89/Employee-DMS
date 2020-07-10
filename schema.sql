DROP DATABASE IF EXISTS employee_DB; 
CREATE DATABASE employee_DB; 

USE employee_DB; 

CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT, 
name VARCHAR(30) NOT NULL, 
PRIMARY KEY (id)
);  

CREATE TABLE role (
id INT NOT NULL AUTO_INCREMENT,  
title VARCHAR(30) NOT NULL,
salary DECIMAL UNSIGNED NOT NULL, 
department_id INT(3) NOT NULL,
INDEX dep_ind (department_id), 
PRIMARY KEY (id), 
CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE   
);

CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT, 
first_name VARCHAR(30) NOT NULL, 
last_name VARCHAR(30) NOT NULL, 
role_id INT NOT NULL,  
PRIMARY KEY (id), 
INDEX role_ind (role_id), 
CONSTRAINT fk_role FOREGIN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE, 
manager_id INT NULL,
INDEX man_ind (manager_id),
CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

