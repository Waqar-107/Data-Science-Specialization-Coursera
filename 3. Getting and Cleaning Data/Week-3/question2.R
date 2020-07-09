library(jpeg)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(url, destfile = "./q2.jpg", "curl")

data <- readJPEG("./q2.jpg", native = TRUE)
print(quantile(data, c(0.3, 0.8)))