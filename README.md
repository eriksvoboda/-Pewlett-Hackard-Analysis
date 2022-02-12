# Pewlett Hackard Analysis

## Overview

  The purpose of this project is to determine the number of retiring employees per tile. And then identify employees that are eligible to participate in a mentorship program for the new hires that will replace the people retiring. This analysis will help identify potential needs for training new employees that will be required as the mass retirement starts to begin.

## Results

- Before taking filtering for unique titles by taking the COUNT of emp_no from the retirement_titles table, it looks like there are a total of 133,776 employees
  that are going to retire. Afer using DISTINCT ON and creating the unique_titles table and taking the COUNT of emp_no there are a total of 72,458 people that 
  are actually going to retire. 

- The title with the greatest amount of people retiring is Senior Engineer (25,916 people), followed by Senior Staff (24,926 people), and Engineer (9,285 people)
  with the third most number of people retiring.
  
  ![](/Resources/retiring_titles.png)

- By taking the COUNT of emp_no from the mentorship_eligibility table, we learn that there are only 1,549 people that are eligible to be mentors.

  ![](/Resources/mentorship_count.png)
  
- The three top titles that are eligible to be mentors are Senior Staff, Engineer, and Senior Engineer.

  ![](/Resources/mentor_titles_count.png)
  


## Summary

Provide high level responses to the follwing questions. THen provide 2 aditional queries or tables that may provide more insight into the upcoming retirement.

72,458 roles will need to be filled as people begin to retire. The majority of which are Senior Engineers and Senior Staff as can be seen above. There are not enough qualified, retirment ready employees in the departments to mentor the next generation of employees. As there are only 1,549 people that are eligible to be mentors. With the existing eligible mentors, mentors will need to have multiple trainees. Not only are there not enough total eligible mentors but the eligible mentors do not align with the roles that are retiring. So there's a disproportionate amount of eligible mentors to employees retiring. 

![](/Resources/mentor_titles_count.png)

Another queury that would provide more insight would be to see how many people are retiring by department. We can see that there's a substantial number of male employees that are about to retire compared the number of female employees. This could help determine new hiring practices for new employees, such as recruiting more female employees.

![](/Resources/ret_gender.png)

Additionally another qurery that provides more insight is by taking the number of employees that are due to retire by department. Doing this we can see that the Development, Production, and Sales departments are the top three departments that are going to be impacted most by the upcoming retirement wave. This will help the company understand which departments should take priority for hiring new employees.

![](/Resources/retirees_by_dept.png)




