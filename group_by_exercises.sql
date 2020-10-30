USE employees;

SELECT DISTINCT t.title
FROM titles AS t;

SELECT e.last_name
FROM employees AS e
WHERE e.last_name LIKE 'E%' AND e.last_name LIKE '%E'
GROUP BY e.last_name;
