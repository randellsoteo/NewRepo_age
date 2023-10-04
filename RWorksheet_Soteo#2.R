#1
c(-5:5)
#[1] -5 -4 -3 -2 -1  0  1  2  3  4  5
  
  #1.A
  x <- 1:7
  x
  #1.B
  #[1] 1 2 3 4 5 6 7
  
  #2
  sequence <- seq(1, 3, by=0.2)
  sequence  
  #[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
  #Increments by 0.2 from 1 to 3
  
  #3
  worker_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
  22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
  24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
  18)
  #3.A
    element_3 <- worker_age[3]
    element_3
    #22
  #3.B
    element_2_4 <- c(worker_age[2], worker_age[4])
    element_2_4
    #28 36
  #3.C
    except_4_12 <- c(worker_age[-4], worker_age[-12])
    except_4_12    
    #[1] 34 28 22 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25
    #[24] 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54
    #[47] 58 26 18 34 28 22 36 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50
    #[70] 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19
    #[93] 30 61 54 58 26 18
  #4
    #4.A&B
    x <- c("first"=3, "second"=0, "third"=9)
    names(x)
    #[1] "3" "0" "9"  
    x[c("first", "third")]
    #first third 
    #3     9
    
  #5
    #5.A
   
    #The output is the same because I replaced the second element 0 with 0
    #5.B
    #x[2] <- 0
    #x
    #first second  third 
    #3      0      9 
    
  #6
    #6.A
    df <- data.frame(Month = c("Jan", "Feb", "March", "Apr", "May", "June"), 
                     Price_per_liter_Php = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
                     Purchase_quantity_L = c(25, 30, 40, 50, 10, 45)
                     )
    df
    Month Price_per_liter_Php
    1   Jan               52.50
    2   Feb               57.25
    3 March               60.00
    4   Apr               65.00
    5   May               74.25
    6  June               54.00
    Purchase_quantity_L
    1                  25
    2                  30
    3                  40
    4                  50
    5                  10
    6                  45
    
    #6.B
    ave_fuel_exp <- weighted.mean(df$Price_per_liter_Php, df$Purchase_quantity_L)
    ave_fuel_exp
    59.2625
    
    #7
    #7.ABC
    data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
              sd(rivers), min(rivers), max(rivers))
    data
      #141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000
      #3710.0000
    
    #8
    #8.A
    ranking <- data.frame(Power_ranking = c(1:25), Celebrity_Name = c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant" ), 
                          Pay = c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31))
    ranking
    Power_ranking       Celebrity_Name Pay
    1              1           Tom Cruise  67
    2              2       Rolling Stones  90
    3              3        Oprah Winfrey 225
    4              4                   U2 110
    5              5          Tiger Woods  90
    6              6     Steven Spielberg 332
    7              7         Howard Stern 302
    8              8              50 Cent  41
    9              9 Cast of the Sopranos  52
    10            10            Dan Brown  88
    11            11    Bruce Springsteen  55
    12            12         Donald Trump  44
    13            13         Muhammad Ali  55
    14            14       Paul McCartney  40
    15            15         George Lucas 233
    16            16           Elton John  34
    17            17      David Letterman  40
    18            18       Phil Mickelson  47
    19            19          J.K Rowling  75
    20            20           Bradd Pitt  25
    21            21        Peter Jackson  39
    22            22      Dr. Phil McGraw  45
    23            23            Jay Lenon  32
    24            24          Celine Dion  40
    25            25          Kobe Bryant  31
    
    
    
        