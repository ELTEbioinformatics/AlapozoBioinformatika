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


l1 <- c(TRUE,TRUE,FALSE,TRUE,FALSE)
l2 <- c(FALSE,TRUE,FALSE,TRUE,TRUE)

l1 & l2
l1 | l2
l1 && l2
l1 || l2

c(T,T) && c(T,F)
c(T,F) && c(T,F)
c(F,T) && c(T,T)

xor(l1,l2)
l1 <- c(TRUE,TRUE,FALSE,TRUE,FALSE)
!l1

# Conditionals
x <- 4
if (x>3) print("x is greater than 3")
if (x<3) print("x is less than 3")
if (x<3) print("x<3") else print("x>=3")
if (x>=4) print("x>=3") else print("x<4")
if (x==4) print("x equals 4")

x <- c('apple', 'banana', 'control', 'treated')

if ('apple' %in% x) print("it's there!")
x <- c('apple', 'banana', 'treated')
if (c('apple', 'control') %in% x) print("it's there!") # Warning!
else print('wtf?');

if('apple' %in% x && 'control' %in% x) print('both apple and control ar in x')
if('apple' %in% x || 'control' %in% x) print('either apple or control ar in x')

if (!is.na(x) && x>3) print("x is defined and greater than 3")

# NA != NULL!= 0

rm(list=ls())
if (x%%2==0) {
  print ("x is divisible by 2")
}else if(x%%3==0){
  print("x is divisible by 3")
} else if(x%%3==0) {
  print("x is divisible by 5")
} else {
  print("where did this come from")
}
print("so we shall continue")

