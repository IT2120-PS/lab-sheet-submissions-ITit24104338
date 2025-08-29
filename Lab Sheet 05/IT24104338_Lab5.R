##Setting directory
setwd("C:\\Users\\it24104338\\Desktop\\IT24104338 PS_Lab 4")
##import dataset to R& store it "branch_data" dataframe
branch_data<-read.table("Exercise.txt", header = TRUE, sep=" ")
fix(branch_data)

##Identify variable type & measurement scale for each variable
print(head(branch_data))


## boxplot for sales and interpret the shape of the sales distribution
boxplot(branch_data$Sales_X1,
        main = "Boxplot for sales",
        ylab = "sales")

## 5 number summary and IQR for advertising variable
summary(branch_data$Advertising_X2)
SIQR(branch_data$Advertising_X2)

## R function to find outliers in numeric vector, check outliers in years variables
find_outliers<- function(x){
  q1 <- quantitle(x,0.25)
  q3 <- quantitle(x,0.75)
  iqr<- q3-q1
  lower_bound <- q1 - 1.5*iqr
  upper_bound <- q3 + 1.5 * iqr
  outliers <- X[X<lower_bound | X>upper_bound]
  return(outliers)
  
  outliers_years<- find_outliers(branch_data$Years_X3)
  print(outliers_years)
}
