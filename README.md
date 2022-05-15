# Pewlett-Hackard-Analysis

## Overview
The objective is to determine the number of retiring employess per title and identify employees who are eligible to participate in a mentorship program. The retiring employees was based on employees whose year of birth is between 1952 and 1955 and who are still active in the company. The employees with mentorship eligibility were defined by active employees whose year of birth is 1965. 

## Results
- The total number of employees eligible for retirement is 72,458

![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/total_unique_titles.png "Sum of Total Unique Titles")

- Senior Engineers and Senior Staff have the largest number of employees who are eligible for retirement and Managers have the lowest number of retiring with only two employees.

![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/number_emp_by_title_retiring.png "Count of Retiring Employees by Title")

- Due to the high number of Senior Engineers and Senior Staff, these departments should be of high priority for the mentorship program. 
- There are 1,549 eligible employees for mentorship program. Senior Engineers only has 169 and Senior Staff 569, since these numbers are by far lower than elible retirement employees, expanding the birth year for mentorship program should be evaluated. 

![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/total_eligible_mentorship.png "Total of mentorhsip by title")



## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- The total number of roles that need to be filled are 72,458 out of 240,124. With 30% of the employees eligible for retirement the mentorship program should be well planned and executed promptly to avoid knowledge loss and possible impacts to the HP processes. 
    The query to obtain the total number of eligible retiries by title and the total sum is:
    
![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/total_unique_titles.png "Sum of Total Unique Titles")

    The query to get the number of current employees is:
    
![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/total_employees.png "Total active employees")

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- There are more than enough qualified retirement-ready employees to mentor the next generation. The critial aspect is that there are not enough ready to mentor employees. Expanding the birth year of mentorship eligibility might expand the pool. Also, providing a motivational incentive to the retirement-ready employees may help to lengthen the "silver tsunami". Additionally there are two Managers retirement-ready and zero with mentorship eligibility.

![Alt text](https://github.com/Jimena-QM/Pewlett-Hackard-Analysis/blob/main/Resources/ret_mentor_ready_by_title_total.png "Retirement Ready vs Mentor Ready")
