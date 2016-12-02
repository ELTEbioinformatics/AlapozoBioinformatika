# This is a comment line.
# Every line starting with a "#" will be omitted, when the script is
# executed.
# The next line is the way we read files to R. For further details see
# the handout or type "?read.table" to the console.
# Change the path to toy.csv to the folder it actually resides on your computer.
people <- read.table("~/Prog/Education/AlapozoBioinformatika/3_file_handling/toy.csv", header = T, sep=',', quote = "")

# In order to see the data, while the script is running, we
# need to use the print function
print(sum(people$height))
print(median(people$height))
print(mean(people$height))
# The previous two functions were piped into print. The next line
# produces the same output, but it is separated to two function calls.
height.mean <- mean(people$height)
print(height.mean)