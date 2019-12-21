USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

SELECT first_name, title
FROM employees
         JOIN titles ON titles.emp_no = employees.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT title , COUNT(title)
FROM employees
         JOIN titles ON titles.emp_no = employees.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
)
group by title;

SELECT first_name, last_name
FROM employees
         JOIN dept_manager dm on employees.emp_no = dm.emp_no
WHERE gender IN (
    SELECT gender
    FROM employees
    WHERE gender = 'F'
) AND to_date > NOW();
