#If...elseif....else statement
#Example
a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal") 
} else {
  print("a is greater than b")
}
#The If...Else statement
a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}
#The if....elseif.....else statement
age <- 18
if (age > 18) {
  print("you can vote")
} else if (age == 18) {
  print("your age is less than 18, therefore you cannot vote")
} else {
  print("your age is less than 18, therefore you cannot vote")
}
# Nested If Statements
#Example
x <- 41
if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}
#Further examples on Nested If Statements
x <- 10
if (x > 3) {
  print("Above 3")
  if (x > 5) {
    print("above 5")
  } else {
    print("not above 10") 
  }
} else {
  print("below 10")
}
# AND: The & symbol (AND) is a logical operator, and is used to combine conditional statements
# Test if a is greater than b, AND if c is greater than a 
a <- 200
b <- 33
c <- 500
if (a > b & c > a) {
  print("both conditions are true")
}

#The OR : The | symbol (OR) is a logical operator, and is used to combine conditional statements:
# Example: you can test if a is greater than b, or if c is greater than a.
a <- 200
b <- 33
c <- 500
if (a > b | a > c) {
  print("at least, one of the conditions is true")
}
# If...else-if....else ladder
score <- 75
if (score >= 90) {
  print("Grade A")
} else if (score >= 70) {
  print("Grade B")
} else if (score >= 50) {
  print("Grade C")
} else {
  print("Fail")
}
#Another Example
income <- 500000
credit_score <- 720
if (income > 400000 & credit_score > 700) {
  print("loan approved")
} else {
  print("loan rejected")
}
#Practical Example - Even or Odd checker
number <- 7
if (number %% 2 == 0) {
  print("Even number")
} else {
  print("Odd number")
}
number <- 20
if (number %% 2 == 0) {
  print("Even number")
} else {
  print("Odd number")
}