# Vectors:

#1.
LETTERS
# Output:
# [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q"
# [18] "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
letters
# Output:
#  [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q"
# [18] "r" "s" "t" "u" "v" "w" "x" "y" "z"

#a.
first_11 <- LETTERS[1:11]
first_11

# Output:
# [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K"

#b.

#c.

#d.
last_5 <- letters[22:26]
last_5
# Output:
# [1] "v" "w" "x" "y" "z"

b1524 <- letters[16:23]
b1524
# Output:
# [1] "p" "q" "r" "s" "t" "u" "v" "w"

#2.

#a.
cityTown <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")

#b.
temp <- c(42, 39, 34, 34, 30, 27)

#c.
CandT <- data.frame (cityTown, temp)
# Output:
#          cityTown temp
# 1 Tuguegarao City   42
# 2          Manila   39
# 3     Iloilo City   34
# 4        Tacloban   34
# 5    Samal Island   30
# 6      Davao City   27

#d.
names(CandT)[names(CandT) == "cityTown"] <- "City"
names(CandT)[names(CandT) == "temp"] <- "Temperature"
CandT
# Output:
#              City Temperature
# 1 Tuguegarao City          42
# 2          Manila          39
# 3     Iloilo City          34
# 4        Tacloban          34
# 5    Samal Island          30
# 6      Davao City          27

#e.
str(CandT)
# Output:
# 'data.frame':	6 obs. of  2 variables:
# $ City       : chr  "Tuguegarao City" "Manila" "Iloilo City" "Tacloban" ...
# $ Temperature: num  42 39 34 34 30 27

#f.
CandT[3:4, c("City", "Temperature")]
# Output:
#          City Temperature
# 3 Iloilo City          34
# 4    Tacloban          34

#g.
CandT_HiLoTemp <- CandT[c(1,6), c("City", "Temperature")]
# Output:
#              City Temperature
# 1 Tuguegarao City          42
# 6      Davao City          27

# Matrices:

#2.

#a.
numMatrix <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
numMatrix
# Output:
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   12
# [2,]    2    5    8   13
# [3,]    3    6   11   14

numMatrix1 <- numMatrix * 2
numMatrix1
# Output:
#      [,1] [,2] [,3] [,4]
# [1,]    2    8   14   24
# [2,]    4   10   16   26
# [3,]    6   12   22   28

#c.
row2 <- numMatrix1[2, ]
row2
# Output:
# [1]  4 10 16 26

#d.
display1 <- numMatrix1[1:2, 3:4]
display1
# Output:
#      [,1] [,2]
# [1,]   14   24
# [2,]   16   26

#e.
display2 <- numMatrix1[3, 2:3]
display2
# Output:
# [1] 12 22

#f.
display3 <- numMatrix1[ ,4]
display3
# Output:
# [1] 24 26 28

#g.
numMatrix1.1 <- rownames(numMatrix1) <- c("isa", "dalawa", "tatlo")
numMatrix1.1 <- colnames(numMatrix1) <- c("uno", "dos", "tres", "qwatro")
numMatrix1
# Output:
#        uno dos tres qwatro
# isa      2   8   14     24
# dalawa   4  10   16     26
# tatlo    6  12   22     28

#h.
newnumMatrix <- matrix(numMatrix, nrow = 2, ncol = 6)
newnumMatrix
# Output:
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,]    1    3    5    7   11   13
# [2,]    2    4    6    8   12   14

# Arrays:

#3.

vectorA <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)

#a.
vectorA.1 <- array(vectorA, dim = c(3,4,2))
vectorA.1
# Output:
# , , 1

# [,1] [,2] [,3] [,4]
# [1,]    1    6    9    4
# [2,]    2    7    0    5
# [3,]    3    8    3    1

# , , 2

# [,1] [,2] [,3] [,4]
# [1,]    1    6    9    4
# [2,]    2    7    0    5
# [3,]    3    8    3    1

vectorA.2 <- array(vectorA, dim = c(2, 4, 3))
vectorA.2
# Output:
# , , 1

# [,1] [,2] [,3] [,4]
# [1,]    1    3    7    9
# [2,]    2    6    8    0

# , , 2

# [,1] [,2] [,3] [,4]
# [1,]    3    5    1    3
# [2,]    4    1    2    6

# , , 3

# [,1] [,2] [,3] [,4]
# [1,]    7    9    3    5
# [2,]    8    0    4    1

# b.
dim(vectorA.1)
# [1] 2 4 3
dim(vectorA.2)
# [1] 3 4 2

# c. 
colnames(vectorA.2)[1:4] <- c("A","B","C","D")
rownames(vectorA.2)[1:2] <- c("a","b")
vectorA.2
# Output:
# , , 1

# A B C D
# a 1 3 7 9
# b 2 6 8 0

# , , 2

# A B C D
# a 3 5 1 3
# b 4 1 2 6

# , , 3

# A B C D
# a 7 9 3 5
# b 8 0 4 1

