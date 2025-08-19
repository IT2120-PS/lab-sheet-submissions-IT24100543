setwd("C:\\Users\\it24100543\\Desktop\\IT24100543_lab04")
branch_data<-read.table("Exercise.txt", header=TRUE, sep=",")
fix(data)
attach(branch_data)

##question 2
class(branch_data$Branch)
class(branch_data$Sales_X1)
class(branch_data$Advertising_X2)
class(branch_data$Years_X3)

##q3

boxplot(branch_data$Sales_X1,main="Boxplot for sales",outline= TRUE, oupatch=8,horizontal=TRUE)


#q4-five number summary
summary(branch_data$Branch)
summary(branch_data$Sales_X1)
summary(branch_data$Advertising_X2)
summary(branch_data$Years_X3)

#IQR

IQR(branch_data$Branch)
IQR(branch_data$Sales_X1)
IQR(branch_data$Advertising_X2)
IQR(branch_data$Years_X3)


#q5-outliers in a neumeric vector

get.outliers<- function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<- q3-q1
  
  ub<-q3+1.5*iqr
  lb<-q1+1.5*iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers: ", paste(sort(z[z<lb | z>ub]),collapse = ",")))
}

get.outliers(branch_data$Sales_X1)
get.outliers(branch_data$Years_X3)

