# Let's read our file now! Don't use the source Luke,
# use the IDE!

experiment <- read.csv("D:/Google Drive/Education/basic bioinfo/3/experiment.csv")
diet.treated <- experiment[experiment$diet == 'treated',]
treatment.treated <- experiment[experiment$treatment == 'treated',]
diet.and.treatment.treated <- experiment[experiment$diet == 'treated' & 
                                           experiment$treatment == 'treated',]