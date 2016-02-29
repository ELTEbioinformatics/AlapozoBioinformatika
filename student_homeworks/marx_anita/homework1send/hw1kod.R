setwd('homework1send')

egerek<-read.table('experiment.csv',sep=',',quote='',header=T,comment.char='')
lifespan<-egerek[,3]-egerek[,2]
ujegerek<-cbind(egerek,lifespan)
write.table(ujegerek,'lifespan.csv',sep=',',row.names=F)

meanweight<-mean(ujegerek[,6])
meanlifespan<-mean(ujegerek[,7])
atlagok<-list(mean.weight=meanweight,mean.lifespan=meanlifespan)
write.table(atlagok,'means.csv',sep=',',row.names=F)

summary<-summary(ujegerek)
write.table(summary,'summary.csv',sep=',',row.names=F)
str(ujegerek)
#itt nem tudom bevinni valtozoba az str fuggveny eredmenyet, igy probaltam:
#structure<-str(ujegerek)
#write.table(structure,'str.csv',sep=',',row.names=F)