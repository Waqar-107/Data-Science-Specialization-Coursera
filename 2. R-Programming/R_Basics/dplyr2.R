library(dplyr)

url <- "C:/Users/Acer/Documents/R/win-library/4.0/swirl/Courses/Getting_and_Cleaning_Data/Manipulating_Data_with_dplyr/2014-07-08.csv"
mydf <- read.csv(url, stringsAsFactors = FALSE)
cran <- tbl_df(mydf)
print(cran)

# group by package
by_package <- group_by(cran, package)
