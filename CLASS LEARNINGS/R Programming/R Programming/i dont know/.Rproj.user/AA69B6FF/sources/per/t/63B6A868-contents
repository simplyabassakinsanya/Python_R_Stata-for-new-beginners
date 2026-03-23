# Colon Operator
#simple increasing sequence
x <- 1:5
x
x <- 5:1
x
# It also creates integers sequences. If you want decimal or different steps, you must use seq() instead. 
# for example
seq(1, 5, by = 0.5)
# We also use it in loops.
for(i in 1:4){
  print(i)
}
#step 1: 1:4 create a sequence: 1 2 3 4
#step 2: for(i in 1:4): This means: for each number in the sequence 1, 2, 3, 4...assign it to i and run the code inside the braces."
#step 3: print(i): Each time the loop runs, it prints the current value of i

# Creating the index positions
letters[1:3]
letters[26:24]
letters[1:30]
#What this means: letters is a built-in R object: "a" "b" "c", it contains all lowercase alphabets.
#1:3 creates the index positions 1 2 3 letters[1:3] means "give me the letters in positions 1, 2, and 3.
#%in% Operator (Membership Test). Basic membership
x <- c(1,2,3,4)
2 %in% x
#Multiple values
c(2,5) %in% c(1,2,3,4)
#With Characters
names <- c("john", "mary", "peter")
"mary" %in% names
#Filtering Data
x <- c(10, 20, 30, 40)
x[x %in% c(20, 40)]
#Explanations.
#step 1: create the vector
#step 2: understand this part x %in% c(20,40): it checks each value in x (FALSE TRUE FALSE TRUE). so it returns FALSE TRUE FALSE TRUE
#step 3: subsetting x[FALSE TRUE FALSE TRUE]. R keeps only values where condition is TRUE. so the output is: 20, 40
cities <- c("lagos", "ogun", "osun")
"lagos" %in% cities
#%*% Operator: used for proper linear algebra multiplication
#for example: 2x2 matrices
a <- matrix(c(1,2,3,4), nrow=2)
b <- matrix(c(5,6,7,8), nrow=2)
a %*% b
#multiply rows of A by columns of B
#(1*5) + (3*6) = 5 + 18 = 23 (Row1 *Col1)
a <- matrix(c(1,2,3,4), nrow=2, byrow=2)
b <- matrix(c(5,6,7,8), nrow=2, byrow=2)
a %*% b
# 1 2        #19 22
# 3 4        #43 50

# 5 6
# 7 8
#Example 2: Matrix * Vector
you <- matrix(c(1,2,3,4), nrow=2)
them <- c(1,2)
you %*% them
#Example: 3*3 matrix multiplication
A <- matrix(1:9, nrow=3) 
B <- matrix(9:1, nrow=3)
A %*% B