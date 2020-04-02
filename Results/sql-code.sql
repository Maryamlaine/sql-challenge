SELECT e.emp_no, e.last_name, e.first_name,e.gender,s.salary
FROM salary_emp AS s
JOIN emp as e ON
e.emp_no=s.emp_no;

SELECT first_name, last_name, hire_date
FROM emp 
WHERE extract(year from hire_date) = 1986;

CREATE VIEW Manager_info AS
SELECT dm.dep_no, d.dep_name, e.emp_no, e.last_name, e.first_name, t.from_date, t.to_date,t.title
FROM title_emp AS t
JOIN emp AS e
ON(t.emp_no=e.emp_no)
JOIN depmng AS dm
ON (dm.emp_no=e.emp_no)
JOIN dep AS d
ON (dm.dep_no=d.dep_no)
/*GROUP BY 'Manager';*/
SELECT * FROM Manager_info AS m
WHERE title LIKE 'Manager%';

SELECT m.emp_no, m.last_name, m.first_name, m.dep_name 
FROM Manager_info AS m; 


SELECT first_name, last_name
From emp AS e
WHERE e.first_name LIKE 'Hercules%'
AND e.last_name LIKE 'B%';

SELECT m.emp_no, m.last_name, m.first_name, m.dep_name 
FROM Manager_info AS m
WHERE dep_name = 'Sales'

SELECT m.emp_no, m.last_name, m.first_name, m.dep_name 
FROM Manager_info AS m
WHERE dep_name = 'Sales' 
OR dep_name = 'Development';

SELECT last_name, count(last_name)AS freq
FROM emp 
GROUP BY last_name
ORDER BY count(last_name) DESC;

SELECT title, AVG(salary) 
	FROM salary_emp as s
		NATURAL JOIN title_emp as t 
			GROUP BY title;