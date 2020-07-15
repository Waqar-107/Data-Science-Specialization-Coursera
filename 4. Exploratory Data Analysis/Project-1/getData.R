url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "dataset.zip", "curl")
unzip("dataset.zip")
file.remove("dataset.zip")