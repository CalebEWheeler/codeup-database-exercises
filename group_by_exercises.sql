USE employees;

SELECT DISTINCT t.title
FROM titles AS t;

SELECT e.last_name
FROM employees AS e
WHERE e.last_name LIKE 'E%' AND e.last_name LIKE '%E'
GROUP BY e.last_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'FULL NAME'
FROM employees AS e
WHERE e.last_name LIKE 'E%' AND e.last_name LIKE '%E'
GROUP BY CONCAT(e.first_name, ' ', e.last_name);

SELECT e.last_name AS LastNAME, COUNT(*) AS Count
FROM employees AS e
WHERE e.last_name LIKE '%q%' AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name
ORDER BY COUNT(*);


