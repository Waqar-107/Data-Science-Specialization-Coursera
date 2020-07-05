url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url, destfile = "./q2.csv", "curl")

data <- read.csv("q2.csv", skip = 4, nrows = 190)
gdp <- data$X.4
gdp <- as.numeric(gsub(",", "", gdp))
print(mean(gdp))

