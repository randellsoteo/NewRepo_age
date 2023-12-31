#Worksheet 4

#1.
#Data Frame
df <-  data.frame (
  ShoeSize = c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 
                9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5, 13.0,
                11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5,
                10.5, 11.0, 9.0, 13.0),
  Height = c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0,
             74.5, 67.0, 71.0, 71.0, 77.0, 72.0, 59.0, 62.0, 72.0,
             66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0, 69.0, 70.0),
  Gender = c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F",
             "M", "F", "M", "M", "M", "M", "F", "F", "M", "F",
             "F", "M", "M", "F", "M", "M", "M", "M"))
  #a. Describe: There is a corresponding height and gender 
  #for each shoe size.
  
  #b. 
maleSubset <- df[df$Gender == "M", c("ShoeSize", "Height")]
maleSubset
#ShoeSize Height
#5      10.5   70.0
#9      13.0   72.0
#11     10.5   74.5
#13     12.0   71.0
#14     10.5   71.0
#15     13.0   77.0
#16     11.5   72.0
#19     10.0   72.0
#22      8.5   67.0
#23     10.5   73.0
#25     10.5   72.0
#26     11.0   70.0
#27      9.0   69.0
#28     13.0   70.0

femaleSubset <- df[df$Gender == "F", c("ShoeSize", "Height")]
femaleSubset
#ShoeSize Height
#1       6.5   66.0
#2       9.0   68.0
#3       8.5   64.5
#4       8.5   65.0
#6       7.0   64.0
#7       9.5   70.0
#8       9.0   71.0
#10      7.5   64.0
#12      8.5   67.0
#17      8.5   59.0
#18      5.0   62.0
#20      6.5   66.0
#21      7.5   64.0
#24      8.5   69.0

  #c. Mean
meanShoesize <- mean(df$ShoeSize)
meanHeight <- mean(df$Height)
meanShoesize
#9.410714
meanHeight
#68.57143

#d. Relationship between shoesize and height.
#Yes, there is a relationship between shoesize and height. The taller you are, the bigger your shoe size.

#2
#Factor

monthsVector <- c("March", "April", "January", "November", "January",
                  "September", "October", "September", "November",
                  "August", "January", "November", "November", 
                  "February", "May", "August", "July", "December", 
                  "August", "August", "September", "November", "February",
                   "April")
factor_months_Vector <- factor(monthsVector)
factor_months_Vector
#[1] March     April     January   November  January   September
#[7] October   September November  August    January   November 
#[13] November  February  May       August    July      December 
#[19] August    August    September November  February  April    
#11 Levels: April August December February January July March ... September


#3
summary(monthsVector)
#Length     Class      Mode 
#24 character character 

summary(factor_months_Vector)
#April    August  December  February   January      July     March 
#2         4         1         2         3         1         1 
#May  November   October September 
#1         5         1         3 

#4.

factor_data <- c("East", "West", "North")
frequency <- c(1,4,3)
new_order_data <- factor(factor_data, levels = c("East", "West", "North"))
new_order_data

#5
data_f <- read.table(file = "import_march.csv", header = TRUE, sep = ',')
data_f

#6
user_input <- readline(prompt = "Enter a number between 1 to 50: ")
if (user_input == 20){
  print("TRUE")
}else if (user_input <1 &&user_input >50){
  print("The number you provided exceeds the range of 1-50.")
}else{
  paste(user_input)
}

#7


#8
#a.Data Frame
math_df <- data.frame(
  Name = c("Annie", "Thea", "Steve", "Hanna"),
  Grade1 = c(85, 65, 75, 95),
  Grade2 = c(65, 75, 55, 75),
  Grade3 = c(85, 90, 80, 100),
  Grade4 = c(100, 90, 85, 90)
)
math_df
#Name Grade1 Grade2 Grade3 Grade4
#1 Annie     85     65     85    100
#2  Thea     65     75     90     90
#3 Steve     75     55     80     85
#4 Hanna     95     75    100     90

#b. Average
mathscore <- data.frame(Name = c("Annie", "Thea", "Steve", "Hanna"), Grade1 = c(85,65,75,95),Grade2=c(65,75,55,75),Grade3=c(85,90,80,100),Grade4=c(100,90,85,90))
averageScore <- (mathscore$Grade1 + mathscore$Grade2 + mathscore$Grade3 + mathscore$Grade4)/4
high_achievers <- mathscore[averageScore >= 90]
if (nrow(high_achievers)>0){
  cat("Students with an average math score over 90: \n")
cat(high_achievers$Name,"'s average grades this semester are: ", averageScore[averageScore>90], "\n")
}else{
  
}
#c.
