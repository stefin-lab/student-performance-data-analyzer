# ============================================================
# PROJECT: STUDENT PERFORMANCE DATA ANALYZER
# LANGUAGE: R PROGRAMMING
# TOPIC: DATA FRAME
# ============================================================

cat("\014")

# STEP 1: Read CSV Data
file_path <- "data/students.csv"

if (!file.exists(file_path)) {
  stop("Error: students.csv not found inside the data folder.")
}

students <- read.csv(file_path, stringsAsFactors = FALSE)
students <- as.data.frame(students)

cat("\n")
cat("====================================================\n")
cat("       STUDENT PERFORMANCE DATA ANALYZER\n")
cat("====================================================\n")

# STEP 2: Display Original Data Frame
cat("\n1. ORIGINAL STUDENT DATA FRAME\n")
cat("----------------------------------------------------\n")
print(students)

# STEP 3: Display Data Frame Information
cat("\n2. DATA FRAME INFORMATION\n")
cat("----------------------------------------------------\n")
cat("Total Students:", nrow(students), "\n")
cat("Total Columns:", ncol(students), "\n")
cat("\nColumn Names:\n")
print(names(students))

# STEP 4: Create a Grade Frequency Table
cat("\n3. GRADE FREQUENCY TABLE\n")
cat("----------------------------------------------------\n")
Categories <- table(students$Grade, dnn = "Categories")
print(Categories)

# STEP 5: Convert Grade Column into a Factor
cat("\n4. GRADE FACTOR CONVERSION\n")
cat("----------------------------------------------------\n")
students$Grade <- factor(students$Grade, levels = c("A", "B", "C", "D", "F"))
print(students)

cat("\nGrade Summary:\n")
print(summary(students$Grade))

# STEP 6: Mathematical Operations
cat("\n5. MATHEMATICAL OPERATIONS ON MARKS\n")
cat("----------------------------------------------------\n")
students$LogMarks <- log(students$Marks)
students$SquareRootMarks <- sqrt(students$Marks)
students$MarksCeiling <- ceiling(students$Marks)
students$MarksFloor <- floor(students$Marks)
students$RoundedMarks <- round(students$Marks, 1)

cat("\nUpdated Student Data Frame:\n")
print(students)

# STEP 7: Student Performance Summary
cat("\n6. STUDENT PERFORMANCE SUMMARY\n")
cat("----------------------------------------------------\n")
cat("Average Marks:", round(mean(students$Marks), 2), "\n")
cat("Highest Marks:", max(students$Marks), "\n")
cat("Lowest Marks:", min(students$Marks), "\n")
cat("Students Scoring 80 or Above:", sum(students$Marks >= 80), "\n")

# STEP 8: Delete the Second Row
cat("\n7. DATA FRAME AFTER DELETING SECOND ROW\n")
cat("----------------------------------------------------\n")
modified_data <- students[-2, ]
print(modified_data)

# STEP 9: Delete the Age Column
cat("\n8. DATA FRAME AFTER DELETING AGE COLUMN\n")
cat("----------------------------------------------------\n")
final_data <- modified_data[, !(names(modified_data) %in% "Age"), drop = FALSE]
print(final_data)

# STEP 10: Save Analyzed Data
output_path <- "data/analyzed_students.csv"
write.csv(students, output_path, row.names = FALSE)

cat("\n====================================================\n")
cat("       ANALYSIS COMPLETED SUCCESSFULLY\n")
cat("====================================================\n")
cat("\nAnalyzed data saved successfully to:\n")
cat(output_path, "\n")
