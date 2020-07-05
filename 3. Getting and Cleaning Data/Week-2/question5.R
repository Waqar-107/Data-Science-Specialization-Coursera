url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(url, destfile = "q4.for", "curl")

# the negatives are the spaces
# used the 3rd row to calculate length of variables
data <- read.fwf("q4.for", skip = 4, widths = c(-1, 9, -5, 4, 4, -5, 4, 4, -5, 4, 4, -5, 4, 4))
print(sum(data$V4))