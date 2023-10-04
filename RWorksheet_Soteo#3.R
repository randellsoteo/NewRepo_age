#1
uppercase_letters <- LETTERS
uppercase_letters
lowercase_letters <- letters
lowercase_letters

#1
  #A
  first11 <- LETTERS[1:11]
  first11

  #B
  odd_letters <- LETTERS[seq(1, length(LETTERS), by = 2)]
  odd_letters

  #C
  vowels <- c("A", "E", "I", "O", "U")

  #D
  last5_lc <- letters[22:26]
  last5_lc

  #E
  bet15_24_lc <- letters[15:24]
  bet15_24_lc

#2
  #A
  city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
  city
  "Tuguegarao City" "Manila"          "Iloilo City"    
  "Tacloban"        "Samal Island"    "Davao City"   
  
  #B
  ave_temp <- c(42, 39, 34, 34, 30, 27)
  ave_temp
  42 39 34 34 30 27
  
  #C
  
  city_temp_df <- data.frame(City = city, Temperature_in_Celsius = ave_temp)
  city_temp_df
  
  #D
  names(city_temp_df) <- c("City", "Temperature")
  city_temp_df
  
  #E
  str(city_temp_df)
  'data.frame':	6 obs. of  2 variables:
    $ City       : chr  "Tuguegarao City" "Manila" "Iloilo City" "Tacloban" ...
  $ Temperature: num  42 39 34 34 30 27
  
  #data.frame indicates that its a data frame
  #6 obs. indicates there are 6 rows
  #2 variables indicates there are 2 columns
  #City and Temperature are the column names along with their data types (chr for character and num for numeric).
  
  #F
  
  row_3 <- city_temp_df[3, ]
  row_4 <- city_temp_df[4, ]  
  row_3
      City Temperature
      3 Iloilo City          34
  row_4
      City Temperature
      4 Tacloban          34
      
  #G
  max_temp_index <- which.max(city_temp_df$Temperature)
  min_temp_index <- which.min(city_temp_df$Temperature)  
  city_max_temp <- city_temp_df$City[max_temp_index] 
  city_min_temp <- city_temp_df$City[min_temp_index]
  max_temp <- max(city_temp_df$Temperature)
  min_temp <- min(city_temp_df$Temperature)
  cat("City with the highest temperature:", city_max_temp, "(", max_temp, "C)\n")
  #City with the highest temperature: Tuguegarao City ( 42 C)
  
  cat("City with the lowest temperature:", city_min_temp, "(", min_temp, "C)\n")
  #City with the lowest temperature: Davao City ( 27 C)
  