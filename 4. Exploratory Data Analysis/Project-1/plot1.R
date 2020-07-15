library(lubridate)

# date range of the required data
startDate <- ymd("2007-02-01")
endDate <- ymd("2007-02-02")

# read the data
dataset <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

# subset the data and remove the dataset to free up memory
data <- subset(dataset, dmy(Date) >= startDate & dmy(Date) <= endDate)
rm(dataset)

# plot the histogram in screen
hist(as.numeric(data$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power(killowatts)")

# copy to png
dev.copy(png, "plot1.png", height = 480, width = 480)

# turn off the screen device
dev.off()

# clear everything
rm(list = ls())