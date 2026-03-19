
--BrightLight Data Analytics
---SQL Exercise: Aggregate Functions & Grouping


---1.	COUNT() Function
---Write a SQL query to find the total number of employees in the company.
SELECT COUNT(*) AS total_employees
FROM `workspace`.`default`.`employee_db_sheet_2`;

---2.	SUM() Function
---Write a SQL query to find the total salary paid to all employees in the IT department. 
SELECT SUM(salary) AS total_IT_salary
FROM `workspace`.`default`.`employee_db_sheet_2`;

---3.	AVG() Function 
---Write a SQL query to calculate the average salary of employees in the HR department.
SELECT AVG(salary) AS average_HR_salary
FROM `workspace`.`default`.`employee_db_sheet_2`
WHERE department = 'HR';

---4.	MIN() and MAX() Functions
 ---Write a SQL query to find the highest and lowest salary in the company.
SELECT MIN(salary) AS lowest_salary,
       MAX(salary)  AS highest_salary
FROM `workspace`.`default`.`employee_db_sheet_2` 


---5.	GROUP BY Statement 
---Write a SQL query to group employees by department and display the total salary paid in each department. 
SELECT department, 
       SUM(salary) AS total_salary
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY department;

---6.	 SQL query to count how many employees work in each city. 
SELECT city, COUNT(*) AS total_employees
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY city;

---7.	GROUP BY and ORDER BY 
---Write a SQL query to group employees by department, calculate the average salary in each department, and order the results in descending order of average salary. 
SELECT department,
      AVG(salary) AS average_salary
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY department
ORDER BY AVG(salary) DESC;

---8.	HAVING Clause 
---Write a SQL query to find departments where the total salary paid exceeds 100,000. (Use GROUP BY and HAVING) 
SELECT department,
      SUM(salary) AS total_salary
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY department
HAVING SUM(salary) > 100000;

---9.	Combining GROUP BY, HAVING, and ORDER BY
 ---Write a SQL query to list cities where more than one employee works, ordered by the number of employees in descending order. 
SELECT city, 
       COUNT (*) AS total_employees
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY city
HAVING COUNT(*) > 1
ORDER BY COUNT (*) DESC;

---10.	Combining Aggregate Functions
 ---Write a SQL query to find the department with the highest average salary.
 SELECT department,
        AVG(salary) AS average_salary
FROM `workspace`.`default`.`employee_db_sheet_2` 
GROUP BY department
ORDER BY  AVG(salary) DESC
LIMIT 1;  
---I used the ORDER BY statement to order it from highest to lowest average and LIMIT statement to take only one average, which is high, hence finding what is wanted, “The highest average salary”



