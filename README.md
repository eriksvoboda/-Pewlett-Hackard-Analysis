# Pewlett Hackard Analysis

## Overview

  The purpose of this project is to determine the number of retiring employees per tile. And then identify employees that are eligible to participate in a mentorship program for the new hires that will replace the people retiring. 

## Results

Provide a bullet list with 4 major points from the 2 analysis deliverables. Use images to support
Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program

- Before taking filtering for unique titles by taking the COUNT of emp_no from the retirement_titles table, it looks like there are a total of 133,776 employees
  that are going to retire. Afer using DISTINCT ON and creating the unique_titles table and taking the COUNT of emp_no there are a total of 72,458 people that 
  are actually going to retire. 

- The title with the greatest amount of people retiring is Senior Engineer (25,916 people), followed by Senior Staff (24,926 people), and Engineer (9,285 people
  with the third most number of people retiring.
  
  ![](/Resources/retiring_titles.png)

- By taking the COUNT of emp_no from the mentorship_eligibility table, we learn that there are only 1,549 people that are eligible to be mentors.

  ![](/Resources/mentorship_count.png)
  


## Summary

Provide high level responses to the follwing questions. THen provide 2 aditional queries or tables that may provide more insight into the upcoming retirement.

How many roles will need to be filled as people begin to retire?

Are there enough qualified, retirement ready employees in the departments to mentor the next generation of PH employees?
