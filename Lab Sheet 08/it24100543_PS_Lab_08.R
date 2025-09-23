setwd("C:\\Users\\it24100543\\Desktop\\IT24100543")

data<- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

# 1. Calculate the population mean and population standard deviation of the laptop bag weights.
popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

popmn
popsd

#2. Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample.
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n
samples

s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)
s.means
s.sd

#3. Calculate the mean and standard deviation of the 25 sample means and state the relationship of them with true mean and true standard deviation.
samplemean<-mean(s.means)
samplesd<-sd(s.means)

samplemean
samplesd

popmn
samplemean

truesd<-popsd/6
truesd
samplesd
