# read first 2 rows of a csv
f2 <- read.csv("hw1_data.csv", nrows = 2)
#print(f2)

# count total rows
data <- read.csv("hw1_data.csv")
#print(nrow(data))

# read last 2 rows of a csv
l2 <- read.csv("hw1_data.csv", nrows = 2, skip = nrow(data) - 2)
#print(l2)

# total NA in ozone col
# extract the first column
oz <- data[["Ozone"]]
bad <- is.na(oz)
res <- oz[bad]
print(length(res))

# mean of ozone column
res <- oz[!bad]
mean <- sum(res) / length(res)
print(mean)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90
res <- subset(data, Ozone > 31 & Temp > 90)
print(res)

# mean of solar.r
x <- sum(res[["Solar.R"]]) / nrow(res)
print(x)

# mean of temp when month is 6
res <- subset(data, Month == 6)
print(sum(res[["Temp"]]) / nrow(res))

# max ozone in may
# do not forget to remove NA before you use max()
res <- subset(data, Month == 5)
oz <- res[["Ozone"]]
bad <- is.na(oz)
oz <- oz[!bad]
print(max(oz))