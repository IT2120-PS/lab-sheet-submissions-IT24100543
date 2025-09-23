setwd("C:\\Users\\it24100543\\Desktop\\IT24100543")

#importing the dataset
data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
names(data)
attach(data)

#Question 01

popmn <- mean(Weight.kg.)
print(popmn)
popvar<-sd(Weight.kg.)
print(popvar)

#question 02

#creating a null vector
samples<-c()

for(i in 1:25){
  s<-samples(Weight.kg.,6, replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

#assign columns for each sample(variable n)
colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(sample,2,var)

print(s.means)
print(s.vars)

#question 03
#calculate mean and varience of the sample means
samplemean<-mean(s.means)
print()
samplevars<-var(s.means)
print()

#compare the population mean and sample means
print(popmn)
print(samplemean)


#compare the population varience and varience of sample means
print(truevar=popvar/5)
print(samplevars)
