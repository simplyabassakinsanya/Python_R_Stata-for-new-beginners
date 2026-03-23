marks <- c(45, 67, 89, 32, 76)
result <- ifelse(marks >= 50, "Pass", "Fail")
        # if else(condition, value_if_true, value_if_false)
result
#Working with Data Frames
students <- data.frame(
  Name = c("John", "Mary", "Paul", "Grace"),
  Score = c(55, 82, 47, 91)
)
students$Grade <- ifelse(students$Score >= 50, "Pass", "Fail")
students
#Not OPERATOR
temperature <- 10
if (!(temperature > 25)) {
  print("Not Hot")
}