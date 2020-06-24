#  Plot the 30-day mortality rates for heart attack
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
mortality <- as.numeric(data[, 11])
hist(mortality)