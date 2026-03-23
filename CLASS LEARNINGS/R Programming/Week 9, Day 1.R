10 + 5
a <- 3
a
a <- 3
print(a)
a <<- 10
print(a)
a <- 20
print(a)
x <- 10
my_function <- function() {
  x <<- 20
}
my_function()
x
x <- c(TRUE, FALSE)
y <- c(TRUE, FALSE)
x & y
# Logical Operators.
x <- c(TRUE, FALSE)
y <- c(TRUE, FALSE)
x & y
x <- c(TRUE, FALSE)
y <- c(TRUE, TRUE)
x & y
x <- c("Orange", "Apple")
y <- c("Cucumber", "Orange")
x & y
# & - element-wise logical AND operator. Returns TRUE if both elements are TRUE
x <- c("apple", "banana", "mango")
y <- c("apple", "grape", "mango")
x == y
(x==y) & (x== "mango")
names <- c("John", "Mary", "James", "Peter")
(names == "John") & (names != "Peter")
# The && Operator
TRUE && FALSE
age <- 25
income <- 40000

if (age > 18 && income > 30000) {
  print("Approved")
}
x <- 10
if (x > 5 && x < 20) {
  print("Valid range")
}
age <- 25
income <- 10000
if (age > 18 && income > 30000) {
  print("Approved")
}
# The | (PIPE) OPERATOR
sales <- c(100, 250, 400, 150)
sales < 150 | sales > 300
names <- c("John", "Mary", "Peter", "Jane")
(names == "John") | (names == "Jane")
data <- data.frame(
  name = c("John", "Mary", "Peter", "Jane"),
  city = c("Lagos", "Abuja", "Lagos", "Kano")
)
data$name == "John" | data$city == "Lagos"