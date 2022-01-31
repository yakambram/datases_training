CREATE TABLE Employees(Employee_id int, Employee_name varchar(250), Employee_DOB date, Department_ID INT);


CREATE TABLE Departments(Department_id int, Department_Name varchar(250));


INSERT INTO Departments(Department_id,Department_Name)
VALUES(1,'Human Resources'), (2,'Development'), (3,'Sales'), (4, 'Technical Support');


INSERT INTO Employees(Employee_id,Employee_name, Employee_DOB,Department_ID)
VALUES (5,'Peter Hilton','19860101', NULL);



SELECT Employee_id, Employee_name, Employee_DOB, Department_Name
FROM departments INNER JOIN employees
ON departments.department_id = employees.department_id;

SELECT e.Employee_id, e.Employee_name, e.Employee_DOB, d.Department_Name, d.department_id
FROM departments d   JOIN employees e
ON d.department_id = e.department_id;


SELECT * from (
SELECT e.Employee_id, e.Employee_name, e.Employee_DOB FROM Employees e
UNION
SELECT d.department_id, d.Department_Name, d.Department_Name FROM departments d
) ar





