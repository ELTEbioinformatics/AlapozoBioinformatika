# Same as before, the file needs to be read
# Change the path according to your needs.
my.data <- read.table("C:/Users/nazgul/Desktop/toy.csv", header = T, sep=',')
age <- my.data$age
my.sum <- sum(age)
my.mean <- mean(age)
my.median <- median(age)

# Here is a good use of a list. When we want to group different variables
# and even name them, list comes to our aid.
my.list <- list(median=my.median, mean=my.mean, sum= my.sum)

# This is the way we write files. See the handout for further details.
# For even further details see "?write.table"
write.table(my.list, "processed.csv", quote=F, sep=";", row.names=F)