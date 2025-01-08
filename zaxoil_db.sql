create database zaxoil;

CREATE TABLE Staff (
    staff_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    salary DECIMAL(10, 2) NOT NULL,
    date_hired DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    supervisor_id INT
    );

INSERT INTO Staff (first_name, last_name, position, department, location, salary, date_hired, email, phone_number, supervisor_id)
VALUES 
('John', 'Doe', 'Engineer', 'Drilling', 'Offshore', 85000, '2022-01-15', 'john.doe@example.com', '555-0123', NULL),
('Jane', 'Smith', 'Accountant', 'Finance', 'HQ', 65000, '2020-06-10', 'jane.smith@example.com', '555-0456', NULL),
('Emily', 'Clark', 'Technician', 'Exploration', 'Field', 55000, '2019-07-20', 'emily.clark@example.com', '555-0789', 1),
('Michael', 'Johnson', 'Manager', 'Operations', 'Offshore', 95000, '2021-03-15', 'michael.johnson@example.com', '555-0147', NULL),
('Olivia', 'Williams', 'Engineer', 'Drilling', 'Onshore', 78000, '2022-05-10', 'olivia.williams@example.com', '555-0198', 2),
('James', 'Brown', 'Supervisor', 'Maintenance', 'Offshore', 70000, '2020-09-05', 'james.brown@example.com', '555-0210', 3),
('Sophia', 'Davis', 'Technician', 'Exploration', 'Field', 54000, '2019-11-25', 'sophia.davis@example.com', '555-0349', 1),
('William', 'Miller', 'Technician', 'Maintenance', 'HQ', 57000, '2021-02-20', 'william.miller@example.com', '555-0236', 3),
('Isabella', 'Moore', 'Engineer', 'Production', 'Offshore', 90000, '2022-08-01', 'isabella.moore@example.com', '555-0556', NULL),
('Benjamin', 'Taylor', 'Manager', 'Engineering', 'HQ', 102000, '2020-12-30', 'benjamin.taylor@example.com', '555-0478', NULL),
('Charlotte', 'Anderson', 'Technician', 'Production', 'Field', 56000, '2019-10-15', 'charlotte.anderson@example.com', '555-0382', 5),
('Ethan', 'Thomas', 'Supervisor', 'Exploration', 'Offshore', 75000, '2021-06-18', 'ethan.thomas@example.com', '555-0612', 6),
('Mia', 'Jackson', 'Accountant', 'Finance', 'HQ', 68000, '2022-02-10', 'mia.jackson@example.com', '555-0665', 2),
('Alexander', 'White', 'Technician', 'Maintenance', 'HQ', 59000, '2019-12-22', 'alexander.white@example.com', '555-0754', 7),
('Amelia', 'Harris', 'Manager', 'Operations', 'Field', 88000, '2021-07-10', 'amelia.harris@example.com', '555-0953', 4),
('Jack', 'Martin', 'Technician', 'Exploration', 'Offshore', 54000, '2020-11-30', 'jack.martin@example.com', '555-0825', 1),
('Liam', 'Garcia', 'Engineer', 'Drilling', 'Onshore', 80000, '2022-06-25', 'liam.garcia@example.com', '555-0981', 9),
('Ava', 'Rodriguez', 'Supervisor', 'Production', 'Offshore', 77000, '2021-01-11', 'ava.rodriguez@example.com', '555-0119', 10),
('Noah', 'Martinez', 'Technician', 'Drilling', 'Field', 60000, '2019-08-17', 'noah.martinez@example.com', '555-0274', 2),
('Lucas', 'Gonzalez', 'Engineer', 'Maintenance', 'Offshore', 85000, '2022-04-05', 'lucas.gonzalez@example.com', '555-0331', 7),
('Zoe', 'Perez', 'Technician', 'Drilling', 'Field', 62000, '2020-10-19', 'zoe.perez@example.com', '555-0678', 4),
('Daniel', 'Nelson', 'Manager', 'Production', 'Onshore', 95000, '2022-07-29', 'daniel.nelson@example.com', '555-0492', NULL),
('Grace', 'Roberts', 'Engineer', 'Production', 'Offshore', 87000, '2021-04-15', 'grace.roberts@example.com', '555-0549', 6),
('Henry', 'Carter', 'Accountant', 'Finance', 'HQ', 69000, '2020-12-02', 'henry.carter@example.com', '555-0781', 2),
('Ella', 'Lee', 'Technician', 'Maintenance', 'Field', 57000, '2019-06-10', 'ella.lee@example.com', '555-0367', 5),
('Sebastian', 'Walker', 'Manager', 'Engineering', 'HQ', 105000, '2021-09-18', 'sebastian.walker@example.com', '555-0514', NULL),
('Archer', 'Young', 'Technician', 'Exploration', 'Offshore', 59000, '2020-01-29', 'archer.young@example.com', '555-0802', 3);

select *
from zaxoil.staff;