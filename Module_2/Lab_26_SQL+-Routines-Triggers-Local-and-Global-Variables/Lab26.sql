use employees_mod;

### Create procedure avg_salary

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
SELECT AVG(salary) FROM t_salaries;
END$$
DELIMITER ;

CALL avg_salary();

### Create procedure emp_info

DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
BEGIN
SELECT emp_no                
INTO p_emp_no FROM t_employees
WHERE first_name=p_first_name and last_name=p_last_name;
END$$
DELIMITER ;

CALL emp_info('Saniya', 'Kalloufi', @p_emp_np);
SELECT @p_emp_np;

### Create function emp_info

DROP FUNCTION IF EXISTS emp_info;

DELIMITER $$
CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
deterministic

BEGIN
	DECLARE v_max_from_date date;
	DECLARE v_salary decimal(10,2);
	
    SELECT max(s.from_date)
	INTO v_max_from_date 
	FROM t_employees e
	JOIN t_salaries s ON e.emp_no = s.emp_no
    WHERE e.first_name = p_first_name
    AND e.last_name = p_last_name;


	SELECT MAX(s.salary)
	INTO v_salary FROM t_employees e
	JOIN t_salaries s ON e.emp_no = s.emp_no
	WHERE e.first_name = p_first_name 
    AND e.last_name = p_last_name 
    AND s.from_date = v_max_from_date;
   
	RETURN v_salary;
END$$
DELIMITER ;

SELECT emp_info('Saniya', 'Kalloufi');

### Create trigger before insert

DELIMITER $$

CREATE TRIGGER before_hiredate_insert
BEFORE INSERT ON t_employees
FOR EACH ROW
BEGIN 
	IF NEW.hire_date > current_date THEN 
		SET NEW.hire_date = current_date(); 
	END IF; 
END $$

DELIMITER ;

insert into t_employees values(1, '1972-02-28', 'John', 'Smith', 'M', '2022-06-01');

### Create and drop index

CREATE INDEX test
ON t_employees(hire_date);

DROP INDEX test
ON t_employees;

select * from t_employees;

### Search before and after creating index

SELECT salary
FROM t_salaries
WHERE salary > 89000;

CREATE INDEX index_sal
ON t_salaries(salary);

### Creating index sped up the process about 4 fold.

### Case statement
SELECT e.emp_no, e.first_name, e.last_name, 
CASE
	WHEN e.emp_no = m.emp_no THEN "Yes"
    ELSE "No"
END AS Manager
FROM t_employees e
JOIN t_dept_manager m
ON m.emp_no = e.emp_no
WHERE e.emp_no > 109990
GROUP BY emp_no;

### Add salary raise and check if higher than 30000

CREATE TEMPORARY TABLE manager_raise
SELECT e.emp_no, e.first_name, e.last_name, (MAX(salary)-MIN(salary)) AS salary_raise,
CASE
	WHEN (MAX(salary)-MIN(salary)) > 30000 THEN "Yes"
    ELSE "No"
END AS "higher than 30000"
FROM t_employees e
JOIN t_dept_manager m
ON m.emp_no = e.emp_no
JOIN t_salaries s
ON s.emp_no = e.emp_no
GROUP BY emp_no;

select * from manager_raise;

### Return 100 employees employment status

SELECT m.emp_no, m.first_name, m.last_name,
CASE
	WHEN d.to_date < current_date() THEN "Not an employee anymore"
    ELSE "Is still employed"
END AS "current_employee"
FROM manager_raise m
JOIN t_dept_emp d
ON d.emp_no = m.emp_no
ORDER BY m.emp_no
LIMIT 100;


