SELECT current_user();

USE UniversityDB;

SELECT Name, department FROM professors;

SELECT email, phone FROM professors;

INSERT INTO professors (Name, department, email, phone) VALUES ('New Prof', 'New Dept', 'new@example.com', '555-9999');

SELECT * FROM professors;

INSERT INTO professors (Name, department, email, phone) VALUES ('New Prof', 'New Dept', 'new@example.com', '555-9999');
