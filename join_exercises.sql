USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ',e.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_manager AS dm
     ON dm.emp_no = e.emp_no
JOIN departments AS d
     ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ',e.last_name) AS 'Department Manager', s.salary
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
                  AND e.gender = 'f'
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
         JOIN salaries AS s
              ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

SELECT *
FROM titles
WHERE titles.emp_no
    IN (
    SELECT employees.emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE employees.emp_no
    IN (
        SELECT dept_manager.emp_no
        FROM dept_manager
        WHERE gender = 'f' AND to_date = '9999-01-01'
          );