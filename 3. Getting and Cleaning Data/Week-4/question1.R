url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url, destfile = "./q1.csv", "curl")

data <- read.csv("q1.csv")
print(head(data))

x <- strsplit(names(data), "wgtp")
print(x)