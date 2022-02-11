-- Challenge 7 
-- Create a Retirement Titles table that holds all titles of employees what were born between 1952-01-01 & 1955-12-31
--Use distinct on to get unique titles, then use COUNT() to create a table that has the number of retirement age emps by 
-- most recent job title, exclude employees that have left the company
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN title as t
	on (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Starter Code: Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE 
ORDER BY emp_no, title DESC;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
--	from_date,
--	to_date
--INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- get title count of those to retire
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
FROM dept_emp as de
INNER JOIN employees as e
	on (de.emp_no = e.emp_no)
INNER JOIN title as t
	on (e.emp_no = t.emp_no);

    SELECT DISTINCT ON(e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM dept_emp as de
INNER JOIN employees as e
	on (de.emp_no = e.emp_no)
INNER JOIN title as t
	on (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;