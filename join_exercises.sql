USE employees;

SELECT dept_name AS Department, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
         JOIN dept_manager
              ON employees.emp_no = dept_manager.emp_no
         JOIN departments
              on dept_manager.dept_no = departments.dept_no
WHERE to_date > CURRENT_DATE();

SELECT dept_name AS Department, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
         JOIN dept_manager
              ON employees.emp_no = dept_manager.emp_no
         JOIN departments
              on dept_manager.dept_no = departments.dept_no
WHERE to_date > CURRENT_DATE() AND employees.gender = 'F';

SELECT title, COUNT(*) FROM employees
                                JOIN titles t on employees.emp_no = t.emp_no
                                JOIN dept_emp de on employees.emp_no = de.emp_no
WHERE de.dept_no = 'd009' AND de.to_date > CURRENT_DATE() AND t.to_date > CURRENT_DATE()
GROUP BY title;

SELECT dept_name AS Department, CONCAT(first_name, ' ', last_name),salary AS Name
FROM employees
         JOIN dept_manager as dm
              ON employees.emp_no = dm.emp_no
         JOIN departments as d
              on dm.dept_no = d.dept_no
         JOIN salaries s on employees.emp_no = s.emp_no
WHERE s.to_date > CURRENT_DATE() AND dm.to_date > CURRENT_DATE();




