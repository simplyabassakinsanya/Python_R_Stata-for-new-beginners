## THE || (DOUBLE PIPE) OPERATOR
## Trying to calculate simple logical values
TRUE || TRUE
TRUE || FALSE
FALSE || FALSE
# Using Vector
x <- c(FALSE, TRUE)
y <- c(TRUE, FALSE)
x[1] || y[1]
## Inside an if statement.
name <- "John"
city <- "Lagos"

if (name == "Peter" || city == "Lagos"){
  print("conditions met")
}
# summary of the above code is
# FALSE || TRUE => TRUE
# Short-Circuit : The moment the first value is TRUE, R stops reading immediately and will not read the second condition. This is called the short-circuit condition.
TRUE || print("Hello")
x <- 5
if  (x < 3 || x > 4){
  print("valid")
}
> x <- 20
print(x)
x <- 20
if (x < 40 || x > 40 || x > 50 || x > 60){
  print("APC")
}
## Strings with || (Control Logic)
fruit <- "apple"
if (fruit == "banana" || fruit == "apple"){
  print("sure_guy")
}