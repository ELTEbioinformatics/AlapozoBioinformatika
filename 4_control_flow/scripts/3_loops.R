# Cycles
for (number in 1:5) {
  print(i^2)
}

for (number in 1:5) {
  if (number %% 2==0) {print(number ^ 2)}
  else {print(number)}
}  

# Sort
vector <- 1:100
div.2 <- NULL
div.3 <- NULL
div.5 <- NULL
others <- NULL

for (x in vector){
  if (x%%2==0) {
    div.2 <- c(div.2, x)
  } else if (x%%3==0) {
    div.3 <- c(div.3, x)
  } else if(x%%5==0) {
    div.5 <- c(div.5, x)
  } else {
    others <- c(others, x)
  }
}

div.2
div.3
div.5
others

# Proper sort
vector <- 1:100
div.2 <- NULL
div.3 <- NULL
div.5 <- NULL
others <- NULL

for (x in vector){
  if (x%%2==0) {
    div.2 <- c(div.2, x)
  } 
  if (x%%3==0) {
    div.3 <- c(div.3, x)
  } 
  if(x%%5==0) {
    div.5 <- c(div.5, x)
  } else {
    others <- c(others, x)
  }
}

div.2
div.3
div.5
others

# Hot damn! It has turned out we need to process a hell lot of files! Lets do it!
# concatenate strings
hw.vector <- c('Hello', 'world!')
hw.var <- paste(hw.vector, collapse=" ")
hw.var <- paste(hw.var, 1, sep=" ")

for (i in 1:100){
  file.name <- paste('4/experiments/experiment', '.csv', sep=as.character(i))
  exp <- read.csv(file.name)
  
  life.span <- exp$died - exp$born
  exp <- cbind(exp, life.span)
  
  out.file <- paste('4/results/result', '.csv', sep=as.character(i))
  write.table(exp, out.file, quote = F, sep=',', row.names = F)
  
  summary.file <- paste('4/results/summary', '.csv', sep=as.character(i))
  write.table(summary(exp), summary.file, quote = F, sep=',', row.names = F)
  
  means.list <- list(life.span=mean(exp$life.span), weight=mean(exp$weight))
  means.file <- paste('4/results/means', '.csv', sep=as.character(i))
  write.table(means.list, means.file, quote = F, sep=',', row.names = F)
}

rm(list=ls())
# Avoid loops if possible