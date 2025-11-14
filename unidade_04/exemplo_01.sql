SELECT last_name, salary 
FROM employees 
WHERE salary > (
    SELECT salary 
    FROM employees
    WHERE last_name = 'Abel'
);

SELECT last_name, job_id 
FROM employees 
WHERE job_id = (
    SELECT job_id 
    FROM employees 
    WHERE employee_id = 141
);
            
SELECT first_name, last_name, job_id 
FROM employees WHERE job_id = (
    SELECT job_id 
    FROM employees 
    WHERE first_name = 'David' and last_name = 'Lee'
) 
ORDER BY first_name;

SELECT first_name, last_name, job_id, department_id 
FROM employees 
WHERE department_id = (
    SELECT department_id 
    FROM employees 
    WHERE first_name = 'David' AND last_name = 'Lee'
) 
ORDER BY first_name;

SELECT first_name, last_name, job_id, department_id, salary 
FROM employees 
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees
) 
ORDER BY first_name;

SELECT first_name, last_name, job_id, department_id, salary
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN ('Marketing', 'Administration')
)
ORDER BY first_name;

SELECT first_name, last_name, job_id, department_id, salary
FROM employees
WHERE salary > (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = (
        SELECT department_id 
        FROM departments 
        WHERE department_name = 'Sales')
)
ORDER BY first_name;

SELECT first_name, last_name, job_id, department_id, salary
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN 
    ('Marketing', 'Administration')
)
ORDER BY first_name;

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY (
    SELECT salary
    FROM employees
    WHERE job_id = 'IT_PROG'
) 
AND job_id <> 'IT_PROG';


SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL (
    SELECT salary
    FROM employees
    WHERE job_id = 'IT_PROG'
) 
AND job_id <> 'IT_PROG';

SELECT employee_id, manager_id, first_name, last_name, job_id, department_id, salary
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM employees m
    WHERE e.manager_id = m.employee_id
)
ORDER BY employee_id;

SELECT employee_id, manager_id, first_name, last_name, job_id, department_id, salary
FROM employees
WHERE EXISTS (
    SELECT department_id
    FROM departments
    WHERE departments.department_id = employees.department_id
);


SELECT first_name, job_id,
    DECODE(
        job_id, 
        'IT_PROG', 'PROGRAMADOR', 
        'FI_ACCOUNT', 'CONTADOR', 
        'INDEFINIDO'
    ) DECODE_CARGO
FROM employees;

SELECT first_name, job_id, salary,
    DECODE(
        job_id,
        'IT_PROG',    salary * 1.1,
        'FI_ACCOUNT', salary * 1.2,
        'AD_VP',      salary * 0.95,
        salary
    ) DECODE_CARGO
FROM employees;

SELECT 
    first_name, 
    job_id, 
    salary,
    CASE
        WHEN salary < 5000 THEN 'AUMENTO'
        WHEN salary > 10000 THEN 'VERIFICAR'
        ELSE 'NAO AUMENTAR'
    END classificacao
FROM employees;