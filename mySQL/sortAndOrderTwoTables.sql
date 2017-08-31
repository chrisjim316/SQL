Question 1 (MySQL) 

/*
1. First get the department number
2. Count the number of employees
3. Join Department table with Employee table base on the same dept_id
4. Sort the list in descending order of employees per department. 
5. If two or more departments have same number of employees, these departments are sorted alphabetically
by Department.NAME
*/

SELECT Department.NAME,
COUNT(Employee.DEPT_ID)
FROM Department
LEFT JOIN Employee
ON Employee.DEPT_ID = Department.DEPT_ID 
GROUP BY Department.NAME 
ORDER BY COUNT(Employee.DEPT_ID) DESC, Department.NAME;
