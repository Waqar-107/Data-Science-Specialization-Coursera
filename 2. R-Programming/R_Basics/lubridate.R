library(lubridate)

# todays date
this_day <- today()
y <- year(this_day)
m <- month(this_day)
d <- day(this_day)

# wday would also give day in number where sunday = 1
# if label is true then we will get the name
d <- wday(this_day)
dName <- wday(this_day, label = TRUE)

# date with time
this_moment <- now()
h = hour(this_moment)
m = minute(this_moment)
s = second(this_moment)
update(this_moment, hours = 8, minutes = 34, seconds = 55)

# try ymd, mdy etc combinations
my_date <- ymd("1989-05-17")

# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
# current time in NewYork
nyc <- now("America/New_York")

# the plane is after 2 days
depart <- nyc + days(2)

# time of departure
depart <- update(depart, hours = 17, minutes = 34)

# when it is "arrive" in NewYork i will arrive in Hongkong
arrive <- depart + hours(15) + minutes(50)

# last time met in Singapore
last_time <- mdy("June 17, 2008", tz = "Singapore")