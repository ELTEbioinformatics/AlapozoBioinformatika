source("utils.R")
for(i in 1:100){
  my.filename <- get.filename.with.path(people, "C:/Prog", "result", num=i)
  write.csv(people, my.filename)
}