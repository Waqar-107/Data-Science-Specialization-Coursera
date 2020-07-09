url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

download.file(url1, destfile = "./q31.csv", "curl")
download.file(url2, destfile = "./q32.csv", "curl")

library(dplyr)

data1 <- read.csv("./q31.csv", skip = 4, nrows = 190)
data1 <- select(data1, X, X.1, X.3, X.4)
colnames(data1) <- c("CountryCode", "rank", "CountryName", "GDP")

data2 <- read.csv("./q32.csv")

merged_data <- merge(data1, data2, by = "CountryCode")
merged_data <- arrange(merged_data, desc(rank))

print(dim(merged_data))
print(merged_data[13,])

