# concatenate strings
hw.vector <- c('Hello', 'world!')
hw.var <- paste(hw.vector, collapse=" ")
hw.var <- paste(hw.var, as.character(1), sep=" ")

# Hot damn! It has turned out we need to process a hell lot of files! Lets do it!
# Cycles
for (i in 1:5) {
  print(i^2)
}
for (i in 1:5) {
  if (i%%2==0) {print(i^2)}
  else {print(i)}
}  

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