library(lubridate)

# date range of the required data
startDate <- ymd("2007-02-01")
endDate <- ymd("2007-02-02")

# read the data
dataset <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

# subset the data and remove the dataset to free up memory
data <- subset(dataset, dmy(Date) >= startDate & dmy(Date) <= endDate)
rm(dataset)

# X-Y
dateTime <- dmy_hms(paste(data$Date, data$Time))
subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

# plot in png directly
# plotting in the screen and copying is causing overflow of the legend
png("plot3.png", height = 480, width = 480)
plot(dateTime, subMetering1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, subMetering2, col = "red")
lines(dateTime, subMetering3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), col = c("black", "red", "blue"), lty = 1)

# turn off the screen device
dev.off()

# clear everything
rm(list = ls())
