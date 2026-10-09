# Student Performance Data Analyzer Using R

## 1. Project Title
Student Performance Data Analyzer Using R Programming

## 2. Aim
To develop an R program that reads student information from a CSV file, creates a data frame, generates grade frequency tables, converts grades into factors, performs mathematical operations on marks, and modifies the dataset.

## 3. Objectives
- Read student records from a CSV file.
- Create and display a data frame.
- Display the number of students and columns.
- Generate a frequency table for student grades.
- Convert the Grade column into a factor.
- Display a summary of grades.
- Perform mathematical operations on marks.
- Calculate average, highest, and lowest marks.
- Delete a selected row from the data frame.
- Remove a selected column.
- Save the analyzed data into a CSV file.

## 4. Technologies Used
- Programming Language: R
- Data Format: CSV
- Environment: RStudio or R Console
- Libraries: Base R functions

## 5. R Functions Used
`read.csv()`, `as.data.frame()`, `table()`, `factor()`, `summary()`, `log()`, `sqrt()`, `ceiling()`, `floor()`, `round()`, `mean()`, `max()`, `min()`, `nrow()`, `ncol()`, and `write.csv()`.

## 6. Dataset
The project uses `data/students.csv` with these columns:
- Name
- Age
- Marks
- Grade
- Department

The included student records are sample data.

## 7. Algorithm
1. Start the program.
2. Read the `students.csv` file.
3. Convert the data into a data frame.
4. Display the original student records.
5. Display the number of rows, columns, and column names.
6. Create a frequency table for grades.
7. Convert the Grade column into a factor.
8. Display the grade summary.
9. Calculate logarithm and square root of marks.
10. Calculate ceiling, floor, and rounded marks.
11. Calculate average, highest, and lowest marks.
12. Delete the second row.
13. Delete the Age column.
14. Save the analyzed dataset as `analyzed_students.csv`.
15. Stop the program.

## 8. Folder Structure
```text
Student_Performance_Analyzer/
├── app.R
├── README.md
└── data/
    └── students.csv
```

## 9. Execution Instructions
1. Install R on your computer.
2. Open this project folder in RStudio.
3. Set the working directory to the `Student_Performance_Analyzer` folder.
4. Run the following command:

```r
source("app.R")
```

No external R packages are required.

## 10. Expected Output
The program displays the original student data frame, data frame information, grade frequency table, grade factor summary, mathematical operations on marks, performance statistics, and data frames after deleting a row and a column.

It also creates `data/analyzed_students.csv`.

## 11. Result
Thus, the Student Performance Data Analyzer was developed using R programming. The project demonstrates CSV handling, data frames, frequency tables, factors, mathematical operations, and row and column deletion.
