read.table('experiment.csv', sep=',', header=T, comment.char = '')
mice<-read.table('experiment.csv', sep=',', header=T, comment.char = '')
born<- mice[,2]
died<- mice[,3]
lifespan<- died-born
lifespan
mice<- cbind(mice, lifespan)
write.table(mice, 'experiment2.csv', sep=',', row.names = F, quote=F)
atlagelet <- mean(mice[,7])
atlagsuly <- mean(mice[,6])
atlagok<- list(atlagsuly, atlagelet)
write.table(atlagok, "atlagok.csv", sep=",", row.names = F, quote=F)
str(mice)
summary(mice)
write.table(str(mice), "structure.csv", sep= ",", row.names= F, quote=F)
write.table(summary(mice), "osszegzes.csv", sep=",", row.names= F, quote=F)
#innen jonnek a plusz feladatok
# elso plusz feladat
attach(mice)
trtddietw <- mean(weight[diet=='treated'])
ctrldietw <- mean(weight[diet=="control"])
trtddieta <- mean(lifespan[diet=="treated"])
ctrldieta <- mean(lifespan[diet=="control"])
#masodik plusz feladat
trtd2w <- mean(weight[diet=='treated' & treatment=='treated'])
trtd2a <- mean(lifespan[diet=='treated' & treatment=='treated'])
trtdctrlw <- mean(weight[diet=='treated' & treatment=='control'])
trtdctrla <- mean(lifespan[diet=='treated' & treatment=='control'])
ctrltrtdw <- mean(weight[diet=='control' & treatment=='treated'])
ctrltrtda <- mean(lifespan[diet=='control' & treatment=='treated'])
ctrl2w <- mean(weight[diet=='control' & treatment=='control'])
ctrl2a <- mean(lifespan[diet=='control' & treatment=='control'])
