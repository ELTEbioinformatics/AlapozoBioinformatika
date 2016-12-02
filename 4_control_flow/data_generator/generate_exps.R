for(i in 1:100){
  #the number of original rows
  original.row.num <- 267
  # create random new integers that will serve as ids
  id.nums <- as.integer(runif(original.row.num, 90000, 100000))
  # this function is used to make the look lik IDs
  generate.ids <- function(number) return(paste('#', number, sep="", collapse=""))
  # we need to use the function on every item in IDs and overwrite the original with them
  experiment$Specimen.ID  <- sapply(id.nums, FUN=generate.ids)
  
  # create random born numbers and overwrite the original
  experiment$born <- as.integer(runif(original.row.num, 0, 3*365))
  
  # create died numbers creator function
  generate.day.of.death  <- function(number) return(as.integer(number + 1150 + runif(1,0,100)))
  experiment$died <- sapply(experiment$born, generate.day.of.death)
  
  # create control and treatment groups, the dummy parameter is a dirty hack!
  generate.control.and.treated <- function(dummy){
    if(rbinom(1,1,0.5)) return('treated')
    else return('control')
  }
  
  # use the function
  experiment$treatment <- sapply(experiment$treatment, generate.control.and.treated)
  experiment$diet <- sapply(experiment$diet, generate.control.and.treated)
  
  experiment$weight <- as.integer(runif(original.row.num, 15, 25))
  

  filename <- paste('4/experiments/experiment', '.csv', sep=as.character(i))
  write.table(experiment, filename, row.names=F, quote=F, sep=',')
}