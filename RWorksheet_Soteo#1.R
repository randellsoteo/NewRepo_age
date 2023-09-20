#1
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
         35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
         51, 35, 24, 33, 41)
length(age)
#a 34

#b
age
#[1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46
#[24] 25 17 37 42 53 41 51 35 24 33 41

#2
recip_age <- 1/age
recip_age
#[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556
#[7] 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143 0.03225806
#[13] 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000
#[19] 0.01754386 0.02040816 0.02000000 0.02702703 0.02173913 0.04000000
#[25] 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784
#[31] 0.02857143 0.04166667 0.03030303 0.02439024

#3
new_age <- c(age, 0, age)
new_age
#The new_age has double the amount of data points and has 0 in between the two "age" vectors

#4
sort_age <- sort(age, decreasing = FALSE)
sort_age
#[1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39
#[24] 41 41 42 42 46 49 50 51 52 53 57

#5
max_age <- max(age)
max_age
#57
min_age <- min(age)
min_age
#17

#6
age_data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
2.5, 2.3, 2.4, 2.7)
length(age_data)
# 12 data points
#b
#2.4 2.8 2.1 2.5 2.4 2.2 2.5 2.3 2.5 2.3 2.4 2.7

#7
age_data_doubled <- age_data * 2
age_data_doubled
#Every data has been doubled

#8
#8.1
hundred <- c(1:100)
hundred
#8.2
twenty_sixty <- c(20:60)
twenty_sixty
#8.3
meanNum <- mean(twenty_sixty)
meanNum
#8.4
sumNum <- sum(51:91)
sumNum
#8.5
thousand <- c(1:1000)
thousand
  #8.a Data Points
  #8.1
  length(hundred)
  #100
  #8.2
  length(twenty_sixty)
  #41
  #8.3
  length(meanNum)
  #1
  #8.4
  length(sumNum)
  #1
  
  #8.b R code and output