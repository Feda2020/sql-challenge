# sql-challenge

## Table of contents

* [Description](#Description)
* [Data Modeling](#Data-Modeling)
* [Data Modeling Image](#Data-Modeling-Image)
* [Data Engineering](#Data-Engineering)
* [Data Analysis](#Data-Analysis)
* [Questions](#Questions)
* [References](#References)

## Description

As a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Data Modeling

In this part I used QuickDBD to sketch an Entity Relationship Diagram of the tables. The relationship was as follows: 

| Tables Name 1   |  Connected row from   | Relationship    | Connected row to   | Tables Names 2    |
|-----------------|-----------------------|----------------|--------------------|------------------|
| department | dept_no PK | one to many | dept_no FK | dept_emp |
| department | dept_no PK | one to many | dept_no FK | dept_managers |
| employees| emp_no PK | one to many | emp_no FK | dept_emp |
| employees| emp_no PK | one to many | emp_no FK | dept_managers |
| employees| emp_no PK | one to many | emp_no FK | salaries |
| employees | emp_title FK | one to many | title_id PK  | titles |


## Data Modeling Image

![data modeling](/EmployeeSQL/data/employee_ERD_2.jpg)

## Data Engineering

Using the table above, exporting the sql code from QuickDBD and using it in PostgreSQL to create the tables, keeping in mind the following: 
* Specify the data types, primary keys, foreign keys, and other constraints.
* For the primary keys, verify that the column is unique.
* Create the tables in the correct order to handle the foreign keys.
* Import each CSV file into its corresponding SQL table.

## Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.*
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Questions

In case of any additional questions please visit my GitHub link: [Feda2020](https://github.com/Feda2020) 

## References
 
 * QuickDBD (https://app.quickdatabasediagrams.com/#/)