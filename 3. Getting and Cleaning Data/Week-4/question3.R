url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url, destfile = "./q2.csv", "curl")
data <- read.csv("q2.csv", nrows = 190, skip = 4)
countryNames <- data$X.3
ans <- grep("^United",ignore.case = FALSE, countryNames, value = TRUE)

print(ans)