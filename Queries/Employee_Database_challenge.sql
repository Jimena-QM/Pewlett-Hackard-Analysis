-- DELIVERABLE 1
-- Retirement Titles 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows - Unique Titles
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

-- Retiring titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(title) DESC;

-- DELIVERABLE 2
-- Mentorship Eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
	LEFT JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	LEFT JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--Additional Analysis
-- Total number of active employees
SELECT COUNT(e.emp_no)
FROM employees as e
	LEFT JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
WHERE de.to_date = '9999-01-01';

-- Eligible employees by title and the total
SELECT title, COUNT(emp_no) AS ret_ready
INTO retirement_ready
FROM unique_titles
GROUP BY title
UNION ALL
SELECT 'SUM' title, COUNT(emp_no)
FROM unique_titles
ORDER BY ret_ready ASC;

--Mentorship ready and total
SELECT title, COUNT(emp_no) AS mentor_ready
INTO mentor_ready
FROM mentorship_eligibility
GROUP BY title
UNION ALL
SELECT 'SUM' title, COUNT(emp_no)
FROM mentorship_eligibility
ORDER BY mentor_ready ASC;

--JOIN retirement_ready and mentor_ready
SELECT rr.title, rr.ret_ready, mr.mentor_ready
FROM retirement_ready as rr
LEFT JOIN mentor_ready as mr
ON (rr.title = mr.title)
ORDER BY rr.ret_ready ASC;

