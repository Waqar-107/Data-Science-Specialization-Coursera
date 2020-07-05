library(quantmod)
library(lubridate)

solve <- function(s){
  my_date <- ymd(s)
  wday(my_date)
}

amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)

# how many of them are in 2012
q1 <- grep("^2012-..-..", sampleTimes)
print(length(q1))

# among the answers of the query above find which of them are monday
q2 <- sampleTimes[q1]
d <- sapply(q2, solve)
d2 <- d == 2
print(length(d[d2]))