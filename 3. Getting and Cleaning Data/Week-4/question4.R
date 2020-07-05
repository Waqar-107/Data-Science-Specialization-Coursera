library(dplyr)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url, destfile = "./q2.csv", "curl")
data <- read.csv("q2.csv", skip = 4)
data <- select(data, "X", "X.1", "X.3", X.4)
colnames(data) <- c("CountryCode", "Rank", "CountryName", "GDP")

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url, destfile = "q3.csv", "curl")
data2 <- read.csv("q3.csv")

merged_data <- merge(data, data2, by="CountryCode", all=TRUE)
len <- length(grep("[Ff]iscal [Yy]ear(.*)[Jj]une 30", merged_data$Special.Notes))
print(len)