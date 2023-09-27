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
  #8.A Data Points
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
    #8.1
    #hundred <- c(1:100)
    #hundred
    #[1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
    #[18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
    #[35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
    #[52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
    #[69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
    #[86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
  
    #8.2
    #twenty_sixty <- c(20:60)
    #twenty_sixty
    #[1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
    #[24] 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
    
    #8.3
    #meanNum <- mean(twenty_sixty)
    #meanNum
    #[1] 40
  
    #8.4
    #sumNum <- sum(51:91)
    #sumNum
    #[1] 2911
  
  #8.5.C
  #10
  
  #9
  
    #Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
    #[1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47
    #[24] 52 53 58 59 61 62 64 67 68 71 73 74 76 79 82 83 86 88 89 92 94 97
  
  #10
    #back_int <- c(1:100)
    #sort(back_int, decreasing = TRUE)
    #[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84
    #[18]  83  82  81  80  79  78  77  76  75  74  73  72  71  70  69  68  67
    #[35]  66  65  64  63  62  61  60  59  58  57  56  55  54  53  52  51  50
    #[52]  49  48  47  46  45  44  43  42  41  40  39  38  37  36  35  34  33
    #[69]  32  31  30  29  28  27  26  25  24  23  22  21  20  19  18  17  16
    #[86]  15  14  13  12  11  10   9   8   7   6   5   4   3   2   1
  
  #11
    filtered_multiples <- Filter(function(i) { i %% 3 == 0 || i %% 5 == 0 }, 1:24)
    filtered_multiples  
    #3  5  6  9 10 12 15 18 20 21 24
    sum_multiples <- sum(filtered_multiples)
    sum_multiples
    #143
    
  #12
    { x <- 0+ x + 5 + }
    # Error: unexpected '}' in "    { x <- 0+ x + 5 + }"
    # Incomplete expression, will not run due to syntax error.
    
  #13
    score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,
               75,77)
    element_2 <- score[2]
    element_3 <- score[3]
    element_2 #86
    element_3 #92
    
   #14
    a = c(1,2,NA,4,NA,6,7)
    print(a,na.print = "-999")    
    #[1]    1    2 -999    4 -999    6    7
    #NA is replaced with -999 since there is quotations in -999
    
   #15
    name = readline(prompt = "Input your name: ")
    #Input your name: Randell Eduarth Soteo
    age = readline(prompt = "Input your age: ")
    #Input your age: 20
    print(paste("My name is",name, "and I am",age, "years old."))
    #[1] "My name is Randell Eduarth Soteo and I am 20 years old."
    