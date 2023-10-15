#1.  

# a.
seQ5 <- c(-5:5)
seQ5
# Output: [1] -5 -4 -3 -2 -1  0  1  2  3  4  5
# it displays the digits from -5 to 5 when called.

# b.
x <- 1:7

# Output: [1] 1 2 3 4 5 6 7
# value of x is numbers 1 to 7.

#2.

seQV <- c(seq(1, 3, by=0.2))
seQV
# Output: [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
# it is a sequence of numbers from 1 to 3 but also includes by 0.2.

#3.

workersAge <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a.
element_3 <- workersAge[3]
# Output: [1] 22

# b.
element_2and4 <- c(workersAge[2], workersAge[4])
# Output: [1] 28 36

# c.
eAll_no412 <- workersAge[c(-4,-12)]
# Output:  [1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17
#          [24] 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58
#          [47] 26 18

#4.

x <- c("first"=3, "second"=0, "third"=9)
names(x)

# a. and b.
x[c("first", "third")]
# Output: first third 
#             3     9
# it displayed first and third and also their values.

#5.

x <- (-3:2)
x
# Output: [1] -3 -2 -1  0  1  2

# a. and b.
x[2] <- 0
x
# Output: [1] -3  0 -1  0  1  2
# the 2nd value was replaced by 0.

#6.

dieselPurchases <- data.frame(
  month = c("January", "February", "March","April", "May", "June"),
  pricePLiter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  purchaseQuantity = c(25, 30, 40, 50, 10, 45)
)
# Output:      month pricePLiter purchaseQuantity
#         1  January       52.50               25
#         2 February       57.25               30
#         3    March       60.00               40
#         4    April       65.00               50
#         5      May       74.25               10
#         6     June       54.00               45

purchase = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
liter = c(25, 30, 40, 50, 10, 45)

aveFuelExp <- weighted.mean(purchase, liter)
# Output: [1] 59.2625

#7.

# a., b., and c.
rivers
# Output : [1]  735  320  325  392  524  450 1459  135  465  600  330  336  280
#          [14]  315  870  906  202  329  290 1000  600  505 1450  840 1243  890
#          [27]  350  407  286  280  525  720  390  250  327  230  265  850  210
#          [40]  630  260  230  360  730  600  306  390  420  291  710  340  217
#          [53]  281  352  259  250  470  680  570  350  300  560  900  625  332
#          [66] 2348 1171 3710 2315 2533  780  280  410  460  260  255  431  350
#          [79]  760  618  338  981 1306  500  696  605  250  411 1054  735  233
#          [92]  435  490  310  460  383  375 1270  545  445 1885  380  300  380
#          [105]  377  425  276  210  800  420  350  360  538 1100 1205  314  237
#          [118]  610  360  540 1038  424  310  300  444  301  268  620  215  652
#          [131]  900  525  246  360  529  500  720  270  430  671 1770

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data

# Output: [1]    141.0000  83357.0000    591.1844    425.0000 243908.4086
#         [6]    493.8708    135.0000   3710.0000

#8.

# a.
forbesRanking <- data.frame(
  powerRanking = c(1:25), celebName =  c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"),
  Pay = c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 90, 25, 39, 45, 32, 40, 31))
forbesRanking

# Output:    powerRanking            celebName Pay
#         1             1           Tom Cruise  67
#         2             2       Rolling Stones  90
#         3             3        Oprah Winfrey 225
#         4             4                   U2 110
#         5             5          Tiger Woods  90
#         6             6     Steven Spielberg 332
#         7             7         Howard Stern 302
#         8             8              50 Cent  41
#         9             9 Cast of the Sopranos  52
#         10           10            Dan Brown  88
#         11           11    Bruce Springsteen  55
#         12           12         Donald Trump  44
#         13           13         Muhammad Ali  55
#         14           14       Paul McCartney  40
#         15           15         George Lucas 233
#         16           16           Elton John  34
#         17           17      David Letterman  40
#         18           18       Phil Mickelson  47
#         19           19          J.K Rowling  90
#         20           20           Bradd Pitt  25
#         21           21        Peter Jackson  39
#         22           22      Dr. Phil McGraw  45
#         23           23            Jay Lenon  32
#         24           24          Celine Dion  40
#         25           25          Kobe Bryant  31

#b.
forbesRanking <- forbesRanking[-19, ]
updatedForbesRanking <- rbind(forbesRanking[1:14, ], newRank15, forbesRanking[15:24, ])
forbesRanking$powerRanking <- 1:25
rownames(updatedForbesRanking) <- NULL
updatedForbesRanking

# Output:    powerRanking            celebName Pay
#         1             1           Tom Cruise  67
#         2             2       Rolling Stones  90
#         3             3        Oprah Winfrey 225
#         4             4                   U2 110
#         5             5          Tiger Woods  90
#         6             6     Steven Spielberg 332
#         7             7         Howard Stern 302
#         8             8              50 Cent  41
#         9             9 Cast of the Sopranos  52
#         10           10            Dan Brown  88
#         11           11    Bruce Springsteen  55
#         12           12         Donald Trump  44
#         13           13         Muhammad Ali  55
#         14           14       Paul McCartney  40
#         15           15          J.K Rowling  90
#         16           16         George Lucas 233
#         17           17           Elton John  34
#         18           18      David Letterman  40
#         19           19       Phil Mickelson  47
#         20           20           Bradd Pitt  25
#         21           21        Peter Jackson  39
#         22           22      Dr. Phil McGraw  45
#         23           23            Jay Lenon  32
#         24           24          Celine Dion  40
#         25           25          Kobe Bryant  31

# c. 
PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking

# Output: powerRanking............celebName.Pay
#   1  1             1           Tom Cruise  67
#   2  2             2       Rolling Stones  90
#   3  3             3        Oprah Winfrey 225
#   4  4             4                   U2 110
#     5             5          Tiger Woods  90
#   6  6             6     Steven Spielberg 332
#   7  7             7         Howard Stern 302
#   8  8             8              50 Cent  41
#   9  9             9 Cast of the Sopranos  52
#   10 10           10            Dan Brown  88
#   11 11           11    Bruce Springsteen  55
#   12 12           12         Donald Trump  44
#   13 13           13         Muhammad Ali  55
#   14 14           14       Paul McCartney  40
#   15 15           15         George Lucas 233
#   16 16           16           Elton John  34
#   17 17           17      David Letterman  40
#   18 18           18       Phil Mickelson  47
#   19 19           19          J.K Rowling  90
#   20 20           20           Bradd Pitt  25
#   21 21           21        Peter Jackson  39
#   22 22           22      Dr. Phil McGraw  45
#   23 23           23            Jay Lenon  32
#   24 24           24          Celine Dion  40
#   25 25           25          Kobe Bryant  31

# d.
Power_Ranking <- PowerRanking[10:20, ]

# Output: 
#[1] "10           10            Dan Brown  88" "11           11    Bruce Springsteen  55"
#[3] "12           12         Donald Trump  44" "13           13         Muhammad Ali  55"
#[5] "14           14       Paul McCartney  40" "15           15         George Lucas 233"
#[7] "16           16           Elton John  34" "17           17      David Letterman  40"
#[9] "18           18       Phil Mickelson  47" "19           19          J.K Rowling  90"
#[11] "20           20           Bradd Pitt  25"

save(Power_Ranking, file = "Ranks.RData")
load("Ranks.RData")

# d. 
# It turned into a file and the output is in a character form.

# 9.

#a.
library(readxl)
hotels_vienna <- read_excel("hotels-vienna.xlsx")
View(hotels_vienna)

# Output:
# A tibble: 428 × 24
# country city_actual rating_count center1label center2label neighbourhood price city   stars ratingta
# <chr>   <chr>       <chr>        <chr>        <chr>        <chr>         <dbl> <chr>  <dbl> <chr>   
#   1 Austria Vienna      36           City centre  Donauturm    17. Hernals      81 Vienna     4 4.5     
# 2 Austria Vienna      189          City centre  Donauturm    17. Hernals      81 Vienna     4 3.5     
# 3 Austria Vienna      53           City centre  Donauturm    Alsergrund       85 Vienna     4 3.5     
# 4 Austria Vienna      55           City centre  Donauturm    Alsergrund       83 Vienna     3 4       
# 5 Austria Vienna      33           City centre  Donauturm    Alsergrund       82 Vienna     4 3.5     
# 6 Austria Vienna      25           City centre  Donauturm    Alsergrund      229 Vienna     5 4.5     
# 7 Austria Vienna      57           City centre  Donauturm    Alsergrund      103 Vienna     4 3.5     
# 8 Austria Vienna      161          City centre  Donauturm    Alsergrund      150 Vienna     4 4.5     
# 9 Austria Vienna      50           City centre  Donauturm    Alsergrund       80 Vienna     2 3.5     
# 10 Austria Vienna      NA           City centre  Donauturm    Alsergrund      153 Vienna     3 NA      
# ℹ 418 more rows
# ℹ 14 more variables: ratingta_count <chr>, scarce_room <dbl>, hotel_id <dbl>, offer <dbl>, offer_cat <chr>,
#   year <dbl>, month <dbl>, weekend <dbl>, holiday <dbl>, distance <dbl>, distance_alter <dbl>,
#   accommodation_type <chr>, nnights <dbl>, rating <chr>
# ℹ Use `print(n = ...)` to see more rows

# b. 
dim(hotels_vienna)
# Output: 
# [1] 428  24

# c.
hvSelect <- hotels_vienna[c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]

#d.
save(hvSelect, file = "**new.RData")
load("/cloud/project/**new.RData")

#e. 
hvHeadTails <- rbind(head(hvSelect),tail(hvSelect))

#10. 

# a. 
veggies <- list("eggplant", "carrot", "cabbage", "broccoli", "Potato", "Onion", "Garlic", "Cauliflower", "Ampalaya", "Ginger")
veggies

# Output:
# [[1]]
# [1] "eggplant"

# [[2]]
# [1] "carrot"

# [[3]]
# [1] "cabbage"

# [[4]]
# [1] "broccoli"

# [[5]]
# [1] "Potato"

# [[6]]
# [1] "Onion"

# [[7]]
# [1] "Garlic"

# [[8]]
# [1] "Cauliflower"

# [[9]]
# [1] "Ampalaya"

# [[10]]
# [1] "Ginger"

# b.
veggies <- append(veggies, list("Mushroom", "Pumpkin"), after = 10 )
veggies

# Output:
# [[1]]
# [1] "eggplant"

# [[2]]
# [1] "carrot"

# [[3]]
# [1] "cabbage"

# [[4]]
# [1] "broccoli"

# [[5]]
# [1] "Potato"

# [[6]]
# [1] "Onion"

# [[7]]
# [1] "Garlic"

# [[8]]
# [1] "Cauliflower"

# [[9]]
# [1] "Ampalaya"

# [[10]]
# [1] "Ginger"

# [[11]]
# [1] "Mushroom"

# [[12]]
# [1] "Pumpkin"

# c.
veggies <- append(veggies, list("Corn", "Lettuce", "Green Peas", "Spinach"), after = 5 )
veggies
# Output:
# [[1]]
# [1] "eggplant"

# [[2]]
# [1] "carrot"

# [[3]]
# [1] "cabbage"

# [[4]]
# [1] "broccoli"

# [[5]]
# [1] "Potato"

# [[6]]
# [1] "Corn"

# [[7]]
# [1] "Lettuce"

# [[8]]
# [1] "Green Peas"

# [[9]]
# [1] "Spinach"

# [[10]]
# [1] "Onion"

# [[11]]
# [1] "Garlic"

# [[12]]
# [1] "Cauliflower"

# [[13]]
# [1] "Ampalaya"

# [[14]]
# [1] "Ginger"

# [[15]]
# [1] "Mushroom"

# [[16]]
# [1] "Pumpkin"

length(veggies)
# Output:
# [1] 16

veggies <- veggies[c(-5, -10, -15)]
veggies
# Output:
# [[1]]
# [1] "eggplant"

# [[2]]
# [1] "carrot"

# [[3]]
# [1] "cabbage"

# [[4]]
# [1] "broccoli"

# [[6]]
# [1] "Corn"

# [[7]]
# [1] "Lettuce"

# [[8]]
# [1] "Green Peas"

# [[9]]
# [1] "Spinach"

# [[11]]
# [1] "Garlic"

# [[12]]
# [1] "Cauliflower"

# [[13]]
# [1] "Ampalaya"

# [[14]]
# [1] "Ginger"

# [[16]]
# [1] "Pumpkin"

length(veggies)
# Output:
#[1] 13