USE employees;

SELECT DISTINCT title, COUNT(*) FROM titles ORDER BY COUNT(*) DESC;

SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' GROUP BY last_name ORDER BY COUNT(*) DESC;

SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY COUNT(*) DESC;

SELECT first_name,last_name, COUNT(*) FROM employees GROUP BY first_name, last_name ORDER BY COUNT(*) DESC;


