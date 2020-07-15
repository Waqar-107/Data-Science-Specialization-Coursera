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
globalActivePower <- as.numeric(data$Global_active_power)

# plot in screen
plot(dateTime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

# copy to png
dev.copy(png, "plot2.png", height = 480, width = 480)

# turn off the screen device
dev.off()

# clear everything
rm(list = ls())