--SQL Project On HR Payroll Management System
--DDL

Create Database HrPayrollManagement

Go
create login ProjectUser with password ='Admin@128', DEFAULT_DATABASE = HrPayrollManagementSystemDB;

go
alter server role serveradmin
add member ProjectUser
go
use HrPayrollManagement
go
create role UserRole
go
alter role db_owner
add member UserRole
go
create schema UserSchema
go
grant select,insert, update, delete, execute
on schema::UserSchema
to UserRole
go
create user HrPayrollManagementSystemDBUser for login ProjectUser
with default_schema=UserSchema
go
alter role UserRole
add member HrPayrollManagementSystemDBUser

----
Use HrPayrollManagement
Go
-- Create Departments Table
Create TABLE Departments 
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Create Employees Table
Create TABLE Employees 
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DOB DATE NOT NULL,
    HireDate DATE NOT NULL,
    DepartmentID INT,
    JobTitle VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    ManagerID INT,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Create Attendance Table
Create TABLE Attendance 
(
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    Date DATE NOT NULL,
    CheckInTime TIME NOT NULL,
    CheckOutTime TIME NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create LeaveRecords Table
Create TABLE LeaveRecords 
(
    LeaveID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    LeaveType VARCHAR(50) NOT NULL,
    Reason Varchar(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


-- Create Salaries Table
Create TABLE Salaries 
(
    SalaryID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    BasicSalary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    PayDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create Payroll Table
Create TABLE Payroll 
(
    PayrollID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    PayDate DATE NOT NULL,
    GrossSalary DECIMAL(10, 2) NOT NULL,
    Deductions DECIMAL(10, 2),
    NetSalary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

--Create Procedure to Insert Data into Departments

Create proc SP_INSERT_DEPARTMENTS

@DepartmentID int, @DepartmentName VARCHAR(100) 

as
begin
INSERT INTO Departments (DepartmentID, DepartmentName) 
VALUES
(@DepartmentID , @DepartmentName)
end
go

--Create Procedure to Update Departments Data

Create proc SP_UPDATE_DEPARTMENT

@DepartmentID int, @DepartmentName VARCHAR(100) 

as
begin
update Departments 
set DepartmentName= @DepartmentName
where DepartmentID = @DepartmentID
end
go


--Create Procedure to Insert Data into Employees

Create proc SP_INSERT_EMPLOYEES 

    @EmployeeID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(10),
    @DOB DATE,
    @HireDate DATE,
    @DepartmentID INT,
    @JobTitle VARCHAR(100),
    @Salary DECIMAL(10, 2),
    @ManagerID INT,
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(15)	
As
begin
INSERT INTO Employees(EmployeeID, FirstName, LastName, Gender, DOB, HireDate, DepartmentID, JobTitle, Salary, ManagerID, Email, PhoneNumber) 
VALUES
(@EmployeeID, @FirstName, @LastName, @Gender, @DOB, @HireDate, @DepartmentID, @JobTitle, @Salary, @ManagerID, @Email, @PhoneNumber);
end
go


--Create Procedure to Insert Data into Attendance

Create proc SP_INSERT_ATTENDANCE 
    @AttendanceID INT,
    @EmployeeID INT,
    @Date DATE,
    @CheckInTime TIME,
    @CheckOutTime TIME
    
as
begin
INSERT INTO  Attendance (AttendanceID, EmployeeID, Date, CheckInTime, CheckOutTime  ) 
VALUES
(@AttendanceID , @EmployeeID, @Date, @CheckInTime, @CheckOutTime );
end
go


--Create Procedure to Insert Data into LeaveRecords

Create proc SP_INSERT_LEAVERECORDS
    @LeaveID INT,
    @EmployeeID INT,
    @StartDate DATE,
    @EndDate DATE,
    @LeaveType VARCHAR(50),
    @Reason Varchar(100)
   
as
begin
INSERT INTO  LeaveRecords (LeaveID, EmployeeID, StartDate, EndDate, LeaveType, Reason) 
VALUES
(@LeaveID, @EmployeeID, @StartDate, @EndDate, @LeaveType, @Reason);
end
go


--Create Procedure to Insert Data into Salaries

Create proc SP_INSERT_SALARIES
    @SalaryID INT,
    @EmployeeID INT,
    @BasicSalary DECIMAL(10, 2),
    @Bonus DECIMAL(10, 2),
    @Deductions DECIMAL(10, 2),
    @PayDate DATE
	 
as
begin
INSERT INTO  Salaries (SalaryID, EmployeeID, BasicSalary, Bonus, Deductions, PayDate) 
VALUES
(@SalaryID, @EmployeeID, @BasicSalary, @Bonus, @Deductions, @PayDate);
end
go


--Create Procedure to Insert Data into Payroll

Create proc SP_INSERT_PAYROLL
    @PayrollID INT,
    @EmployeeID INT,
    @PayDate DATE,
    @GrossSalary DECIMAL(10, 2),
    @Deductions DECIMAL(10, 2),
    @NetSalary DECIMAL(10, 2)

as
begin
INSERT INTO  Payroll(PayrollID, EmployeeID, PayDate, GrossSalary, Deductions, NetSalary) 
VALUES
(@PayrollID, @EmployeeID, @PayDate, @GrossSalary, @Deductions, @NetSalary);
end
go

--DDL QUERIES

 Create index index_Attendance
 on Attendance(EmployeeID);
 go

 
 With Cte_Employee as
	( 
	Select *
	From Employees
	where Gender='Female'
	)
	select *
	from Cte_Employee

-- Create View 

Create view_vwEmployeeDetails
with schemabinding 
as
select EmployeeID, FirstName,LastName,JobTitle, DepartmentName
from dbo.Employees
JOIN dbo.Departments 
ON Employees.DepartmentID= Departments.DepartmentID
go

select *
from vwEmployeeDetails

--Create function

Create function fnDeptEmpNo
(@deptName varchar(100)='%')
returns table
as
return (select  DepartmentName, count(*) as NoOfEmployee
from vwEmployeeDetails
where DepartmentName like @deptName
group by DepartmentName
)

go

Select *
from dbo.fnDeptEmpNo (default)

--Create MultiStatement Function

CREATE FUNCTION dbo.FNemployeesalary
(
    @salary Money
)
RETURNS @Employees TABLE
(
    ID INT,
    FirstName VARCHAR(50),
    salary money
)
AS
BEGIN
    INSERT INTO @Employees (ID, FirstName, salary)
    SELECT EmployeeID, FirstName, Salary
    FROM Employees
    WHERE Salary = @salary;
    
    RETURN;
END;

GO

-- Call the function
DECLARE @salary money = '73000';

SELECT ID, FirstName
FROM dbo.FNemployeesalary(@salary);

GO

-- Create a simple storedProcedure

Create Proc spEmployeereport
as
select EmployeeID, DepartmentName, HireDate, salary
from Employees join Departments
on Employees.DepartmentID = Departments.DepartmentID
where Salary > 70000
order by EmployeeID
go

exec spEmployeereport 


--Create procedure with transaction

Create Proc stemployeetest 
@Title varchar(100)
as 
begin try
begin tran 
Set Transaction Isolation Level Read Uncommitted
select *
from vwEmployeeDetails
where JobTitle = @Title
commit tran end try 

begin catch
rollback tran

end catch

--Create Insert trigger

Create trigger tr_employee_insert
on employees
after insert
as 
begin
print 'Employee insert operation completed'

end
go

--Create trigger tr_employee_Update

Create trigger tr_employee_Update
on employees
after update
as 
begin
print 'Employee update operation completed'

end
go
