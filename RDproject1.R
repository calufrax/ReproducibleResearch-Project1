activity<-read.csv("activity.csv")

data1<-activity[!is.na(activity$steps),]


dataTotal<-by(activity$steps,activity$date,sum,na.rm=TRUE)
dataMean<-by(activity$steps,activity$date,mean,na.rm=TRUE)
dataMedian<-by(activity$steps,activity$date,median,na.rm=TRUE)


hist(dataTotal,xlab="# of steps/day",main="Histogram of steps/day")

