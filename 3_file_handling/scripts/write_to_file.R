# Same as before, the file needs to be read
# Change the path according to your needs.
people <- read.table("C:/Users/nazgul/Desktop/toy.csv", header = T, sep=',')
age <- people$age
age.sum <- sum(age)
age.mean <- mean(age)
age.median <- median(age)

# Here is a good use of a list. When we want to group different variables
# and even name them, list comes to our aid.
stats <- list(median=age.median, mean=age.mean, sum= age.sum)

# This is the way we write files. See the handout for further details.
# For even further details see "?write.table"
write.table(stats, "processed.csv", quote=F, sep=";", row.names=F)