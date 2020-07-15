library(lubridate)

# download data and unzip
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "dataset.zip", "curl")
unzip("dataset.zip")
file.remove("dataset.zip")

# date range of the required data
startDate <- ymd("2007-02-01")
endDate <- ymd("2007-02-02")

# read the data
dataset <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

# subset the data and remove the dataset to free up memory
data <- subset(dataset, dmy(Date) >= startDate & dmy(Date) <= endDate)
rm(dataset)

# extract the data
# Y
dateTime <- dmy_hms(paste(data$Date, data$Time))

# 1
globalActivePower <- as.numeric(data$Global_active_power)

# 2
voltage <- as.numeric(data$Voltage)

# 3
subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

# 4
globalReactivePower <- as.numeric(data$Global_reactive_power)

# png
png("plot4.png", width = 480, height = 480)

# 2 x 2 plots in the same figure
par(mfrow = c(2, 2))

# 1
plot(dateTime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power")

# 2
plot(dateTime, voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# 3
plot(dateTime, subMetering1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, subMetering2, col = "red")
lines(dateTime, subMetering3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = 'n')

# 4
plot(dateTime, globalReactivePower, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# return to screen device
dev.off()

# clean everything
rm(list = ls())