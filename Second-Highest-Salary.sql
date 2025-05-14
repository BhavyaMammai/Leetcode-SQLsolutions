
/*select max(salary) as SecondHighestSalary from employee where salary not in(select max(salary) from employee);*/

SELECT(SELECT DISTINCT SALARY FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 1)AS SecondHighestSalary;