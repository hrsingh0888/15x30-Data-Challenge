use parks_and_recreation;

select * from employeedemographics;
select * from employeesalary;

# Inner Join

select * from employeedemographics
inner join employeesalary on employeedemographics.EmployeeID = employeesalary.EmployeeID;

# Left join

select dem.employeeID, age, gender from employeedemographics as dem
left join employeesalary as sal on 
dem.EmployeeID = sal.EmployeeID;

# Right join

select * from employeedemographics as dem
left join employeesalary as sal on 
dem.EmployeeID = sal.EmployeeID;

# Self Join

select * from employeesalary emp1
join employeesalary emp2
on emp1.employeeid = emp2.employeeid;

-- String Functions

select Length('skyfall');

select * from employeedemographics;

select FirstName, length(firstname)
from employeedemographics
order by 2;

select FirstName, UPPER(firstname)
from employeedemographics
order by 2;

# Stored Procedure

create procedure large_salaries()
select * from employeesalary
where salary >= 50000;

call large_salaries()

DELIMITER $$
Create Procedure large_salaries3()
BEGIN
select * from employeesalary
where salary >= 50000;
select * from employeesalary
where salary >= 10000;
END$$
DELIMITER ;

call large_salaries3();






