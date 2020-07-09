url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url, destfile = "./q1.csv", "curl")
data <- read.csv("q1.csv")

# ACR = 3 for house on ten or more acres
# AGS = 6 for selling agricultural product worth 10k++
ans <-which(data$ACR == 3 & data$AGS == 6)[1:3]
print(ans)