library(dplyr)

url <- "C:/Users/Acer/Documents/R/win-library/4.0/swirl/Courses/Getting_and_Cleaning_Data/Manipulating_Data_with_dplyr/2014-07-08.csv"
mydf <- read.csv(url, stringsAsFactors = FALSE)
cran <- tbl_df(mydf)
print(cran)

# group by package
by_package <- group_by(cran, package)

# apply function
mn <- summarize(by_package, mean(size))

# more advanced
pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))

# top 1%
quantile(pack_sum$count, probs = 0.99)

# View(tbl_df object) gives a table

# pipelining
result2 <-
  arrange(
    filter(
      summarize(
        group_by(cran,
                 package
        ),
        count = n(),
        unique = n_distinct(ip_id),
        countries = n_distinct(country),
        avg_bytes = mean(size)
      ),
      countries > 60
    ),
    desc(countries),
    avg_bytes
  )

print(result2)

# chaining
cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  arrange(desc(size_mb))