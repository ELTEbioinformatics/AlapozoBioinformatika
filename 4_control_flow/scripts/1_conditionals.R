# Logical operators
T & F
T & T
F & F

T | F
T | T
F | F

5 > 4
5 >= 4
5 < 4

'apple' %in% c('apple', 'banana')
10 %in% c(1,5,25)


l1 <- c(TRUE,TRUE,TRUE,FALSE,FALSE,FALSE)
l2 <- c(FALSE,TRUE,FALSE,TRUE,FALSE, TRUE)

l1 & l2
l1 | l2
l1 && l2
l1 || l2

!l1

# Conditionals
x <- 4
if (x>3) print("x is greater than 3")
if (x<3) print("x is less than 3")
if (x<3) print("x<3") else print("x>=3")
if (x>=4) print("x>=4") else print("x<4")
if (x==4) print("x equals 4")

x <- c('apple', 'banana', 'cherry', 'date')

if ('apple' %in% x) print("it's there!")

x <- c('apple', 'banana', 'cherry')


if('apple' %in% x && 'date' %in% x) print('both apple and date ar in x')
if('apple' %in% x || 'date' %in% x) print('either apple or date ar in x')
if(!('date' %in% x)) print('date is not in x')

if (!is.null(x) && x>3) print("x is defined and greater than 3")

# NA != NULL!= 0

if (c('apple', 'cherry') %in% x) {
  print("it's there!")
} # Warning!

rm(list=ls())
x <- 2
if (x%%2==0) {
  print ("x is divisible by 2")
}else if(x%%3==0){
  print("x is divisible by 3")
} else if(x%%5==0) {
  print("x is divisible by 5")
} else {
  print("where did this come from")
}
print("so we shall continue")

setwd("./4_control_flow/scripts")
experiment <- read.table('experiment.csv', quote="", sep=",", comment.char="", header=T)

experiment[,c(F,T)]

experiment[,c(F,T,F,T,F,T)]

experiment[, c(T,T,F)]

experiment[,c(T,T,F,T,T,F)]

experiment[c(F,T), c(F,T)]

experiment$treatment == "control"
  
filter.vector <- experiment$treatment == "control"
experiment[filter.vector,]

experiment[experiment$treatment == "control",]

  
filter.vector <- experiment$treatment == "control" & experiment$diet == "control"
experiment[filter.vector,]
experiment[experiment$treatment == "control" & experiment$diet == "control",]
