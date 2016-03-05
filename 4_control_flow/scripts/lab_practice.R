T & T
F & T
T & F
F & F

T | T
F | T
T | F
F | F

5 > 4
5 < 4
4 == 4
4 != 5
4 != 4

4 >= 5
4 >= 4
5 <= 4
5 <= 5

vector <- c('apple', 'banana')
'apple' %in% vector
'cherry' %in% vector
!('cherry' %in% vector)

10 %in% c(1,2,5,10)

c('apple','eggplant') %in% c('apple','banana','cherry','date')

l1 <- c(T,T,T,F,F,F)
l2 <- c(T,F,T,F,T,F)

l1 & l2
l1 | l2

l1 && l2
l1 || l2

!l1
l1 <- NULL
is.na(l1)

x <- 5
if(x > 4) print('x is greater than 4')
if(x < 4) print('x is less than 4')
if(x == 4) print('x eqauls 4')

x <- c(1,5,2,10,0,2)
if(0 %in% x) print ('do it allover again')
if(c(1,0) %in% x) print('do it all over again')

x <- 4

if(x %% 2 == 0) {
  print('x is even')
}
if(x %% 3 == 0){
  print('x is divisible by 3')
}
if(x %% 5 == 0){
  print('x is divisible by 5')
}else{
  print('x is not divisible by 2, 3 or 5')
}

test.vector <- 1:100
div.2 <- NULL
div.3 <- NULL
div.5 <- NULL
others <- NULL
for(number in test.vector){
  if(number %% 2 == 0) {
    div.2 <- c(div.2, number)
  }
  if(number %% 3 == 0){
    div.3 <- c(div.3, number)
  }
  if(number %% 5 == 0){
    div.5 <- c(div.5, number)
  }else if(!(number %% 2 == 0) && !(number %% 3 == 0) && !(number %% 5 == 0)){
    others <- c(others, number)
  }
}


container <- NULL
for(number in test.vector){
  if(number == 50) break
  
  container <- c(container, number)
}


for(i in 1:length(experiment[,1])){
  print(experiment$treatment[i] == experiment$diet[i])
}


experiment[c(F,T),c(F,T)]

experiment$treatment == 'control'

query.vector <- (experiment$treatment == experiment$diet)
experiment[query.vector,]

c <- 1
container <- NULL
number <- 0
while(number != 50){
  number <- test.vector[c]
  container <- c(container, number)
  c <- c + 1  
}
