# creaate date object from string
date <- as.Date("1970-01-01")
print(date)

# gives current date and time
t <- Sys.time()
print(t)

# useful information about the date
p <- as.POSIXlt(t)
print(names(unclass(p)))
print(p$mon)

# strptime() converts any string with date-time into POSIXlt object
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
print(x)

# operations on date
x <- as.Date("1995-08-15")
y <- as.Date("2020-06-21")
print(y - x)

# weekday
today <- as.POSIXlt(Sys.time())
print(weekdays(today))
print(months(today))

# time difference
# we can use units like sec, min, days
d <- difftime(Sys.time(), t1, units = 'min')
print(d)