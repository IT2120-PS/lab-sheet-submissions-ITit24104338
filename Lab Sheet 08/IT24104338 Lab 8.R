setwd("C:\\Users\\it24104338\\Desktop\\IT24104338 PS Lab 8")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
colnames(data)[1] <- "Weight.kg"
attach(data)
#Q1; Calculate population mean & population sd
pop_mean <- mean(Weight.kg)
pop_mean

pop_sd <- sd(Weight.kg)
pop_sd

#Q2; create empty vectors
sample_means <- c()
sample_sds <-c()
#loop for create & assign 25 samples of size 6
for(i in 1:25){
  #draw a random sample of size 6 w replacement from 'Weight.kg' data
  s <- sample(Weight.kg, 6, replace = TRUE)
  #cal mean & sd of current sample
  
  sample_mean_va1 <- mean(s)
  sample_sd_va1 <- sd(s)
  #append calculates values to our vectors
  sample_means <- c(sample_means, sample_mean_va1)
  sample_sds < c(sample_sds, sample_sd_va1)
}
sample_means
sample_sds

#Q3; cal mean of 25 sample means
mean_of_sample_means <- mean(sample_means)

#cal sd of 25 sample means
sd_of_sample_means <- sd(sample_means)

pop_mean
mean_of_sample_means

pop_sd
sd_of_sample_means
