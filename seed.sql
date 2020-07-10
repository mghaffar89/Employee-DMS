use employee_tracker;

INSERT INTO department
    (d_name)
VALUES
    ('Sales'),
    ('Accounting'),
    ('Administration'),
    ('Warehouse'),
    ('Management'), 
    ('Customer Service'), 
    ('Human Resources');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Account Manager', 80000, 2),
    ('Accountant', 75000, 2),
    ('Office Manager', 50000, 3),
    ('Secretary', 45000, 3), 
    ('Warehouse Worker', 45000, 4), 
    ('Warehouse Manager', 65000, 4), 
    ('Branch Manager', 120000, 5), 
    ('Customer Service Rep', 50000, 6);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('Jim', 'Halpert', 1, NULL),
    ('Dwight', 'Schrute', 2, NULL),
    ('Oscar', 'Martinez', 3, NULL),
    ('Kevin', 'Malone', 4, NULL),
    ('Pam', 'Beasley', 5, NULL),
    ('Erin', 'Hannon', 6, NULL),
    ('Val', 'Johnson', 7, NULL),
    ('Daryl', 'Philbin', 8, NULL),
    ('Michael', 'Scott', 9, 1),
    ('Kelly', 'Kapoor', 10, NULL); 