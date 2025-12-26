--DML
use 
HrPayrollManagement
go

--Insert data into SP_INSERT_DEPARTMENTS

exec SP_INSERT_DEPARTMENTS 1, 'HR'
exec SP_INSERT_DEPARTMENTS 2, 'ACCOUNTS'
exec SP_INSERT_DEPARTMENTS 3, 'SALES'
exec SP_INSERT_DEPARTMENTS 4, 'MARKETING'
exec SP_INSERT_DEPARTMENTS 5, 'IT'
exec SP_INSERT_DEPARTMENTS 6, 'QUALITY'
exec SP_INSERT_DEPARTMENTS 7, 'ADMINISTRATIVE'
exec SP_INSERT_DEPARTMENTS 8, 'PRODUCTION'

-- Insert data into Departments table

/*INSERT INTO Departments (DepartmentID, DepartmentName) 
VALUES
(1,'HR'),
(2,'ACCOUNTS'),
(3,'SALES'),
(4,'MARKETING'),
(5,'IT'),
(6,'QUALITY'),
(7,'ADMINISTRATIVE'),
(8,'PRODUCTION');
*/

--Insert data into SP_INSERT_EMPLOYEES
EXEC SP_INSERT_EMPLOYEES 1,'Leonel', 'Messi', 'Male', '1997-04-23', '2023-06-01', 1, 'HR Manager', 78000, NULL, 'Messi.isdb@gmail.com', '01832812928'
EXEC SP_INSERT_EMPLOYEES 2,'Izaz', 'Sakib', 'Male', '1996-05-24', '2023-07-01', 2, 'ACCOUNTS Manager', 88000, NULL, 'sakib.isdb@gmail.com', '01832842928'
EXEC SP_INSERT_EMPLOYEES 3,'saiful', 'Islam', 'Male', '1997-07-11', '2023-05-01', 3, 'SALES Manager', 68000, NULL, 'saiful.isdb@gmail.com', '01832872928'
EXEC SP_INSERT_EMPLOYEES 4,'Faisal', 'Hossen', 'Male', '1998-09-15', '2023-07-01', 4, 'MARKETING Manager', 98000, NULL, 'faisal.isdb@gmail.com', '01837812928'
EXEC SP_INSERT_EMPLOYEES 5,'Tarif', 'Ahmed', 'Male', '1994-07-16', '2023-04-01', 5, 'IT Manager', 58000, NULL, 'tarif.isdb@gmail.com', '01832816928'
EXEC SP_INSERT_EMPLOYEES 6,'Ahsan', 'Ahmed', 'Male', '1993-08-16', '2023-03-01', 6, 'QUALITY Manager', 68000, NULL, 'ahsan.isdb@gmail.com', '01832812938'
EXEC SP_INSERT_EMPLOYEES 7, 'Hanif', 'Islam', 'Male', '1992-09-17', '2023-08-01', 7, 'ADMINISTRATIVE Manager', 88000, NULL, 'hanif.isdb@gmail.com', '01837812928'
EXEC SP_INSERT_EMPLOYEES 8,'Emon', 'Islam', 'Male', '1991-04-18', '2023-06-01', 8, 'PRODUCTION Manager', 73000, NULL, 'emon.isdb@gmail.com', '01832814928'
EXEC SP_INSERT_EMPLOYEES 9,'Lokman', 'Hossan', 'Male', '1990-07-19', '2022-06-01', 1, 'HR Executive', 63000, NULL, 'lokman.isdb@gmail.com', '018328123728'
EXEC SP_INSERT_EMPLOYEES 10,'Abdul', 'Rahim', 'Male', '1989-01-12', '2022-08-01', 2, 'ACCOUNTS Executive', 68000, NULL, 'abdul.isdb@gmail.com', '01832812928'
EXEC SP_INSERT_EMPLOYEES 11,'Mohsena', 'Akter', 'Female', '1996-01-11', '2022-02-01', 3, 'SALES Executive', 53000, NULL, 'meem.isdb@gmail.com', '01832812928'
EXEC SP_INSERT_EMPLOYEES 12,'Faria', 'Ferdous', 'Female', '1998-02-19', '2022-03-01', 4, 'MARKETING Executive', 73000, NULL, 'faria.isdb@gmail.com', '01832812958'
EXEC SP_INSERT_EMPLOYEES 13,'Farzana', 'Ferdous', 'Female', '1995-02-19', '2022-03-01', 4, 'MARKETING Executive', 73000, NULL, 'farzana.isdb@gmail.com', '01532812958'
EXEC SP_INSERT_EMPLOYEES 14,'Adil', 'Irfan', 'Male', '1997-08-20', '2022-03-01', 5, 'IT Executive', 48000, NULL, 'adil.isdb@gmail.com', '01832812928'
EXEC SP_INSERT_EMPLOYEES 15,'Omar', 'Faruq', 'Male', '1994-11-21', '2022-01-01', 6, 'QUALITY Executive', 53000, NULL, 'omar.isdb@gmail.com', '01832817928'
EXEC SP_INSERT_EMPLOYEES 16,'Raju', 'Uddin', 'Male', '1993-12-28', '2021-01-01', 7, 'ADMINISTRATIVE Executive', 68000, NULL, 'raju.isdb@gmail.com', '01832812929'
EXEC SP_INSERT_EMPLOYEES 17,'Sazzad', 'Alam', 'Male', '1992-11-29', '2021-09-01', 8, 'PRODUCTION Executive', 53000, NULL, 'sazzad.isdb@gmail.com', '01532812928'
EXEC SP_INSERT_EMPLOYEES 18,'Riaj', 'Rahman', 'Male', '1991-09-04', '2021-09-01', 2, 'ACCOUNT Executive', 68000, NULL, 'riaj.isdb@gmail.com', '01632812928'
EXEC SP_INSERT_EMPLOYEES 19,'Rohet', 'Islam', 'Male', '1988-03-05', '2021-05-01', 3, 'SALES Executive', 53000, NULL, 'rohet.isdb@gmail.com', '01732812928'
EXEC SP_INSERT_EMPLOYEES 20,'Fahim', 'Rahman', 'Male', '1987-06-21', '2021-05-01', 4, 'MARKETING Executive', 73000, NULL, 'fahim.isdb@gmail.com', '01932812928'


-- Insert data into Employees table

/*INSERT INTO Employees (EmployeeID, FirstName, LastName, Gender, DOB, HireDate, DepartmentID, JobTitle, Salary, ManagerID, Email, PhoneNumber) 
VALUES
(1,'Leonel', 'Messi', 'Male', '1997-04-23', '2023-06-01', 1, 'HR Manager', 78000, NULL, 'Messi.isdb@gmail.com', '01832812928'),
(2,'Izaz', 'Sakib', 'Male', '1996-05-24', '2023-07-01', 2, 'ACCOUNTS Manager', 88000, NULL, 'sakib.isdb@gmail.com', '01832842928'),
(3,'Saiful', 'Islam', 'Male', '1997-07-11', '2023-05-01', 3, 'SALES Manager', 68000, NULL, 'saiful.isdb@gmail.com', '01832872928'),
(4,'Faisal', 'Hossen', 'Male', '1998-09-15', '2023-07-01', 4, 'MARKETING Manager', 98000, NULL, 'faisal.isdb@gmail.com', '01837812928'),
(5,'Tarif', 'Ahmed', 'Male', '1994-07-16', '2023-04-01', 5, 'IT Manager', 58000, NULL, 'tarif.isdb@gmail.com', '01832816928'),
(6,'Ahsan', 'Ahmed', 'Male', '1993-08-16', '2023-03-01', 6, 'QUALITY Manager', 68000, NULL, 'ahsan.isdb@gmail.com', '01832812938'),
(7,'Hanif', 'Islam', 'Male', '1992-09-17', '2023-08-01', 7, 'ADMINISTRATIVE Manager', 88000, NULL, 'hanif.isdb@gmail.com', '01837812928'),
(8,'Emon', 'Islam', 'Male', '1991-04-18', '2023-06-01', 8, 'PRODUCTION Manager', 73000, NULL, 'emon.isdb@gmail.com', '01832814928'),
(9,'Lokman', 'Hossan', 'Male', '1990-07-19', '2022-06-01', 1, 'HR Executive', 63000, NULL, 'lokman.isdb@gmail.com', '018328123728'),
(10,'Abdul', 'Rahim', 'Male', '1989-01-12', '2022-08-01', 2, 'ACCOUNTS Executive', 68000, NULL, 'abdul.isdb@gmail.com', '01832812928'),
(11,'Mohsena', 'Akter', 'Female', '1996-01-11', '2022-02-01', 3, 'SALES Executive', 53000, NULL, 'meem.isdb@gmail.com', '01832812928'),
(12,'Faria', 'Ferdous', 'Female', '1998-02-19', '2022-03-01', 4, 'MARKETING Executive', 73000, NULL, 'faria.isdb@gmail.com', '01832812958'),
(13,'Farzana', 'Ferdous', 'Female', '1995-02-19', '2022-03-01', 4, 'MARKETING Executive', 73000, NULL, 'farzana.isdb@gmail.com', '01532812958'),
(14,'Adil', 'Irfan', 'Male', '1997-08-20', '2022-03-01', 5, 'IT Executive', 48000, NULL, 'adil.isdb@gmail.com', '01832812928'),
(15,'Omar', 'Faruq', 'Male', '1994-11-21', '2022-01-01', 6, 'QUALITY Executive', 53000, NULL, 'omar.isdb@gmail.com', '01832817928'),
(16,'Raju', 'Uddin', 'Male', '1993-12-28', '2021-01-01', 7, 'ADMINISTRATIVE Executive', 68000, NULL, 'raju.isdb@gmail.com', '01832812929'),
(17,'Sazzad', 'Alam', 'Male', '1992-11-29', '2021-09-01', 8, 'PRODUCTION Executive', 53000, NULL, 'sazzad.isdb@gmail.com', '01532812928'),
(18,'Riaj', 'Rahman', 'Male', '1991-09-04', '2021-09-01', 2, 'ACCOUNT Executive', 68000, NULL, 'riaj.isdb@gmail.com', '01632812928'),
(19,'Rohet', 'Islam', 'Male', '1988-03-05', '2021-05-01', 3, 'SALES Executive', 53000, NULL, 'rohet.isdb@gmail.com', '01732812928'),
(20,'Fahim', 'Rahman', 'Male', '1987-06-21', '2021-05-01', 4, 'MARKETING Executive ', 73000, NULL, 'fahim.isdb@gmail.com', '01932812928');
*/

--Insert data into SP_INSERT_ATTENDANCE

EXEC SP_INSERT_ATTENDANCE 1,1, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 2,2, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 3,3, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 4,4, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 5,5, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 6,6, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 7,7, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 8,8, '2025-05-01', '09:00', '17:00'
EXEC SP_INSERT_ATTENDANCE 9,9, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 10,10, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 11,11, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 12,12, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 13,13, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 14,14, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 15,15, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 16,16, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 17,17, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 18,18, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 19,19, '2025-05-01', '09:30', '17:30'
EXEC SP_INSERT_ATTENDANCE 20,20, '2025-05-01', '09:30', '17:30'


-- Insert data into Attendance table
/*INSERT INTO Attendance (AttendanceID, EmployeeID, Date, CheckInTime, CheckOutTime) 
VALUES
(1,1, '2025-05-01', '09:00', '17:00'),
(2,2, '2025-05-01', '09:00', '17:00'),
(3,3, '2025-05-01', '09:00', '17:00'),
(4,4, '2025-05-01', '09:00', '17:00'),
(5,5, '2025-05-01', '09:00', '17:00'),
(6,6, '2025-05-01', '09:00', '17:00'),
(7,7, '2025-05-01', '09:00', '17:00'),
(8,8, '2025-05-01', '09:00', '17:00'),
(9,9, '2025-05-01', '09:30', '17:30'),
(10,10, '2025-05-01', '09:30', '17:30'),
(11,11, '2025-05-01', '09:30', '17:30'),
(12,12, '2025-05-01', '09:30', '17:30'),
(13,13, '2025-05-01', '09:30', '17:30'),
(14,14, '2025-05-01', '09:30', '17:30'),
(15,15, '2025-05-01', '09:30', '17:30'),
(16,16, '2025-05-01', '09:30', '17:30'),
(17,17, '2025-05-01', '09:30', '17:30'),
(18,18, '2025-05-01', '09:30', '17:30'),
(19,19, '2025-05-01', '09:30', '17:30'),
(20,20, '2025-05-01', '09:30', '17:30');
*/

--Insert data into SP_INSERT_LEAVERECORDS

EXEC SP_INSERT_LEAVERECORDS 1,1, '2025-04-01', '2025-04-10', 'Sick', 'Medical reasons'
EXEC SP_INSERT_LEAVERECORDS 2,2, '2025-04-02', '2025-04-10', 'Casual', 'Personal reasons'
EXEC SP_INSERT_LEAVERECORDS 3,3, '2025-04-03', '2025-04-15', 'Casual', 'Personal reasons'
EXEC SP_INSERT_LEAVERECORDS 4,4, '2025-04-04', '2025-04-10', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 5,5, '2025-04-05', '2025-04-10', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 6,6, '2025-04-06', '2025-04-15', 'Sick', 'Medical reasons'
EXEC SP_INSERT_LEAVERECORDS 7,7, '2025-04-07', '2025-04-17', 'Sick', 'Medical reasons'
EXEC SP_INSERT_LEAVERECORDS 8,8, '2025-04-08', '2025-04-17', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 9,9, '2025-04-09', '2025-04-18', 'Casual', 'Personal reasons'
EXEC SP_INSERT_LEAVERECORDS 10,10, '2025-04-05', '2025-04-10', 'Casual', 'Personal reasons'
EXEC SP_INSERT_LEAVERECORDS 11,11, '2025-04-06', '2025-04-12', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 12,12, '2025-04-04', '2025-04-20', 'Maternity', 'Medical reasons'
EXEC SP_INSERT_LEAVERECORDS 13,13, '2025-04-02', '2025-04-07', 'Casual', 'Personal reasons'
EXEC SP_INSERT_LEAVERECORDS 14,14, '2025-04-02', '2025-04-10', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 15,15, '2025-04-09', '2025-04-12', 'Absent', 'Null'
EXEC SP_INSERT_LEAVERECORDS 16,16, '2025-04-07', '2025-04-10', 'Sick', 'Medical reasons'
EXEC SP_INSERT_LEAVERECORDS 17,17, '2025-04-11', '2025-04-15', 'Annual', 'Family vacation'
EXEC SP_INSERT_LEAVERECORDS 18,18, '2025-04-12', '2025-04-20', 'Sick', 'Medical reasons' 
EXEC SP_INSERT_LEAVERECORDS 19,19, '2025-04-12', '2025-04-15', 'Absent', 'Null'
EXEC SP_INSERT_LEAVERECORDS 20,20, '2025-04-15', '2025-04-27', 'Casual', 'Personal reasons'


-- Insert data into LeaveRecords table
/*INSERT INTO LeaveRecords (LeaveID, EmployeeID, StartDate, EndDate, LeaveType, Reason) 
VALUES
(1,1, '2025-04-01', '2025-04-10', 'Sick', 'Medical reasons'),
(2,2, '2025-04-02', '2025-04-10', 'Casual', 'Personal reasons'),
(3,3, '2025-04-03', '2025-04-15', 'Casual', 'Personal reasons'),
(4,4, '2025-04-04', '2025-04-10', 'Annual', 'Family vacation'),
(5,5, '2025-04-05', '2025-04-10', 'Annual', 'Family vacation'),
(6,6, '2025-04-06', '2025-04-15', 'Sick', 'Medical reasons'),
(7,7, '2025-04-07', '2025-04-17', 'Sick', 'Medical reasons'),
(8,8, '2025-04-08', '2025-04-17', 'Annual', 'Family vacation'),
(9,9, '2025-04-09', '2025-04-18', 'Casual', 'Personal reasons'),
(10,10, '2025-04-05', '2025-04-10', 'Casual', 'Personal reasons'),
(11,11, '2025-04-06', '2025-04-12', 'Annual', 'Family vacation'),
(12,12, '2025-04-04', '2025-04-20', 'Maternity', 'Medical reasons'),
(13,13, '2025-04-02', '2025-04-07', 'Casual', 'Personal reasons'),
(14,14, '2025-04-02', '2025-04-10', 'Annual', 'Family vacation'),
(15,15, '2025-04-09', '2025-04-13', 'Absent', 'Null'),
(16,16, '2025-04-07', '2025-04-10', 'Sick', 'Medical reasons'),
(17,17, '2025-04-11', '2025-04-15', 'Annual', 'Family vacation'),
(18,18, '2025-04-12', '2025-04-20', 'Sick', 'Medical reasons'),
(19,19, '2025-04-12', '2025-04-15', 'Absent', 'Null'),
(20,20, '2025-04-15', '2025-04-20', 'Casual', 'Personal reasons');
*/

--Insert data into SP_INSERT_SALARIES

EXEC SP_INSERT_SALARIES 1,1, 75000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 2,2, 85000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 3,3, 65000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 4,4, 95000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 5,5, 55000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 6,6, 65000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 7,7, 85000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 8,8, 70000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 9,9, 60000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 10,10, 65000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 11,11, 50000, 5000, 2000, '2025-05-25' 
EXEC SP_INSERT_SALARIES 12,12, 70000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 13,13, 70000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 14,14, 45000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 15,15, 50000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 16,16, 65000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 17,17, 50000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 18,18, 65000, 5000, 2000, '2025-05-25'
EXEC SP_INSERT_SALARIES 19,19, 50000, 5000, 2000, '2025-05-25' 
EXEC SP_INSERT_SALARIES 20,20, 70000, 5000, 2000, '2025-05-25'


-- Insert data into Salaries table
/*INSERT INTO Salaries (SalaryID, EmployeeID, BasicSalary, Bonus, Deductions, PayDate) 
VALUES
(1,1, 75000, 5000, 2000, '2025-05-25'),
(2,2, 85000, 5000, 2000, '2025-05-25'),
(3,3, 65000, 5000, 2000, '2025-05-25'),
(4,4, 95000, 5000, 2000, '2025-05-25'),
(5,5, 55000, 5000, 2000, '2025-05-25'),
(6,6, 65000, 5000, 2000, '2025-05-25'),
(7,7, 85000, 5000, 2000, '2025-05-25'),
(8,8, 70000, 5000, 2000, '2025-05-25'),
(9,9, 60000, 5000, 2000, '2025-05-25'),
(10,10, 65000, 5000, 2000, '2025-05-25'),
(11,11, 50000, 5000, 2000, '2025-05-25'),
(12,12, 70000, 5000, 2000, '2025-05-25'),
(13,13, 70000, 5000, 2000, '2025-05-25'),
(14,14, 45000, 5000, 2000, '2025-05-25'),
(15,15, 50000, 5000, 2000, '2025-05-25'),
(16,16, 65000, 5000, 2000, '2025-05-25'),
(17,17, 50000, 5000, 2000, '2025-05-25'),
(18,18, 60000, 5000, 2000, '2025-05-25'),
(19,19, 50000, 5000, 2000, '2025-05-25'),
(20,20, 70000, 5000, 2000, '2025-05-25');
*/

--Insert data into SP_INSERT_PAYROLL

EXEC SP_INSERT_PAYROLL 1,1, '2025-05-25', 80000, 2000, 78000
EXEC SP_INSERT_PAYROLL 2,2, '2025-05-25', 90000, 2000, 88000
EXEC SP_INSERT_PAYROLL 3,3, '2025-05-25', 70000, 2000, 68000
EXEC SP_INSERT_PAYROLL 4,4, '2025-05-25', 100000, 2000, 98000
EXEC SP_INSERT_PAYROLL 5,5, '2025-05-25', 60000, 2000, 58000
EXEC SP_INSERT_PAYROLL 6,6, '2025-05-25', 70000, 2000, 68000
EXEC SP_INSERT_PAYROLL 7,7, '2025-05-25', 90000, 2000, 88000
EXEC SP_INSERT_PAYROLL 8,8, '2025-05-25', 75000, 2000, 73000
EXEC SP_INSERT_PAYROLL 9,9, '2025-05-25', 65000, 2000, 63000
EXEC SP_INSERT_PAYROLL 10,10, '2025-05-25', 70000, 2000, 68000				
EXEC SP_INSERT_PAYROLL 11,11, '2025-05-25', 55000, 2000, 53000
EXEC SP_INSERT_PAYROLL 12,12, '2025-05-25', 75000, 2000, 73000
EXEC SP_INSERT_PAYROLL 13,13, '2025-05-25', 75000, 2000, 73000
EXEC SP_INSERT_PAYROLL 14,14, '2025-05-25', 50000, 2000, 48000
EXEC SP_INSERT_PAYROLL 15,15, '2025-05-25', 55000, 2000, 53000
EXEC SP_INSERT_PAYROLL 16,16, '2025-05-25', 70000, 2000, 68000
EXEC SP_INSERT_PAYROLL 17,17, '2025-05-25', 55000, 2000, 53000
EXEC SP_INSERT_PAYROLL 18,18, '2025-05-25', 75000, 2000, 68000
EXEC SP_INSERT_PAYROLL 19,19, '2025-05-25', 55000, 2000, 53000
EXEC SP_INSERT_PAYROLL 20,20, '2025-05-25', 75000, 2000, 73000


-- Insert data into Payroll table
/*INSERT INTO Payroll (PayrollID, EmployeeID, PayDate, GrossSalary, Deductions, NetSalary)
VALUES
(1,1, '2025-05-25', 80000, 2000, 78000),
(2,2, '2025-05-25', 90000, 2000, 88000),
(3,3, '2025-05-25', 70000, 2000, 68000),
(4,4, '2025-05-25', 100000, 2000, 98000),
(5,5, '2025-05-25', 60000, 2000, 58000),
(6,6, '2025-05-25', 70000, 2000, 68000),
(7,7, '2025-05-25', 90000, 2000, 88000),
(8,8, '2025-05-25', 75000, 2000, 73000),
(9,9, '2025-05-25', 65000, 2000, 63000),
(10,10, '2025-05-25', 70000, 2000, 68000),
(11,11, '2025-05-25', 55000, 2000, 53000),
(12,12, '2025-05-25', 75000, 2000, 73000),
(13,13, '2025-05-25', 75000, 2000, 73000),
(14,14, '2025-05-25', 50000, 2000, 48000),
(15,15, '2025-05-25', 55000, 2000, 53000),
(16,16, '2025-05-25', 70000, 2000, 68000),
(17,17, '2025-05-25', 55000, 2000, 53000),
(18,18, '2025-05-25', 70000, 2000, 68000),
(19,19, '2025-05-25', 55000, 2000, 53000),
(20,20, '2025-05-25', 75000, 2000, 73000);
*/

--Queries

select *
from Employees

select EmployeeID, Gender, Salary
from Employees

select FirstName+''+LastName as FullName
from Employees 

select EmployeeID
from Employees
where DepartmentID= '1'

select EmployeeID
from LeaveRecords
where LeaveType= 'Sick'

select EmployeeID, DepartmentID
from Employees
order by DepartmentID desc

select top(5) NetSalary
from Payroll
order by NetSalary desc

select EmployeeID ,FirstName+''+LastName as FullName
from Employees
where DepartmentID= '1' or HireDate= '2022-03-01'

select EmployeeID
from Payroll
where NetSalary between '60000' and '80000'

select EmployeeID, BasicSalary
from Salaries
order by BasicSalary desc
offset 5 Rows
Fetch next 7 Rows only

select EmployeeID, DepartmentName
from Employees
JOIN Departments 
ON Employees.DepartmentID= Departments.DepartmentID


select E.EmployeeID, E.FirstName, E.LastName, p.Netsalary
from Employees as E
join Payroll as P
on E.EmployeeID=p.PayrollID

SELECT EmployeeID, avg(Salary) as Avgsalary
FROM Employees
GROUP BY EmployeeID

SELECT EmployeeID, avg(Salary) as Avgsalary
FROM Employees
GROUP BY EmployeeID
HAVING avg(Salary)>60000 

SELECT EmployeeID, COUNT(*) AS EmployeesCount, SUM(salary) AS salryTotal
FROM Employees
GROUP BY EmployeeID 

SELECT EmployeeID, COUNT(*) AS EmployeesCount, SUM(salary) AS salryTotal
FROM Employees
GROUP BY EmployeeID with CUBE


SELECT EmployeeID, COUNT(*) AS EmployessCount, SUM(Salary) AS SalaryTotal
FROM Employees
GROUP BY EmployeeID with ROLLUP;

select EmployeeID, NetSalary
from Payroll
union 
select EmployeeID, Basicsalary
from Salaries

select EmployeeID
from Attendance
union all
select EmployeeID
from LeaveRecords

 select EmployeeID, PayDate, NetSalary
 from Payroll
 where NetSalary > ( select avg(NetSalary)
 from Payroll)
 order by NetSalary

 select EmployeeID, PayDate, NetSalary
 from Payroll
 where NetSalary = ( select Max(NetSalary)
 from Payroll)
 order by NetSalary

 select EmployeeID, PayDate, NetSalary
 from Payroll
 where NetSalary = ( select Min(NetSalary)
 from Payroll)
 order by NetSalary

 select *
 into AttendanceCopy
 from Attendance

 select PayDate, NetSalary,
 Cast(Paydate as varchar) as varchardate,
 Cast(Netsalary as int) as IntTotal,
 Cast(NetSalary as varchar) as varcharTotal
 from Payroll

 select CONVERT(varchar, PayDate) as varchardate, 
 CONVERT(varchar, PayDate, 1) as varchardate_1, 
 CONVERT(varchar, PayDate, 107) as varchardate_107,
 CONVERT (varchar, Netsalary) as varcharTotal,
 CONVERT (varchar, Netsalary, 1) as varcharTotal_1,
 CONVERT (varchar, Netsalary, 107) as varcharTotal_107
 from Payroll
