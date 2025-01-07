# Zaxoil_Project

## Project Overview
This data cleaning and analysis project aims to explore key insights about employee distribution, staffing and salary trends in order to we aim to uncover patterns in hiring, salary variations, tenure, and growth—helping guide strategic decision-making for the company’s future.

### Data Sources
The primary dataset used for this analysis was obtained from the database, "zaxoil.db", containing detailed information about each employee in the company.

### Tools
- SQL- Data cleaning and analysis

### Data Cleaning/Preparation
In the initial data preparation phase, I performed the following tasks:

1. Data inspection.
2. Handling missing values.
3. Data cleaning and formatting.
4. Exploratory Data Analysis

### Exploratory Data Analysis
EDA involved exploring the data to answer key questions, such as:

1. What is the distribution of employees across departments?
2. How does salary vary by position, department, and location?
3. What are the trends in the hiring dates based on departments or positions?
4. How does the hiring timeline reflect the company's growth and staffing needs?
5. What is the average tenure of employees across different departments or positions?

### Data Analysis
Here are some of the codes I worked with in abid to answer the key questions from the EDA:
```SQL
with cte_Staff as
(select count(department) as dept_count, department
from zaxoil.staff
group by department
)
select (dept_count/28)*100 as percent_dept, department 
from cte_Staff
group by department
order by percent_dept desc;
```

``` SQL
select position, salary, avg(salary)OVER (PARTITION BY position) as avg_salary  
from zaxoil.staff
order by avg_salary desc;
```

``` SQL
select position, department, location, substring(date_hired,1,4) as year_hired
from zaxoil.staff
order by year_hired;
```

### Results and Findings
