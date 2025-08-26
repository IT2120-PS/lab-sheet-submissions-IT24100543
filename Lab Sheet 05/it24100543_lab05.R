setwd("C:\\Users\\it24100543\\Desktop\\IT24100543_lab05")
##importing dataset
DeliveryTimes<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
##attach to call by their names
attach(data)
histogram<-hist(DeliveryTime,main="Histogram for delivery time in minutes",breaks=seq(20,70,length=8), right=FALSE)

##assign class limits of ft
breaks<-round(histogram$breaks)
#assign class frequencies
freq<-histogram$counts
##assign mid points to the class
mids<-histogram$mids

##for frequency distribution
classes<-c()

#for loop to assign classes of frequency distribuution
for(i in 1: length(breaks)-1){
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],")")
}
##merge columns with same length
cbind(classes=classes, Frequency= freq)

##draw frequency polygon
lines(mids,freq)
plot(mids,freq, type='1',main="Frequency polygon for shareholders",xlab="Shareholders",ylab="Frequency",ylim=c(0,max(freq)))

##cumilative frequencies
cum.freq<-cumsum(freq)

##creating null variable
new<-c()

##store cumulative frequencies to get ogive
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

#drawing acumulative frequency polygon
plot(breaks,new,type='l',main="Cumulative Frequency Polygon for Shareholders",xlab="Shareholders",ylab="Cumulative Frequency",ylim=c(0,max(cum.freq)))




