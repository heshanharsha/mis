CREATE DATABASE UniversityDB;

USE UniversityDB;

CREATE TABLE professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    department VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20)
);

INSERT INTO professors (Name, department, email, phone)
VALUES
    ('John Doe', 'Math', 'john.doe@example.com', '555-1234'),
    ('Jane Smith', 'History', 'jane.smith@example.com', '555-5678');
    
CREATE USER 'deptAssistant'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT (Name, department) ON UniversityDB.professors TO 'deptAssistant'@'localhost';

REVOKE SELECT ON UniversityDB.professors FROM 'deptAssistant'@'localhost';

GRANT SELECT ON UniversityDB.professors TO 'deptAssistant'@'localhost';

DROP USER 'deptAssistant'@'localhost';
DROP DATABASE UniversityDB;
SELECT user FROM mysql.user;
SHOW DATABASES;