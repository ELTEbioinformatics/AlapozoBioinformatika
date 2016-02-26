# Same as before, the file needs to be read
# Change the path according to your needs.
people <- read.table("C:/Users/nazgul/Desktop/toy.csv", header = T, sep=',')
height <- people$height
height.sum <- sum(height)
height.mean <- mean(height)
height.median <- median(height)

# Here is a good use of a list. When we want to group different variables
# and even name them, list comes to our aid.
stats <- list(median=height.median, mean=height.mean, sum= height.sum)

# This is the way we write files. See the handout for further details.
# For even further details see "?write.table"
write.table(stats, "processed.csv", quote=F, sep=";", row.names=F)