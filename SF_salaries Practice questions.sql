-- USE data_new;

-- 1 Show all columns and rows in the table 
SELECT *
FROM salaries;

-- 2 Show only the employment and JobTitle columns
SELECT EmployeeName, JobTitle
FROM salaries;

-- 3 Show the number of employees in the table 
SELECT COUNT(*)
FROM salaries;

-- 4 Show the unique job titles in the table 
SELECT DISTINCT JobTitle
FROM salaries;

-- 5 show the job title and the overtime pay for all employees with overtime pay greater than 1,000
SELECT Id, EmployeeName, JobTitle, OvertimePay
FROM salaries 
WHERE OvertimePay > 1000
LIMIT 30;

-- 6	Show the average base pay for all employees.
SELECT AVG(BasePay) AS Base_Pay
FROM salaries;

-- 7	Show the top 10 highest paid employees.
SELECT *
FROM salaries;

SELECT Id, employeeName, JobTitle, TotalPay
FROM salaries
ORDER BY TotalPay DESC -- Shows bottom 10
Limit 10;

SELECT Id, employeeName, JobTitle, TotalPay
FROM salaries
ORDER BY TotalPay ASC -- Shows top 10
Limit 10;

-- 8 Show the average of BasePay, OvertimePay, and OtherPay for each employee:
SELECT *
FROM salaries;

SELECT EmployeeName, (BasePay + OvertimePay + OtherPay) / 3 AS AVG_Pay
FROM salaries; 

-- 9	Show all employees who have the word "Manager" in their job title.
SELECT JobTitle
FROM salaries
WHERE JobTitle LIKE "%Manager%";

-- 10	Show all employees with a job title not equal to "Manager".
SELECT JobTitle
FROM salaries
WHERE JObTitle NOT LIKE "%Manager%";

-- 11	Show all employees with a total pay between 50,000 and 75,000.
SELECT *
FROM salaries
WHERE TotalPay Between 50000 and 75000;

-- 12	Show all employees with a base pay less than 50,000 or a total pay greater than 100,000.
SELECT EmployeeName, BasePay, TotalPay
FROM salaries
WHERE BasePay < 50000 or TotalPay > 100000;

-- 13	Show all employees with a total pay benefits value between 125,000 and 150,000 and a job title containing the word "Director".
SELECT EmployeeName, JobTitle, TotalPayBenefits
FROM salaries
	WHERE TotalPayBenefits BETWEEN 125000 and 150000
	AND JobTitle LIKE "%Director%";

-- 14	Show all employees ordered by their total pay benefits in descending order.
SELECT *
FROM salaries
ORDER BY TotalPayBenefits DESC;

-- 15	Show all job titles with an average base pay of at least 100,000 and order them by the average base pay in descending order.
SELECT *
FROM salaries;

SELECT JobTitle, AVG(BasePay) AS AVG_Base_Pay
FROM salaries
GROUP BY JobTitle
HAVING AVG_Base_Pay >= 100000 -- Used before grouping. WHERE cannot use aggregate fucntions like SUM, AVG, COUNT
							-- Used after grouping. HAVING can referecne SUM, AVG, COUNT
ORDER BY AVG_Base_Pay DESC;

-- 16	Delete the column.
SELECT *
FROM salaries;
ALTER TABLE salaries
DROP COLUMN notes;

-- 17	Update the base pay of all employees with the job title containing "Manager" by increasing it by 10%.
UPDATE salaries
SET BasePay = BasePay * 1.1
WHERE JobTitle LIKE "%Manager%";
SELECT *
FROM salaries;

-- 18	Delete all employees who have no OvertimePay.
SELECT COUNT(*)
FROM salaries
WHERE OvertimePay = 0;
DELETE FROM salaries 
WHERE OvertimePay = 0;
select count(*) from salaries
where OvertimePay =0;

SELECT *
FROM salaries;




















