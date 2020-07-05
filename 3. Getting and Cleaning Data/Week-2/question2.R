library(sqldf)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url, destfile = "./q2.csv", "curl")
acs <- read.csv("q2.csv")
data <- sqldf("select pwgtp1 from acs where AGEP < 50")
print(head(data))